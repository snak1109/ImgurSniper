   M S B A M L   `   `   `  ���� @  <Toast, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null,"clr-namespace:Toast;assembly=ToastToast  F BImgurSniper, Version=1.0.2.5, Culture=neutral, PublicKeyToken=null)clr-namespace:ImgurSniperImgurSniper "   ImgurSniper.ScreenshotWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5toasty"clr-namespace:Toast;assembly=Toast     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:ImgurSniper     -     � Cursor$  Cross�� � Topmost .  � AllowsTransparency .  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � Title$ Snipe a Screenshot!��$	��100��$	��100�� � WindowStartupLocation$ Manual=�.��� .+�� -    �Name$
 grid��.+��� -    ��Name$ selectionRectangle��$
��9999q�
�������$��1q�._��� 
�������	 J� Opacity$		 0.3Q�� -   $ ContentGrid��$		 0.3Q�
���   �
 � Triggers
 :�  :� RoutedEvent$ Grid.Loaded��.[��� .���� -    g�Name$ FadeIn��.��W� -   $ FadeInAnimation�� �� TargetProperty$ (Grid.Opacity)� W� From$ 0X�	 W� To$	 0.3X� g� Duration$ 0:0:0.25D�.+�� -   $ SnipperGrid��$��Stretch=�$��Stretch=�.+��� -   $	��img��$��Stretch=�$��Stretch=�$
��Fill=��� -	   $��coords��$	��Top=�$��Center=�
���   �
�������$		 0.3Q�.��	x:0 | y:0� -
   $ 	Magnifyer��$��70��$��70��$y�	Collapsed=�$
��9999q�.+�A� -    A�Name$ MagnifyingEllipse��
�������$��70��$��70��$��Center=�$��Center=���!�  j� ViewboxUnits$ Absolute=� j� Viewbox$ 	0,0,50,50�-   MagnifyerBrush�� j� ViewportUnits$ RelativeToBoundingBox=� j� Viewport$ 0,0,1,1��� $��25(�$		 0.8Q�$��Center=�$��Center=�.��✛�� -   $��MagnifyedImage��$��Stretch=�$��Stretch=�   Toast.Toasty  -     Name$ toast��$��30��$��Bottom=�   Duration$ 	0:0:0:3.3h�   Message$# Whoops! Something went wrong!��$��Segoe UI)�$
��Bold"�   MessageColor
 ��������#F44336$��13(