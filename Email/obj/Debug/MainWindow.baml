   M S B A M L   `   `   `  ����@  <Email, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EmailEmail  5   	       Email.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Email     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   
������  � WindowStartupLocation$  CenterScreen=�6R    � Title$ 
MainWindow��5
   	   $	��450��6   $	��700��6)   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5    
   �� $��1��6   $��6��6!   $��1��62   $��6��6B   
�����_�6V   �� 5!   
   $��1��6   $��2��6!   $��1��62   $��6��6C   $��ВХОД��6W   ���#DAD7CD$��Center=�6x   $
��24pt(�6�   $��Center=�6�   �� 5"   
   -   5         ��Name$ EmailTbx��5"      $��2��6$   $��3��64   $��5q�6A   
�����_�
����+��$��11.5pt(�6|   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Эл. почта��6�   $��3��6�   $��	0,10,0,10q�6�   �� 5#   
   -   5         ��Name$ ComboBx��5#      $ Ящик��6$   $��5q�6J   $��10.5pt(�6V   
�����_�$��3��6   $��5��6�   $��5,0,0,0q�6�   
����+��
�����_�.@�5$      �� $��Google��6   
 � Tag$ imap.gmail.com��6,   �� 5%      $
��Mail��6   $ imap.mail.ru��6*   �� 5&      $��Yandex��6   $ imap.yandex.ru��6,   �� 5'      $��Rambler��6   $ imap.rambler.ru��6-   5(      G� 5)   
   -   5         G�Name$ 
PasswordBx��5)      $��2��6*   $��4��6:   $��4��6G   $ Пароль��6[   
�������
����+��$��11.5pt(�6�   $��5q�6�   $��	0,10,0,10q�6�   �� 5*   
   -   5        	 ��Name$	 Enter��5*      $��5��6    $��2��6-   $��
Войти��6>   ���#DAD7CD$
��13pt(�6c   $��3��6s   $��2��6�   $��Center=�6�   ���#344E41
����+��
 � Cursor$

 Hand��6�   6�   5+      5,      