   M S B A M L   `   `   `  ����T  PStudent_Management_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Student_Management_SystemStudent_Management_System  5      #    Student_Management_System.App   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      9local'clr-namespace:Student_Management_System     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        �� 	Resources  5         	menuTitle �� 
TargetType �� Property �� Value  
menuButton �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  	addButton  normalButton  menuButtonIcon.  (MahApps.Metro.IconPacks.PackIconMaterial	 �� Path
 �� RelativeSource �� AncestorType  	titleText��%�  &	        &	 �     &	 �    &	 �    &	 �	    &	 �
    �� 5
   
   " ��6"   .�5      ��  � �� �#97e6c16+   �� 5       � ��$ 22(�6)   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ 
63 30 0 15q�6'   5      �� 5   
   " ��6#   .�5      ��  � ��
 ���� 6+   �� 5       � �� �#cfcfcf6+   �� 5       � ��$ 10q�6'   �� 5       � ��$ 50��6'   �� 5       � ��$ 18(�6)   �� 5       � ��$
 Bold"�6+   �� 5       �@�FocusVisualStyle 61   Z� �� 5       �@�Tag$ 	Collapsed��6$   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   $ 25��6K   ._�5      �� $��Stretch=�6/   $��Center=�6M   $��25 0 0 0q�6h   5      5       5"       5$      P� 5%       �@J�IsMouseOver$
 True��61   . �5&      ��  � �� �#02be6863   �� 5'       � �� �#ffffff63   �� 5(       �@�Tag$ Visible��6,   5)      5+      �� 5-   
   " ��6"   .�5.      ��  � ��
 ���� 6+   �� 5/       � �� �#cfcfcf6+   �� 50       � ��$ 50��6'   �� 51       � ��$ 20 3 0 3q�6'   �� 52       � ��$ 16(�6)   �� 53       � ��$
 Bold"�6+   �� 54       �@�FocusVisualStyle 61   Z� �� 55       �@�Tag$ 	Collapsed��6$   �� 56       � �� 57      �� 58      " ��6&   .R�59      �� #��z��6!   $ 25��6K   ._�5:      �� $��Stretch=�6/   $��Center=�6M   $��25 0 0 0q�6h   5;      5<      5>       5@      P� 5A       �@J�IsMouseOver$
 True��61   . �5B      ��  � �� �#02be6863   �� 5C       � �� �#ffffff63   �� 5D       �@�Tag$ Visible��6,   5E      5G      �� 5I   
   " ��6%   .�5J      ��  � �� �#138D756+   �� 5K       � �� �#ffffff6+   �� 5L       � ��$ 10q�6'   �� 5M       � ��$ 50��6'   �� 5N       � ��$ 18(�6)   �� 5O       � ��$
 Bold"�6+   �� 5P       �@�FocusVisualStyle 61   Z� �� 5Q       �@�Tag$ 	Collapsed��6$   �� 5R       � �� 5S      �� 5T      " ��6&   .R�5U      �� #��z��6!   $ 25��6K   ._�5V      �� $��Center=�6/   $��Center=�6L   5W      5X      5Z       5\      P� 5]       �@J�IsMouseOver$
 True��61   . �5^      ��  � �� �#02be6863   �� 5_       � �� �#ffffff63   �� 5`       �@�Tag$ Visible��6,   5a      5c      �� 5e   
   "  6'   .�5f      ��  � ��$ Center=�62   �� 5g       � ��$ 0 0 23 0q�6'   �� 5h       �@ Kind$ ChevronRight=�6%   �� 5i       � ��$ Right=�64   �� 5j       � y� 6+   �� $		 Tag�
 �� *FindAncestor+" ��5k      �� 5m   
   " ��6"   .�5n      ��  � �� �#cfcfcf6+   �� 5o       � ��$ 36(�6)   �� 5p       � ��$
 Bold"�6+   5q      5s      5u      