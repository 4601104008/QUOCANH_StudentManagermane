   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      K*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5      K*clr-namespace:StudentManagement.ViewModelsStudentManagement.ViewModels  5      A%clr-namespace:StudentManagement.ViewsStudentManagement.Views  5      9    3StudentManagement.Components.CenterColumnHeaderCard   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @	component*clr-namespace:StudentManagement.Components     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      6local*clr-namespace:StudentManagement.Components  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      H DMathConverter, Version=1.2.1.6, Culture=neutral, PublicKeyToken=null(mathhttp://hexinnovation.com/math  5
      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      1utils%clr-namespace:StudentManagement.Utils  5      ;
viewmodels*clr-namespace:StudentManagement.ViewModels  5      1views%clr-namespace:StudentManagement.Views  5         CenterColumn#??[  5        AdminCourseRegistryVM  ? DataContext#  [ 5        MaterialDesignFont#???  5      $??13(?5      $??Regular"?5        MaterialDesignBody#???  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??* ?6   ?? 5      $??* ?6   ?? 5      $??* ?6   ?? 5       $??* ?6   ?? 5!      $??* ?6   ?? 5"      $??* ?6   ?? 5#      $??* ?6   ?? 5$      $??* ?6   ?? 5%      $??* ?6   ?? 5&      $??* ?6   ?? 5'      $??* ?6   .+?5)   
   ?? $??0??5*      $??2??5+      $
??Left=?5,       ?? Orientation$ 
Horizontal=?5-      .+?5.      ?? $??40??5/      $??16q?50        Logo#??[ 51      ?? 52      $??Center=?53      $??Center=?54      $??
Bauhaus 93)?55      $??24(?56      $
??Bold"?57      
???iii?$??STUMAN??59      5:      ]? 5<   
   $??2??5=      $??7??5>      $??Center=?5?      .+?5@      ?? $??Center=?6   $
??Left=?64   .+?5A      ?? $??0??5B      $??0,0,0,8q?5C      $??20(?5D      $
??Bold"?5E       $  MaterialDesignHeadline4TextBlock#??[ 5F      ??5G      ??   LoginServices ?? Source# [  ?? Path$ CurrentUser.DisplayName? ?? StringFormat$ Xin chào, {0}???? 5I      $??0??6   $
??left=?6)   ??5J      ?? 5K       ?? 
TargetType" ??6    	 ?? Triggers	 5L      ?? 5M   "   
 ?? Binding
 6.   ?? # [ $ CurrentUser.UserRole.Role? ?? Value	 Admin6?   .a?5N   &   ??  ?? Property ? y? ?? Value$ 	Collapsed=?6C   5O   #   5Q      ?? 5S      ?6   ??   AdminNotificationVM# [ $ NumCardInBadged?$, &Hôm nay có {0} thông báo mới và?? ?? 5T      ?6   ??   
UserInfoVM# [ $ NumPeriodToday? ?? TargetNullValue$ 0?? ?? 5U      .?6   ??5V      ?? 5W      " ??6$   .?5X   "   ??  ? ?$ tiết dạy??69   	 5Y   "   ?? 5Z   &   
 62   ?? # [ $ CurrentUser.UserRole.Role? 
