   M S B A M L   `   `   `  ����@  <Email, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EmailEmail  5          Email.ReadLetterPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      localclr-namespace:Email  5        N� Title$  ReadLetterPage��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��0.3* �6   �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� 
����+��$��0��6&   $��2��66   $��0��6J   $��3��6W   �� 5   
   $��Center=�6   $
��16pt(�6/   
����+��$��Center=�6W   $��0��6t   $��0��6�   $��	Кому:��6�   �� 5   
   $��Center=�6   $
��16pt(�6/   
����+��$��Center=�6W   $��0��6t   $��1��6�   $��От кого:��6�   �� 5   
   $��Center=�6   $
��16pt(�60   
����+��$��Center=�6X   $��0��6u   $��2��6�   $��	Тема:��6�   �� 5    
   -   5        $��ToWhom��5    x    �� Padding$ 5q�6   ���#DAD7CD
����+��$��Center=�6M   $
��14pt(�6h   $��1��6�   $��0��6�   �� 5!   
   -   5        $��FromWhom��5!   x   $ 5q�6   $��Center=�6    $
��14pt(�6;   ���#DAD7CD
����+��$��1��6�   $��1��6�   �� 5"   
   -   5        $��
SubjectTbx��5"   x   $ 5q�6   $��Center=�6    $
��14pt(�6;   ���#DAD7CD
����+��$��1��6�   $��2��6�   �� 5#   
   -   5        $��ReturnBT��5#   U   
����+��
����+��
�������$��0��6e   $��8��6u   ��6�   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	ArrowBack=�   Size$ 25X�6�   �� 5$   
   -   5        $��AnswerBT��5$   U   
����+��
����+��
�������$��1��6e   $��8��6u   ��6�     $ Reply=�$ 25X�6�   �� 5%   
   -   5        $��
MessageRtb��5%   C   ���#DAD7CD
����+��$��3��6U    �� 
IsReadOnly . $��0��6t   $��2��6�   $��5��6�    � 	Resources 5&       �� 
TargetType	 �� Property
 �� Value��%X   'J�       �� 5'      " J�6   .�5(      �� 	 �@��Margin$
 0q�6/   5)      5*      5+      5,      5-      