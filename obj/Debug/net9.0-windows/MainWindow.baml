   M S B A M L   `   `   `  ����F  BWordCounter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WordCounterWordCounter  5   	       WordCounter.MainWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WordCounter     5   	     � Title$  Word Counter��5   	   $	��325��6   $	��400��6+    � 
ResizeMode$ NoResize=�67   .��5	      � .+�5
   
   �� -   5         ��Name$ tbxFileName��5
      $
��Left=�6'   $��	10,10,0,0q�6B    �� TextWrapping$
 Wrap=�6U   $��Select File...��6i   $	��Top=�6   $	��300��6�   �� 5   
   -   5         ��Name$ btnFileDialog��5      $��Browse��6(   $
��Left=�69   $��10 9,0,0q�6T   $	��Top=�6f   $��60��6~   6�   �� 5   
   -   5        $ 
tbxDisplay��5      $
 Wrap=�6&   $�� ��6:   $��10,10,10,10q�6B   $	��380��6W   $	��200��6c    �� 
IsReadOnly$
 True��6p   �� 5   
   -   5         ��Name$ cbxWordSelect��5      ${�False��6*    �� SelectedValuePath$	 Key��6<   $��10,5,0,5q�6T   $	��120��6f   6r   �� 5   
   -   5        $ tbxWordCount��5      $ NoWrap=�6(   $�� ��6?   $��80��6G   $��20��6R   $��5,0,0,0q�6^   $
 True��6o   5      5      