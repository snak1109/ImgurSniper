   M S B A M L   `   `   `  ����I  EImgurSniper.UI, Version=1.0.2.5, Culture=neutral, PublicKeyToken=null/clr-namespace:ImgurSniper.UIImgurSniper.UI  5      @ <Toast, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null,"clr-namespace:Toast;assembly=ToastToast 5          ImgurSniper.UI.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      U QMaterialDesignThemes.Wpf, Version=2.2.1.750, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:ImgurSniper.UI  5      /toasty"clr-namespace:Toast;assembly=Toast  5      
������ $	��470��5	      $	��575��6$     � Title$  Imgur Sniper Settings��5
      $	��470��6!   $	��575��6.   .��5      � -   5         �Name$
 grid��5         MaterialDesignPaper#���   6    � Triggers 5      :� 5       :� RoutedEvent$ Grid.Loaded��6   .[�5      �� .��5      �� -   5         g�Name$ 
GridFadeIn��5      .��5   	   W� -   5        $ GridFadeAnimation��5       �� TargetProperty$ (Window.Opacity)�5       W� From$	 0.0X�5      	 W� To$	 1.0X�6    g� Duration$ 0:0:0.3D�6   	 g� AutoReverse	 .  
 g� RepeatBehavior$
 1x��5      5   	   5      5      .+�5      ��  �� Orientation$ 
Horizontal=�6   $��5,0,15,5q�6)   $��Right=�5      $	��Top=�6#   .+�5      �� $	��100��6   $��10q�6    �� BitmapScalingMode$ HighQuality=�6$   $��Resources/mrousavy.png��5      6*   �� 5      $��30��6   $��10q�6   $ HighQuality=�6#   $��Resources/Logo.png��5       6&   5!      �� 5#      $��0,0,0,50q�6   .��5$      �� $��5q�6   .+�5%      �� $��10,5,5,5q�6   $��15(�6   .��6,   After Snapping...6?   	� 5&      -   5         	�Name$ 
ImgurRadio��5'   )    	� 	GroupName$ 	AfterSnap��5&      
 � Tag$ Imgur��6(    d� 	IsChecked$
 TrueY�64   $��14(�5'   	   $��15,0,0,0q�6   
�������.��5(   2   Automatically upload to Imgur5*      	� 5+      -   5        $ ClipboardRadio��5,   )   $ 	AfterSnap��5+      $ 	Clipboard��6(   $��14(�5,   	   $��15,0,0,0q�6   
�������.��5-   2   Copy Image to Clipboard5/      �� 51      $��10,5,5,5q�6   $��15(�6   .��6,   When finished...6>   �� 52      -   5         ��Name$ SaveBox��52      $��14(�6    $��15,0,0,0q�6.   
�������.��53   5   Save snapped Images locally55      �� 56      -   5         ��Name$ 	PathPanel��56   <   $ 
Horizontal=�6   $��15,5,5,5q�6*   .+�57      �� $��Bottom=�6   .��6(   Path:6/   �� 58      -   5         ��Name$ PathBox��59   	   $	��200��58      $��5q�6   $��Center=�6&   59      �� 5:      -	   5        
�������$��Bottom=�5:       $��Bottom=�5;        MaterialDesignFlatButton#���  5<   
   .��6=   ...6B   5=      �� 5?      $��10,5,5,5q�6   $��15(�6   .��6,   
Other...66   �� 5@      -
   5        $ MagnifyingGlassBox��5@      $��14(�6+   $��15,0,0,0q�69   
�������.��5A   7   Enable Magnifying Glass5C      �� 5D      -   5        $ OpenAfterUploadBox��5D      $��14(�6+   $��15,0,0,0q�69   
�������.��5E   <   $"Open Image in Browser after Upload5G      �� 5I      -   5         ��Name$ Label_Account��5J   	   $��10,5,5,5q�5I      $��15(�6   .��5J       Imgur Account5L      � 5M      $��15,5,5,5q�6   .+�5N      �� -   5        $ 	Panel_PIN��5O   	   $ 
Horizontal=�5N      $y�	Collapsed=�6+   .+�5P      �� 
�������$��13(�6    $��Center=�5Q      .��6&   PIN:5S   	   �� 5T      -   5        $ Box_PIN��5T   6   $��5q�6    �� 	MaxLength$ 20��6   $	��100��6*   $��Center=�5U   
   .��6G   5V   	   �� 5W      -   5         ��Name$ 	Btn_PinOk��5W   ,   $��5q�6   {�.  $��Center=�5X   	   .��62   >5Y   	   5Z      �� 5\      -   5        $ 
Btn_SignIn��5]      $
��Left=�5\      $y�Visible=�6)   .��5]   +   	Sign in5_      �� 5`      -   5        $ Btn_SignOut��5a      $
��Left=�5`      $y�	Collapsed=�6)   .��5a   -   
Sign out5c      5d      �� 5f      $��10,5,5,5q�6   $��15(�6   .��6,   Create Shortcuts6>   �� 5g      -   5        $ Btn_Startmenu��5h      $��15,5,5,0q�5g      $
��Left=�6   $	��100��5h      .��6*   	Desktop5j      �� 5k      -   5        $ Btn_Desktop��5l      $��15,5,5,0q�5k      $
��Left=�6   $	��100��5l      .��6(   	Startmenu5n      �� 5q      $��10,5,5,5q�6   $��15(�6   .��6,   Where to snipe6<   	� 5r      -   5        $ CurrentMonitorRadio��5s   )   $ MonitorGroup��5r      $ Current��6+   $
 TrueY�69   $��14(�5s   	   $��15,0,0,0q�6   
������� � ToolTip$J DOnly Snipe a Window on the Monitor the Mouse Cursor is currently on.��5u   	   .��6X   On current Monitor5w      	� 5x      -   5        $ MultiMonitorRadio��5y   )   $ MonitorGroup��5x      $	 All��6+   $��14(�5y   	   $��15,0,0,0q�6   
�������$> 8Snipe a Window on all connected Monitors (May be slower)��5{   	   .��6L   On all Monitors5}      5~      5      �� 5�      $��Bottom=�6   $��0,0,0,48q�6)   
�������6T   �� 5�      $ 
Horizontal=�6   $��Right=�5�      $��Bottom=�6#   .+�5�      �� -   5        $ 
Btn_Repair��5�   &   $��5q�6   .��6:   Repair5�      �� 5�      -   5        $ Btn_Uninstall��5�   )   $��5q�6   .��6@   	Uninstall5�      �� 5�      -   5        $ Btn_Install��5�   (   $��5q�6   .��6=   	Install5�      �� 5�      -   5        $ 	Btn_Snipe��5�   &   $��5q�6   .��69   Snipe!5�      5�        Toast.Toasty  5�      -   5          Name$ error_toast��5�      $��30��5�      $��Bottom=�5�         Duration$ 	0:0:0:2.7h�5�         Message$# Whoops! Something went wrong!��5�      $��Segoe UI)�5�      $
��Bold"�5�         MessageColor
 ��������#F44336$��13(�5�        5�      -   5        $ success_toast��5�      $��30��5�      $��Bottom=�5�      $ 	0:0:0:2.5h�5�      $% Somehow the Message is missing?��5�      $��Segoe UI)�5�      $
��Bold"�5�      
 ��������#2196F3$��13(�5�      5�      5�      