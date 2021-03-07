using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace SplashScr
{
	/// <summary>
	/// Interaction logic for SplashScreenxaml.xaml
	/// </summary>
	public partial class SplashScreenxaml : Window, INotifyPropertyChanged
	{
		DispatcherTimer delayTime = new DispatcherTimer();
		Thread _process;
		private int _percentProcess;
		private const int timeSleep = 10;
		private const double realTime = 2; // real  time around 2 seconds
		private int circle = ((int)(realTime * 1000) / timeSleep);
		public int PercentProccess
		{
			get { return _percentProcess; }
			set
			{
				_percentProcess = value;
				OnPropertyChanged("PercentProccess");
			}
		}
		public event PropertyChangedEventHandler PropertyChanged;
		private void OnPropertyChanged(string Property)
		{
			if (PropertyChanged != null)
				PropertyChanged(this, new PropertyChangedEventArgs(Property));
		}
		public SplashScreenxaml()
		{
			this.DataContext = this;
			InitializeComponent();
			delayTime.Tick += new EventHandler(dt_Tick);
			delayTime.Interval = new TimeSpan(0, 0, 0, 0, 2400);
			_process = new Thread(process);
			_process.Start();
			delayTime.Start();
		}
		private void process()
		{
			for (int i = 0; i < circle + 20; i++)
			{
				double a = ((double)i / (double)circle) * 100;
				PercentProccess = (int)Math.Round(a, 1);
				Thread.Sleep(timeSleep);
			}
		}
		private void dt_Tick(object sender, EventArgs e)
		{
			MainWindow main = new MainWindow();
			main.Show();
			delayTime.Stop();
			this.Close();
			_process.Abort();
		}
	}
}
