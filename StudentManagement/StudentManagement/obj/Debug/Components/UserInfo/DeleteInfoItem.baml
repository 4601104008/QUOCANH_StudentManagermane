   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      1    +StudentManagement.Components.DeleteInfoItem   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:StudentManagement.Components     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      -   5          >?Name$  DeleteInfoItemComponent??5	         MaterialDesignPaper#???   5
        MaterialDesignFont#???  5      $??13(?5      $??Regular"?5        MaterialDesignBody#???  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5      .??5      ? .+?5   
   ?? -   5         ??Name$ 
CardButton??5      $
??Auto??5      $
??Auto??5      $??6q?5      
?????? 
?????? $??Normal"?5      
???   ?.??5      #  MaterialDesignThemes.Wpf.Card  $	??200??5      $??8q?5         UniformCornerRadius$ 8Q?5      ??5       ?? 5!       ?? 
TargetType"  6   .?5"      ??  ?? Property ? ?? ?? Value
 ?????67   ?? 5#       ? ??
 ?????67    ?? Triggers 5$      P? 5%      	 P? Property	 ?@J?IsMouseOver
 P? Value
 . . ?5&   "   ??  ?@?Cursor$
 Hand??6;   ?? 5'   "    ? ??
 ?????6?   5(      ?? 5)       ?? Binding 6*   ??  ?? ElementName$ 
CardButton?? ?? Path$ 	IsFocused? ?? Value true6e   .a?5*   "   ??  ? ??
 ?????6?   5+      5-      .??5/      ?  ? RowDefinitions 50      ?? 51      $
??Auto ?6(   ?? 52      $
??Auto ?6(   ?? 53      $
??Auto ?6(   .+?55      ? $??0??6    ? ColumnDefinitions 56      ?? 57      $	??160 ?6/   ?? 58      .+?5:      ?? $??0??5;      $??40??5<      $??14(?5=       $  MaterialDesignHeadline6TextBlock#??[ 5>      $??CharacterEllipsis=?5@      $??WrapWithOverflow=?5A      ??5?      ?? *CurrendInfoItem.LabelName+ ?? FallbackValue$) #Chương trình chất lượng cao??5A      '  !MaterialDesignThemes.Wpf.PopupBox  5B      $??1??5C      $??2,0,2,0q?5D      $??Right=?5E      $	??Top=?5F         PopupContent. 5G      ?? .+?5H   "   ?? $??Khôi phục thông tin??5K   %   ??5I   %   ?? *RestoreInfoItemCommand+??5J   %   ?? $ DeleteInfoItemComponent??5K   %   ?? 5L   "   $??Xoá thông tin??5O   %   ??5M   %   ?? *DeleteInfoItemCommand+??5N   %   ?? $ DeleteInfoItemComponent??5O   %   5P      5Q      5R      5S      5T      5U      5V      5W      