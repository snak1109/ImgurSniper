   M S B A M L   `   `   `  ����@  <Toast, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null,"clr-namespace:Toast;assembly=ToastToast  5   	   F BImgurSniper, Version=1.0.2.5, Culture=neutral, PublicKeyToken=null)clr-namespace:ImgurSniperImgurSniper 5   	      ImgurSniper.Snipe   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5toasty"clr-namespace:Toast;assembly=Toast     5   	   +localclr-namespace:ImgurSniper     5   	     � AllowsTransparency  .  � WindowStyle$
 None=�5      
������ $y�Visible=�5	   	    � ShowInTaskbar .   � WindowStartupLocation$ Manual=�64    � Title$ Snipe a new Image��5
   	   $��30��6#   $	��200��6/    J� Opacity$ 1Q�6;   .��5      � -   5         �Name$
 grid��5      .+�5   
      Toast.Toasty  -   5          Name$ 
ErrorToast��5      $y�	Collapsed=�6.   $��30��5      $��Bottom=�5         Duration$ 	0:0:0:3.3h�5      	   Message$#	 Whoops! Something went wrong!��5      $��Segoe UI)�5      $
��Bold"�5      
   MessageColor

 ��������#F44336$��13(�5        5   
   -   5        $ SuccessToast��5      $y�	Collapsed=�60   $��30��5      $��Bottom=�5      $ 	0:0:0:3.3h�5      $	 Done.��5      $��Segoe UI)�5      $
��Bold"�5      

 ��������#2196F3$��13(�5!      5"      5#      