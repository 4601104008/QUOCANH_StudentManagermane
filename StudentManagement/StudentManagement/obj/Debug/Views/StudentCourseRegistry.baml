   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.ViewsStudentManagement.Views  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5      A%clr-namespace:StudentManagement.ViewsStudentManagement.Views  5      3    -StudentManagement.Views.StudentCourseRegistry   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @	component*clr-namespace:StudentManagement.Components     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:StudentManagement.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      H DMathConverter, Version=1.2.1.6, Culture=neutral, PublicKeyToken=null(mathhttp://hexinnovation.com/math  5	      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5
      1utils%clr-namespace:StudentManagement.Utils  5      1views%clr-namespace:StudentManagement.Views  5      -   5          >?Name$  StudentCRUserControl??5         CenterColumn#??[  5        MaterialDesignFont#???  5      $??13(?5      $??Regular"?5        MaterialDesignBody#???  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5       ? 	Resources 5      !  HexInnovation.MathConverter  math??%   &	         5   
   6   5      .??5      ? -   5         ?Name$ MainGrid??5       ? RowDefinitions 5   
   ?? 5      $	??55* ?6   ?? 5      $	??45* ?6   .+?5    
   ?? $??0??6    K? ZIndex$ 1??6"   .+?5!      ?? $??45??5"      $??45??5#      $??	0,16,16,0q?5$      $??Right=?5%      3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IndicatorBackground
 ????    IsIndeterminate . 	   Value$	 -1Q?5)      +  %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth0=?5*        PrimaryMain#???  5+      
??????? + 'MaterialDesignFloatingActionLightButton#??[ 5.         IsIndicatorVisible 5(      ?? *InLoadingCourseRegistries+??5,      ?? *SynchronizeCourseRegistry+.??50      '  !MaterialDesignThemes.Wpf.PackIcon  $??24??6*   $??24??65   ??51      ?? 52       ?? BasedOn# [B 6     ?? 
TargetType"  6\   .?53      ??  ?? Property ?@ Kind ?? Value$ 	CloudSync=?65    ?? Triggers 54      ?? 55   "    ?? Binding 6.   ?? *IsSaveComplete+ ?? Value True6Q   .a?56   &   ??  ?@ Kind$ Check=?6=    N? EnterActions 57   &   ?? 58   *   .??59   .   ?? .??5:   2   W?  ?? TargetProperty$ Opacity?5;   5    W? From$ 0X?5<   5   	 W? To$ 1X?5=   5    g? Duration$ 0:0:0.8D?5>   5   5?   /   5@   +   5B   #   5D      5F      5G      ?? 5H      $??8,8,16,8q?5I      $??Right=?5J      $	??Top=?5K      ??5L      `? 5M       `? 	Converter# [ 6#    `? ConverterParameter$ format("{0}, {1}", x, y)??6E   .1?5N      ??  ?? Path$ CurrentSemester.Batch?6"   ?? 5O      $! CurrentSemester.DisplayName?6"   5P      5R      5S      #  MaterialDesignThemes.Wpf.Card  5U   
   $??0??5V      $??0,0,0,16q?5W        CardContainer#??[ 5X      .??5Y      ]? ??. .+?5[      ?? $??10q?5\      $??Right=?5]      $??Bottom=?5^      $??Bottom=?5_      ?? 5`      $'?!Số tín chỉ đã đăng ký: ??5a       ?? 5b      ?5c      ?? *TotalCredit+ ?? FallbackValue$ 0??5d      ?? 5e      $	??Top=?6   .+?5f      ?? $??0q?5g      $
