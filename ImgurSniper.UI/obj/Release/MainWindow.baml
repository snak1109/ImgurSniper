   M S B A M L   `   `   `  ���� I  EImgurSniper.UI, Version=1.0.2.5, Culture=neutral, PublicKeyToken=null/clr-namespace:ImgurSniper.UIImgurSniper.UI  @ <Toast, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null,"clr-namespace:Toast;assembly=ToastToast     ImgurSniper.UI.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=2.2.1.750, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  (localclr-namespace:ImgurSniper.UI  /toasty"clr-namespace:Toast;assembly=Toast  
������ $	��470��$	��575��  � Title$  Imgur Sniper Settings��$	��470��$	��575��.��� -    �Name$
 grid��   MaterialDesignPaper#���    � Triggers :�  :� RoutedEvent$ Grid.Loaded��.[��� .���� -    g�Name$ 
GridFadeIn��.��W� -   $ GridFadeAnimation�� �� TargetProperty$ (Window.Opacity)� W� From$	 0.0X�	 W� To$	 1.0X� g� Duration$ 0:0:0.3D�	 g� AutoReverse	 .  
 g� RepeatBehavior$
 1x��.+���  �� Orientation$ 
Horizontal=�$��5,0,15,5q�$��Right=�$	��Top=�.+��� $	��100��$��10q� �� BitmapScalingMode$ HighQuality=�$��Resources/mrousavy.png���� $��30��$��10q�$ HighQuality=�$��Resources/Logo.png���� $��0,0,0,50q�.���� $��5q�.+��� $��10,5,5,5q�$��15(�.��After Snapping...	� -    	�Name$ 
ImgurRadio�� 	� 	GroupName$ 	AfterSnap��
 � Tag$ Imgur�� d� 	IsChecked$
 TrueY�$��14(�$��15,0,0,0q�
�������.��Automatically upload to Imgur	� -   $ ClipboardRadio��$ 	AfterSnap��$ 	Clipboard��$��14(�$��15,0,0,0q�
�������.��Copy Image to Clipboard�� $��10,5,5,5q�$��15(�.��When finished...�� -    ��Name$ SaveBox��$��14(�$��15,0,0,0q�
�������.��Save snapped Images locally�� -    ��Name$ 	PathPanel��$ 
Horizontal=�$��15,5,5,5q�.+��� $��Bottom=�.��Path:�� -    ��Name$ PathBox��$	��200��$��5q�$��Center=��� -	   
�������$��Bottom=�$��Bottom=�  MaterialDesignFlatButton#���  .��...�� $��10,5,5,5q�$��15(�.��
Other...�� -
   $ MagnifyingGlassBox��$��14(�$��15,0,0,0q�
�������.��Enable Magnifying Glass�� -   $ OpenAfterUploadBox��$��14(�$��15,0,0,0q�
�������.��$"Open Image in Browser after Upload�� -    ��Name$ Label_Account��$��10,5,5,5q�$��15(�.��Imgur Account� $��15,5,5,5q�.+��� -   $ 	Panel_PIN��$ 
Horizontal=�$y�	Collapsed=�.+��� 
�������$��13(�$��Center=�.��PIN:�� -   $ Box_PIN��$��5q� �� 	MaxLength$ 20��$	��100��$��Center=�.���� -    ��Name$ 	Btn_PinOk��$��5q�{�.  $��Center=�.��>�� -   $ 
Btn_SignIn��$
��Left=�$y�Visible=�.��	Sign in�� -   $ Btn_SignOut��$
��Left=�$y�	Collapsed=�.��
Sign out�� $��10,5,5,5q�$��15(�.��Create Shortcuts�� -   $ Btn_Startmenu��$��15,5,5,0q�$
��Left=�$	��100��.��	Desktop�� -   $ Btn_Desktop��$��15,5,5,0q�$
��Left=�$	��100��.��	Startmenu�� $��10,5,5,5q�$��15(�.��Where to snipe	� -   $ CurrentMonitorRadio��$ MonitorGroup��$ Current��$
 TrueY�$��14(�$��15,0,0,0q�
������� � ToolTip$J DOnly Snipe a Window on the Monitor the Mouse Cursor is currently on.��.��On current Monitor	� -   $ MultiMonitorRadio��$ MonitorGroup��$	 All��$��14(�$��15,0,0,0q�
�������$> 8Snipe a Window on all connected Monitors (May be slower)��.��On all Monitors�� $��Bottom=�$��0,0,0,48q�
��������� $ 
Horizontal=�$��Right=�$��Bottom=�.+��� -   $ 
Btn_Repair��$��5q�.��Repair�� -   $ Btn_Uninstall��$��5q�.��	Uninstall�� -   $ Btn_Install��$��5q�.��	Install�� -   $ 	Btn_Snipe��$��5q�.��Snipe!  Toast.Toasty  -     Name$ error_toast��$��30��$��Bottom=�   Duration$ 	0:0:0:2.7h�   Message$# Whoops! Something went wrong!��$��Segoe UI)�$
��Bold"�   MessageColor
 ��������#F44336$��13(�  -   $ success_toast��$��30��$��Bottom=�$ 	0:0:0:2.5h�$% Somehow the Message is missing?��$��Segoe UI)�$
��Bold"�
 ��������#2196F3$��13(