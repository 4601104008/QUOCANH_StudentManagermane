   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      K*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5
      H    BStudentManagement.Components.CampusStudentListRightSideBarItemEdit   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @	component*clr-namespace:StudentManagement.Components     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:StudentManagement.Components     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      1utils%clr-namespace:StudentManagement.Utils  5
      -   5          >?Name$!  StudentListRightSideBarItem??5         SideBar#??[  5        MaterialDesignFont#???  5      $??13(?5      $??Regular"?5        MaterialDesignBody#???  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5      .??5      ?  ? RowDefinitions 5   
   ?? 5      $??1* ?6   ?? 5      $	??100 ?6   .+?5   
   ?? $??0??6   $
??Auto=?6$   .??5      ?? $??8q?6   .+?5      ?? $??0,0,0,16q?5      $??	ExtraBold"?5       $  MaterialDesignHeadline6TextBlock#??[ 5       $??Thay đổi thông tin??5!      $
??Wrap=?5"      ? 5#        text_grid_item#??[ 6    5$      ?? 5%      ?? 5&      .+?5)      ?? $??0??5*      $??Vai trò người dùng??5+        	LabelText#??[ 5,      ?? 5.      $??1??5/      
??????? ?? 
IsReadOnly .   textbox_item#??[ 52      ??53      ?? *SelectedRole+ ?? UpdateSourceTrigger$ PropertyChanged=?54      ? 55      #??[ 6    56      ?? 57      ?? 58      .+?5;      ?? $??0??5<      $??Username??5=      #??[ 5>      ?? 5@      $??1??5A      
??????? . #??[ 5D      ??5E      ?? *
Username+$ PropertyChanged=?5G      ?? 5I      ??6   ?? *
InfoSource+$ PropertyChanged=???5J      ?? 5K      .R?5L      ?? 5M      ??5O      ?? 5P      .R?5R      ?? ??6/   ??  ? 	Resources 5S   "     Combobox3   -StudentManagement.Components.UserCardCombobox  
DatePicker5   /StudentManagement.Components.UserCardDatePicker 	 Textbox2   ,StudentManagement.Components.UserCardTextBox??%?   &	       &	 (     &		 P     ?? 5T   &   .R?5U   *     5V   '   ?? 5W   &   .R?5X   *     5Y   '   ?? 5Z   &   .R?5[   *     5\   '   5]   #   ??5`   "   ?? 5a   &    ?? 
TargetType" ??6,    ?? Triggers 5b   *   ?? 5c   .   	 ?? Binding	 6:   ?? *CurrendInfoItem.Type+
 ?? Value
 06c   .a?5d   2   ??  ?? Property ? ?? ?? Value# [	 6T   5e   /   ?? 5f   .   	 6:   ?? *CurrendInfoItem.Type+
 16c   .a?5g   2   ??  ? ??# [ 6T   5h   /   ?? 5i   .   	 6:   ?? *CurrendInfoItem.Type+
 26c   .a?5j   2   ??  ? ??# [ 6T   5k   /   5m   '   5o      5p      5r      5s      5t      ? 5u   
   $??1??5v      $??8q?5w      #??[ 5x       ? ColumnDefinitions 5y      ?? 5z      $??* ?6#   ?? 5{      $??* ?6#   ?? 5|      $??* ?6#   ?? 5}      $??* ?6#   .+?5      ?? $??3??5?      $
??Lưu??5?      $??16(?5?       
 rounded_btn#??[
 5?       ? ToolTip$1 +Bạn chưa điền đầy đủ thông tin??5?       ^? ShowOnDisabled . ??5?      ?? *ConfirmEditStudentInfo+5?      ?? 5?      $??2??5?        DarkGray#??[ 5?      $??Hủy??5?      $??16(?5?      
???????#??[
 5?      ??5?      ?? *CancelEditStudentInfo+5?      5?      5?      5?      