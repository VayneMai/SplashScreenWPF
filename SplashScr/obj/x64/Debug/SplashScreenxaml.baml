   M S B A M L   `   `   `  ����D  @SplashScr, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SplashScr	SplashScr  5   	        SplashScr.SplashScreenxaml   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SplashScr     5   	     � Title$  SplashScreenxaml��5   	   $	��230��6"   $	��390��6/    � WindowStartupLocation$ CenterScreen=�5	   	   
������  � WindowStyle$
 None=�5   	    � AllowsTransparency .  � 	Resources 5         ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border  ProgressBarStyle1 �� 
TargetType �� Property �� Value	 �� 
TargetType
 �Name ��Name �� RadiusX �� RadiusY J� RenderTransformOrigin �� Triggers P� Property P� Value �� 
TargetName �� Angle��%�  &	        &	 #     &	 F     &	 i     7   7  7  �� 5   
   $ 	#FF3C52C8��67   �� 5   
   $ 	#FFE6E6E6��69   �� 5   
   $ 	#FFBCBCBC��65   �� 5   
   " �6*   .�5      ��  � ��8   6+   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5       � ��$ 1q�60   �� 5       � �� 5      �� 5      "	 �6&   .R�5      � $
 TemplateRoot��6   .+�5.      �� #��z��6%   #��z��5/   %   #��z��6Y   �� 50      $ 
PART_Track��6(   � 51      $
 PART_Indicator��6#   }�. $
��Left=�6O   .+�52   "   �� $ 	Indicator��6,   #��z��6?   $ 5��6c   $ 5��6o   �� 53   "   $ 	Animation��6,   #��z��6?   $ 5��6d   $ 5��6p   $ 0.5,0.5&�6|   z�54   &   V� 55   *   .~�56   .   �� �� 57   .   �� 58   .   T� 59   .   5:   +   5<   #   5=      5>       5?      P� 5@       �@�Orientation$ Vertical=�6=   . �5A   "   �� $ TemplateRoot��6D    �@�LayoutTransform 5B   &   �� 5C   *   $	 -90Q�6:   5E   #   5F      P� 5G       �@�IsIndeterminate . . �5H   "   �� $ 	Indicator��6?    � y�$ 	Collapsed=�6V   5I      5K      5M      5N      5O      .��5P      �� 
������ $��0q�6=   ��6&   Z� ._�5Q   
   �� ���	#FF353B53 �� CornerRadius$ 20��6(   ��6:   Z� ._�5R      � ��6   Z�  � RowDefinitions 5S      �� 5T      $
��0.3* �6$   64   �� 5U      $
��3.5* �6$   64   �� 5V      $
��1.5* �6$   64   �� 5W      $��1* �6$   62   .+�5Y      �� $��1��6   $��Image/shuttle.png��6%   6B   �� 5Z      $��2��6   $��Center=�6)   $��Center=�5[      $��35(�5\      $��Font/#Dosis)�5]      $��Italic$�5^      ���	#FF5FD8FB$��Loading ...��5`      6)   �� 5a      
�������$��3��6-   $��2q�5b      $��20��5c      $	��320��5d      $ 5��6   ._�5e      � .+�5f      � -   5         �Name$ pbStatus��5l       � Minimum$ 0Q�5f   &    � Maximum$	 100Q�5g      $��20��5i      $��Center=�5m       � OverridesDefaultStyle .   J� Opacity$ 1Q�5o      #���  5p       � Value 5h      �� *PercentProccess+��5j      Z� ��5k      Z� 5q      �� 5r      $��Center=�5s       
�������$
��Bold"�5u       $��14(�5v       $��Center=�5w       ��5r   $   ��  �� ElementName$ pbStatus�� �� Path$ Value� �� StringFormat$ {0:0}%��5x      5y      5z      5{      5|      5}      5~      