Sinh viên6?   .a?5[   *   ??  ? ?$ tiết học??6A   5\   '   5^      .?5_   %   5`      5a      5b      /   )StudentManagement.Components.ClockControl  5c      $	??300??5d      $	??0,8q?5e      $??Right=?5f      $??Bottom=?5g      5h      ? 5j   
   $??9??5k      $??3??5l      $??	16,0,16,0q?5m       5n      ?? 5o      $??* ?6#   ?? 5p      $
??auto ?6#   ?? 5q      $
??auto ?6#   .+?5s      ?? $??0??5t      $??Center=?5u      $ 
Horizontal=?5v      .+?5w      ?? $??40??5x      $??40??5y      $??8,0,12,0q?5z      ??5{      ?? 5|       ?? 
TargetType" ??6*   .R?5}      ? .+?5~   "   A? $??40??5   %   $??40??5?   %   
???????$??1??5?   %   ??5?   &   ?? 5?   *   " A?60   .?5?   .   ??  ? ?? 5?   2   ?? 5?   6    j? Stretch$ Uniform=?6?    ?? ImageSource 6A   ?? # [ $* $CurrentUser.DatabaseImageTable.Image? 	 DefaultUserAvatar# [	 6?   5?   /   	 5?   .   ?? 5?   2   
 6>   ?? # [ $ CurrentUser.IdAvatar? 6?   Z? .a?5?   6   ??  ? ?? 5?   :   ?? 5?   >   # [	 6I   $ Uniform=?6z   5?   7   5?   3   5?   +   5?   #   5?      5?      5?      ?? 5?      $??Center=?5?      $??Center=?5?       ?? TextAlignment$ Center=?5?      ?? 5?      $??16(?5?      $
??Bold"?5?      ?5?      ?? # [ $ CurrentUser.DisplayName??? 5?      ?? 5?      
????????6,   ?? # [ $ CurrentUser.UserRole.Role?5?      5?      ?? 5?      $??1??5?      $??40??5?      $??40??5?      $??0,0,2,0q?5?      $??Right=?5?      +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 ?????
?????? $??0q?5?      }?. #  ?  5?       
 MaterialDesignIconButton#??[
 5?      $y?Visible=?5?      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5?      +  %Microsoft.Xaml.Behaviors.EventTrigger  5?         	EventName$ Click??6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5?      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 60   ?? *SeenNotificationCommand+5?      .??5?      %  MaterialDesignThemes.Wpf.Badged  $??-4q?6(      Badge 65   ?? *NumCardInBadged+ ?? UpdateSourceTrigger$ PropertyChanged=???5?      ?? 5?      "  6    .?5?      ??  ?@ BadgeBackground  	ErrorMain# ?  6@   ?? 5?       ?@ BadgeForeground 	 White# ?  6@   	 5?      ?? 5?   "   
 6.   ?? *NumCardInBadged+$ PropertyChanged=? 06w   .a?5?   &   ??  ?@ BadgeBackground
 ???? 6H   ?? 5?   &    ?@ BadgeForeground
 ???? 6H   5?   #   5?      .??5?      '	  !MaterialDesignThemes.Wpf.PopupBox	  -   5        $??PopupNotification??5?       	  PlacementMode$ BottomAndAlignRightEdges=?5?       	  	StaysOpen . ??5?      ?? 5?      " 	 6$   	 5?   "   ?? 5?   &   
 62   ?? $ 	IsFocused? ?? RelativeSource ??  ?? AncestorType" ?? true6?   .a?5?   *   ??  ?@	 IsPopupOpen . 6H   5?   '   5?       	  ToggleContent 5?      '
  !MaterialDesignThemes.Wpf.PackIcon
  5?      $??20??5?   !   $??20??5?   !    
  Kind$ BellOutline=?5?   !     	  PopupContent.  5?      ? $	??300??6   .+?5?      ? ! ? RowDefinitions! 5?   "   ?? 5?   &   $??* ?64   ?? 5?   &   $??5* ?64   .+?5?   "   ? $??0??6'    5?   &   ?? 5?   *   ?? 5?   *   .+?5?   &   ?? $??0??5?   )   $??8q?5?   )   $
??Left=?5?   )   $??24(?5?   )   $
??Bold"?5?   )   $??Thông báo??5?   )   ? 5?   &   $??2??5?   )   $??0,0,18,0q?5?   )   $??Right=?5?   )   .+?5?   *   	  $ BottomAndAlignRightEdges=?6B    5?   .   
  5?   2   $??20??5?   5   $??20??5?   5   $ DotsHorizontal=?5?   5   .  5?   .   ?? $	??372??65   ??6A   ?? *MarkAllAsReadCommand+.??5?   2   ?  5?   6   ?? 5?   :   $
??auto ?6K   ?? 5?   :   .+?5?   6   
  $??0??5?   9   $??0,0,4,0q?5?   9   $ Check=?5   9   ?? 5  6   $??1??5  9   $??SemiBold"?5  9   $-??'Đánh dấu là tất cả đã đọc??5  9   5  3   5  /   5  +   5  '   5
  #   ?? 5  "   $??1??6/   $??Visible=?6<   .??5  &   ?? ??63   ?? *CardsInBadge+$ PropertyChanged=?" ?? Mode$" TwoWay=???5  *   ?? 5  .   .R?5  2   ?? $??8,8,0,8q?6=   5  /   ??5  *   ?? 5  .   .R?5  2   :   4StudentManagement.Components.NotificationCardInBarge  $	??360??5  5   $??80??5  5   $??0q?5  5   $??0q?5  5   5  /   5  '   5  #   5     5     5      5"     5#     ?? 5$     $??2??5%     $??40??5&     $??40??5'     $??Right=?5(     
 ?????
?????? #??[
 5+     # ? ToolTip$(# "MaterialDesignIconForegroundButton??5,     .??5-     
  $??24??5.     $??24??5/     
???   ?$ ChevronDown=?51     52     53     54     56     