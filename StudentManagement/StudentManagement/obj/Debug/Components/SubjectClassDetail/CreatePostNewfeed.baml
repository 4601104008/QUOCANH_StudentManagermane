   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5	      4    .StudentManagement.Components.CreatePostNewfeed   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:StudentManagement.Components     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      1utils%clr-namespace:StudentManagement.Utils  5	      -   5          >?Name$  CreatePostNewFeedUC??5
         Transparent#???   5      .??5      ??  	 White#???  6    ?? CornerRadius$ 8??62    J? Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 8Q?5         Opacity$	 0.3Q?5         ShadowDepth$ 0Q?5         Color$ DarkGray??5      ._?5   
   ?  ? RowDefinitions 5      ?? 5      $??* ?6    ?? 5      $
??auto ?6    ?? 5      $
??auto ?6    .+?5      ]? $??0??6   .+?5       A? $??40??5!      $??40??5"      $??
16,16,4,16q?5#      $	??Top=?5$      $
??Left=?5%      
???????$??1??5'      ??5(      ?? 5)       ?? 
TargetType" A?6    .?5*      ?? 	 ?? Property	 ? ??
 ?? Value
 5+   "   ?? 5,   &    j? Stretch$ Uniform=?6?    ?? ImageSource 61   ??   LoginServices ?? Source# [  ?? Path$* $CurrentUser.DatabaseImageTable.Image?  DefaultUserAvatar ?? TargetNullValue# [ 6?   5.       ?? Triggers 5/      ?? 50   "    ?? Binding 6.   ?? # [ $ CurrentUser.IdAvatar? ?? Value 6?   Z? .a?51   &   ?? 	 ? ??
 52   *   ?? 53   .   # [ 69   $ Uniform=?6j   55   '   56   #   58      5:      ?? 5G      $
??auto??5H      $??40??5I      $	??300??5J      $??	4,16,16,4q?5K      $??16q?5L      )  #MaterialDesignThemes.Wpf.HintAssist   
IsFloating .  .  (MaterialDesignThemes.Wpf.TextFieldAssist   TextFieldCornerRadius$ 24??5N       ?? AcceptsReturn .  ?? 
AcceptsTab .   Gray#???  5Q      $??Right=?5R      $??16(?5S      $ ?? HorizontalScrollBarVisibility$ Disabled=?5T       ! MaterialDesignOutlinedTextBox#??[ 5U       ?? TextWrapping$
 Wrap=?5W      " ?? VerticalScrollBarVisibility$
 auto=?5X      ??5V      ?? *DraftPostText+ ?? Mode$ TwoWay=?.??5X   8      Hint 5Y      ?? 5Z      ??6$   ?? # [ $ CurrentUser.DisplayName? ?? StringFormat$! Bạn đang nghĩ gì, {0}???.??5[   6   5\      5]      ?? 5_      $??1??5`      $??	16,0,16,0q?5a      $
??Auto=?5b      $??Disabled=?5c      .??5d      ?? ??6   ?? *StackImageDraft+??5e      ?? 5f      .R?5g      ?? $??8,4,0,8q?5h   !   $??Right=?5i   !    ?? Orientation$ 
Horizontal=?5j   !   5k      ??5m      ?? 5n      .R?5o      ??   
ImageAdded#??[ 5q   !   ??5p   !   ??  ?? RelativeSource ??  ?? Mode$ FindAncestor=?  ?? AncestorType"  ??$ DataContext.DeleteImage?
! ? Tag! 5r   !   ?? 5s      5u      5v      ]? 5x      $??2??5y      $??
16,8,16,16q?5z      $??Right=?5{      .+?5|      ?? $??16,0,0,0q?5}      $??Right=?5        PrimaryButton#???  5?      ??5~      ?? *
SendPost+.??5?      ?? $ 
Horizontal=?6!   .+?5?      ?? $??Center=?6$   $??
Đăng tin??6?   ?? 5?      $??20??5?      $??8,0,0,0q?5?        Send#???  5?      5?      5?      ?? 5?      $??16,0,0,0q?5?      $??Right=?5?      #???  5?      ??5?      ?? *
AddImage+.??5?      ?? $ 
Horizontal=?6!   .+?5?      ?? $??Center=?6$   $??Thêm hình??6?   ?? 5?      $??20??5?      $??8,0,0,0q?5?       	 AddImage#??? 	 5?      5?      5?      5?      5?      5?      5?      