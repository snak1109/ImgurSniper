   M S B A M L   `   `   `  ����@  <Toast, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null,"clr-namespace:Toast;assembly=ToastToast  5   	   F BImgurSniper, Version=1.0.2.5, Culture=neutral, PublicKeyToken=null)clr-namespace:ImgurSniperImgurSniper 5   	   "   ImgurSniper.ScreenshotWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   5toasty"clr-namespace:Toast;assembly=Toast     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ImgurSniper     5   	   -   5          � Cursor$  Cross��5   B    � Topmost .  � AllowsTransparency .  � WindowStyle$
 None=�5   4    � 
ResizeMode$ NoResize=�6G   
������  � Title$ Snipe a Screenshot!��5	   	   $	��100��6%   $	��100��62    � WindowStartupLocation$ Manual=�6>   .��5      � .+�5   
   � -   5         �Name$
 grid��5      .+�5      �� -   5         ��Name$ selectionRectangle��5      $
��9999q�61   
�������$��1q�5   (   ._�5      �� 
�������	 J� Opacity$		 0.3Q�6(   5      � 5      -   5        $ ContentGrid��5      $		 0.3Q�6(   
���   �
 � Triggers
 5      :� 5       :� RoutedEvent$ Grid.Loaded��6#   .[�5      �� .��5      �� -   5         g�Name$ FadeIn��5   )   .��5   "   W� -   5        $ FadeInAnimation��5   2    �� TargetProperty$ (Grid.Opacity)�5   &    W� From$ 0X�5   &   	 W� To$	 0.3X�6/    g� Duration$ 0:0:0.25D�68   5      5      5      .+�5       � -   5        $ SnipperGrid��5       $��Stretch=�6,   $��Stretch=�6J   .+�5!      �� -   5        $	��img��5!      $��Stretch=�6'   $��Stretch=�6E   $
��Fill=�6a   5#      �� 5$      -	   5        $��coords��5$   s   $	��Top=�6   $��Center=�60   
���   �
�������$		 0.3Q�6�   .��6�   	x:0 | y:06�   � 5%      -
   5        $ 	Magnifyer��5%      $��70��6*   $��70��65   $y�	Collapsed=�6A   $
��9999q�6X   .+�5&      A� -   5         A�Name$ MagnifyingEllipse��5&   ,   
�������$��70��6G   $��70��6R   $��Center=�5'      $��Center=�6-   ��5(      !� 5)       j� ViewboxUnits$ Absolute=�6*    j� Viewbox$ 	0,0,50,50�6B   -   5        MagnifyerBrush�� j� ViewportUnits$ RelativeToBoundingBox=�5*       j� Viewport$ 0,0,1,1�6D   5,      �� 5-      $��25(�6   $		 0.8Q�6*   $��Center=�68   $��Center=�6S   .��6p   ✛6s   5.      �� 51      -   5        $��MagnifyedImage��51   R   $��Stretch=�6   $��Stretch=�66   6R   53      54         Toast.Toasty  56   
   -   5          Name$ toast��56      $��30��57      $��Bottom=�58         Duration$ 	0:0:0:3.3h�59         Message$# Whoops! Something went wrong!��5:      $��Segoe UI)�5;      $
��Bold"�5<         MessageColor
 ��������#F44336$��13(�5?      5@      5A      