??Left=?5h      
??????  ) %MaterialDesignNavigatilRailTabControl#??[ 5j       ?? TabStripPlacement$	 Top=?5k      .@?5m      ?? $??4q?6"   ??5n      ?? 5o   "   $
??auto??6-   $
??auto??6:   .+?5p   &     $??24??5q   )   $??24??5r   )   $??Center=?5s   )      Kind$ ViewListOutline=?5t   )   ?? 5u   &   $??Center=?60   $??
Danh sách??6M   5v   #   .??5y      ? -   5        $ RegisteredGrid??5y   #   $??1??6;    5z   "   ?? 5{   &   $
??auto ?64   ?? 5|   &   $??* ?64   ?? 5}   &   $
??auto ?64   .+?5   "   ? $??0??6'    ? ColumnDefinitions 5?   &   ?? 5?   *   $
??auto ?6;   ?? 5?   *   $??* ?6;   .+?5?   &   ?? $??0??5?   )   $??16,0,0,0q?5?   )   $??Center=?5?   )   $??24(?5?   )   $
??Bold"?5?   )    $  MaterialDesignHeadline5TextBlock#??[ 5?   )   $ ??Danh sách đã đăng ký??5?   )   ?? 5?   &   $??1??5?   )   $	??120??5?   )   $??40??5?   )   $??16,16,16,16q?5?   )   $??Right=?5?   )   $??Center=?5?   )   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 8??5?   )   ???	#FFF24726
?????? $??Hủy đăng ký??5?   )    	 PrimaryButton#??[	 5?   )   ??5?   )   ?? *UnregisterCommand+5?   )   5?   #   :   4StudentManagement.Components.SubjectRegistryDataGrid  5?   "   $??1??5?   %   $	??160??5?   %   ??5?   %   ??   ?? ElementName$  MainGrid??$ Width?!   Data! 5?   %   ?? *CourseRegistryItems1+" ?? Mode$" TwoWay=?# ?? UpdateSourceTrigger$# PropertyChanged=?$ ? DataContext$ 5?   %   ?? $  MainGrid??$ DataContext?%   IsAllItemsSelected% 5?   %   ?? *IsAllItemsSelected1+$" TwoWay=?$# PropertyChanged=?
& ? Tag& 5?   %   ?? *SelectedItem+$" OneWayToSource=? '
 #StudentCourseRegistryRightSideBarVM' ?? Source#' [
 5?      5?      ?? 5?      ??5?      ?? 5?   "   $
??auto??6-   $
??auto??6:   .+?5?   &     $??24??5?   )   $??24??5?   )   $??Center=?5?   )   $ 
TableLarge=?5?   )   ?? 5?   &   $??Center=?60   $	??TKB??6M   5?   #   .??5?      ? .+?5?   "   0	   *StudentManagement.Components.ScheduleTable	  $??8q?6:   & 6E   ?? *ScheduleItemsRegistered+5?      5?      5?      5?      5?      5?        5?   
   $??1??5?      $??0,8,0,0q?5?      #??[ 5?      .??5?      ? $??3??6    5?      ?? 5?      $
??auto ?6$   ?? 5?      $
??auto ?6$   ?? 5?      $??* ?6$   .+?5?      ? $??0??6    5?      ?? 5?      $
??auto ?6+   ?? 5?      $??* ?6+   .+?5?      ?? $??0??5?      $??16,0,0,0q?5?      $??Center=?5?      $??24(?5?      $
??Bold"?5?      #??[ 5?      $!??Danh sách chưa đăng ký??5?      ?? 5?      $??1??5?      $	??120??5?      $??40??5?      $??16,16,16,16q?5?      $??Right=?5?      $??Center=?5?      $ 8??5?      ???#8FD14F
?????? $??
Đăng ký??5?      #??[	 5?      ??5?      ?? *RegisterCommand+5?      5?      ? 5?      $??1??6   .+?5?      /
   )StudentManagement.Components.SearchBarOne
  $
??16,0q?5?      ( 
  DatePickerVisibility( .  ) 
  FirstSearchButtonText$) 	Mã lớp??5?      * 
  SecondSearchButtonText$* Tên lớp học??5?      !+ 
  IsFirstSearchButtonEnabled+ 5?      ?? *IsFirstSearchButtonEnabled+, 
  SearchCommand, 5?      ?? *SearchCommand+- 
  SearchQuery- 5?      ?? *SearchQuery+$" TwoWay=?$# PropertyChanged=?. 
  SwitchSearchButton. 5?      ?? *SwitchSearchButtonCommand+5?        5?      $??2??5?      /   IsCatchEditEvent/ . ! 5?      ?? *CourseRegistryItems2Display+$" TwoWay=?$# PropertyChanged=?$ 5?      ?? $  MainGrid??$ DataContext?% 5?      ?? *IsAllItemsSelected2+$# PropertyChanged=?$" TwoWay=?& 5?      ?? *SelectedItem+$" OneWayToSource=?#' [
 ? 5?      $??2??6   $??Bottom=?6$    5?      ?? 5?      ?? 5?      $
??auto ?6+   ?? 5?      5     5     5     5     5     