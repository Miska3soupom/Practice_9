   M S B A M L   `   `   `  ����@  <Email, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EmailEmail  5   	       Email.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   localclr-namespace:Email  5   	     � Title$  
UserWindow��5	   	   
�������$	��450��66   $	��800��6C    � WindowStartupLocation$ CenterScreen=�6O   .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5      $��4* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� -   5         ��Name$ 
FoldersLbx��5   >   
�������
����  �$��1��6R   $��0��6_   $��4��6o   6�   �� 5   
   -   5         ��Name$
 Send��5      $��75��6   $��85��6+   $��0��66   $��0��6C   $��Center=�6S   
����+��
����+��+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 22��6�   $��10,18,10,19q�6  ��6�   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	EmailSend=�   Size$ 40X�6   � 5   
   -   5        	  �Name$	 	PageFrame��5      $��0��6#   $��1��60   $��5��6@   
  � NavigationUIVisibility$
 Hidden=�6Q   � 5   
   -   5         �Name$ Progress��5      $��0��6(   $��1��65   $��5��6E   $	��100��6V   $	��100��6b    %  !MaterialDesignCircularProgressBar#��[  6o    � Value$ 0Q�6�    � IsIndeterminate . $y�Visible=�6�   
����+��6�   5      5      