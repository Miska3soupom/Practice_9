   M S B A M L   `   `   `  ����@  <Email, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EmailEmail  5          Email.SendLetterPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      localclr-namespace:Email  5        N� Title$  SendLetterPage��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��0.3* �6   �� 5      �� 5      $��0.15* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��3��6$   $��0��68   $��2��6E   
����+��6V   �� 5   
   $��Center=�6   $
��16pt(�6/   
����+��$��Center=�6W   $��0��6t   $��0��6�   $��	Кому:��6�   �� 5   
   $��Center=�6   $
��16pt(�6/   
����+��$��Center=�6W   $��0��6t   $��1��6�   $��	Тема:��6�   �� 5    
   -   5         ��Name$ ComboBx��5       )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ящик��6$   $��5q�6J   $��10.5pt(�6V   
�������$��0��6   $��3��6�   $��5,0,0,0q�6�   
����+��
����+��.@�5!      �� $��Google��6   
 � Tag$ smtp.gmail.com��6,   �� 5"      $
��Mail��6   $ smtp.mail.ru��6*   �� 5#      $��Yandex��6   $ smtp.yandex.ru��6,   �� 5$      $��Rambler��6   $ smtp.rambler.ru��6-   5%      �� 5&   
   -   5        $��ToTbx��5&   x   $��5q�6   $��Center=�6   $
��14pt(�69   
�������
����+��$��1��6�   $��0��6�   $+ %Введите отправителя��6�   �� 5'   
   -   5        $��
SubjectTbx��5'   x   $��5q�6   $��Center=�6   $
��14pt(�69   
�������
����+��$��1��6�   $��2��6�   $��1��6�   $ Введите тему��6�   �� 5(   
   -   5        $��ReturnBT��5(   U   
����+��
����+��
�������$��0��6e   $��8��6u   ��6�   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	ArrowBack=�   Size$ 25X�6�   �� 5)   
   -   5        $��SendBT��5)   U   
����+��
����+��
�������$��1��6c   $��2��6s   $��8��6�   ��6�     $
 Send=�$ 25X�6�   `� 5*   
   $��2��6    `� 
Background
 ��+��$��0��6;   $��3��6K   .�5+      c� 
����+��
�������.@�5,      �� $��ApplicationCommands.Cut��6   
���������6R     $ 
ContentCut=�$ 20X��� 5-      $��ApplicationCommands.Copy��6   
���������6S     $ ContentCopy=��� 5.      $��ApplicationCommands.Paste��6   
���������6T     $ ContentPaste=��� 5/      �� 50      $��ApplicationCommands.Undo��6   
���������6S     $
 Undo=��� 51      $��ApplicationCommands.Redo��6   
���������6S     $
 Redo=��� 52      �� 53      $ ��EditingCommands.ToggleBold��6   
���������6U     $ 
FormatBold=��� 54      $"��EditingCommands.ToggleItalic��6   
���������6W     $ FormatItalic=��� 55      $%��EditingCommands.ToggleUnderline��6   
���������6Z     $ FormatUnderline=��� 56      �� 58      $&�� EditingCommands.IncreaseFontSize��6   
���������6[     $ FormatFontSizeIncrease=��� 59      $&�� EditingCommands.DecreaseFontSize��6   
���������6[     $ FormatFontSizeDecrease=��� 5:      �� 5;      
���������60     $" ClipboardTextMultipleOutline=��� 5<      
�������$��EditingCommands.AlignLeft��60   ��6T     $ FormatAlignLeft=��� 5=      
�������$!��EditingCommands.AlignCenter��60   ��6V     $ FormatAlignCenter=��� 5>      
�������$ ��EditingCommands.AlignRight��60   ��6U     $ FormatAlignRight=��� 5?      
�������$"��EditingCommands.AlignJustify��60   ��6W     $ FormatAlignJustify=�5@      5A      �� 5B   
   -   5        $��
MessageRtb��5B      
����+��$
��12pt(�6@   $' !Введите сообщение��6P   	 �� 
AcceptsTab	 . $��3��6�   $��0��6�   $��3��6�   $��5��6�   
 � 	Resources
 5C       �� 
TargetType �� Property �� Value��%X   'J�       �� 5D      " J�6   .�5E      ��  �@��Margin$ 0q�6/   5F      5G      5H      5I      5J      