   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5
      9    3StudentManagement.Components.OverviewScoreboardCard   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      6local*clr-namespace:StudentManagement.Components  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      1utils%clr-namespace:StudentManagement.Utils  5
         Transparent#???   5        ? 	Resources  5        ProgressBarStyle1 ?? 
TargetType ?? Property  PrimaryHueDarkBrush ?? Value  PrimaryHueLightBrush ?? 
TargetType ? 	Resources  Key ?? 
TargetName ?? TargetProperty	 W? To	 g? Duration9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O? KeyTime O? Value ?Name J? Opacity J? RenderTransformOrigin ?? ScaleX ?? ScaleY ?? CornerRadius ??Name ?? RadiusX ?? RadiusY'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g? RepeatBehavior8  2System.Windows.Media.Animation.EasingPointKeyFrame $? KeyTime $? Value ?? Triggers/  )MaterialDesignThemes.Wpf.TransitionAssist P? Property P? Value N? EnterActions ??Name  N? ExitActions! ?? BeginStoryboardName" ]? 
Conditions# ?? Property$ ?? Value% ?? Angle& ?? 
TargetName??%?  &	       ?? 5   
   " ?6*   .?5      ??  ? ??# ?  6+   ?? 5       ? ??# ?  6+   ?? 5       ? ??# ?  6,   ?? 5       ? ??$ 1q?60   ?? 5       ? ??$ 4??6'   ?? 5       ? ?? 5      ?? 5      " ?6&    5      ???? 5      OnLoadedNoAnimation .??5   "   W? $ TemplateRoot??5   %   $ (UIElement.Opacity)?5   %   $ 1X?5   %   $	 0D?5   %   W? 5    "   $ TemplateRoot??5!   %   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)?5"   %   $ 1X?5#   %   $	 0D?5$   %   W? 5%   "   $ TemplateRoot??5&   %   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)?5'   %   $ 1X?5(   %   $	 0D?5)   %   5*      ?? 5+      OnLoaded .??5,   "   U? $ TemplateRoot??6@   $ (UIElement.Opacity)?6e   .\?5-   &     $
 0??6;   $ 0Q?6G     5.   &   $
 0:0:1??6;   $ 1Q?6K   5/   #   U? 50   "   $ TemplateRoot??6@   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)?6e   .\?51   &     $
 0??6;   $ 0Q?6G     52   &   $
 0:0:1??6;   $ 1Q?6K   53   #   U? 54   "   $ TemplateRoot??6@   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)?6e   .\?55   &     $
 0??6;   $ 0Q?6G     56   &   $
 0:0:1??6;   $ 1Q?6K   57   #   58      59      .R?5:      ? $ TemplateRoot??5;      $ 0Q?5<      $ 0,0.5&?5=      z?5>      V? 5?   "   .~?5@   &   ?? $ 0Q?65   $ 0Q?6@   ?? 5A   &   ?? 5B   &   T? 5C   &   5D   #   .+?5F      ?? #??z??5G   !   #??z??5H   !   #??z??5I   !   $ 5??5J   !   ?? 5K      $ 
PART_Track??6(   ? 5L      $ PART_Indicator??5M   !   $
??Left=?5N   !   }?. .+?5P   "   ?? $ 	Indicator??5Q   %   #??z??5R   %   $ 5??5S   %   $ 5??5T   %   ?? 5U   "   $ 	Animation??5V   %   #??z??5W   %   $ 5??5X   %   $ 5??5Y   %   $ 0.5,0.5&?5Z   %   z?5[   &   V? 5\   *   .~?5]   .   ?? ?? 5^   .   ?? 5_   .   T? 5`   .   5a   +   5c   #   5d       5e        5f   "   CommonStates??. 5g   &     Determinate??62     5h   &   Indeterminate??. 5i   *   ?? $ Forever??65   .??5j   .   U? $ 	Animation??6L   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)?6n   .\?5k   2     $
 0??6G   $
 0.25Q?6S     5l   2   $
 0:0:1??6G   $
 0.25Q?6W     5m   2   $
 0:0:2??6G   $
 0.25Q?6W   5n   /   *? 5o   .   $ 	Animation??6K   $' !(UIElement.RenderTransformOrigin)?6m   .'?5p   2     $ 0??6F   $ -0.5,0.5&?6R     5q   2   $ 0:0:1??6F   $ 0.5,0.5&?6V     5r   2   $ 0:0:2??6F   $ 1.5,0.5&?6V   5s   /   5t   +   5u   '   5v   #   5x       5y      P? 5z       ?@ DisableTransitions .  5{   "   ?? 5|   &   $( "BeginStoryboardOnLoadedNoAnimation??66   .??5}   *   ?? .??5~   .   W? $ TemplateRoot??5   1   $ (UIElement.Opacity)?5?   1   $ 1X?5?   1   $	 0D?5?   1   W? 5?   .   $ TemplateRoot??5?   1   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)?5?   1   $ 1X?5?   1   $	 0D?5?   1   W? 5?   .   $ TemplateRoot??5?   1   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)?5?   1   $ 1X?5?   1   $	 0D?5?   1   5?   +   5?   '     5?   "   ?? 5?   &   $(! "BeginStoryboardOnLoadedNoAnimation??67   5?      ]? 5?      " 5?   "   ?? 5?   &   # ?@J?	IsVisible$ . 6E   ?? 5?   &   # ?@ DisableTransitions$ .  6n    5?   "   ?? 5?   &   $ BeginStoryboardOnLoaded??66   .??5?   *   ?? .??5?   .   U? $ TemplateRoot??6L   $ (UIElement.Opacity)?6q   .\?5?   2     $
 0??6G    06S     5?   2   $
 0:0:1??6G    16W   5?   /   U? 5?   .   $ TemplateRoot??6L   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)?6q   .\?5?   2     $
 0??6G    06S     5?   2   $
 0:0:1??6G    16W   5?   /   U? 5?   .   $ TemplateRoot??6L   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)?6q   .\?5?   2     $
 0??6G    06S     5?   2   $
 0:0:1??6G    16W   5?   /   5?   +   5?   '     5?   "   ?? 5?   &   $! BeginStoryboardOnLoaded??67   5?      P? 5?       ?@?Orientation$ Vertical=?6=   . ?5?   "   ??  ?@?LayoutTransform 5?   &   ?? 5?   *   $	% -90Q?6:   5?   #   5?      P? 5?       ?@?IsIndeterminate . . ?5?   "   ?? $& 	Indicator??6)    ? y?$ 	Collapsed=?6V   5?      5?      5?      5?      5?      .??5?      #  MaterialDesignThemes.Wpf.Card  '   UniformCornerRadius$' 8Q?6   
?????? $??16q?6K   .??5?   
   ? ( ? ColumnDefinitions( 5?      ?? 5?      $??* ?6#   ?? 5?      $??* ?6#   .+?5?      ?? $??0??6   $??Center=?6)   .+?5?      ? $??10,10,10,10q?6     text_grid_item#??[ 6,   ) ? RowDefinitions) 5?      ?? 5?      ?? 5?      .+?5?      ? $??1??5?      $??10??5?      $??4,0,0,0q?5?      
???????
???????#???  5?      ??5?      ?? *
GPAColor+* ? Value* 5?      ?? *
PercentGPA+?? 5?      $??0??5?      $??15(?5?      $
??Bold"?5?        textblock_item#??[ 5?      + ?? TextAlignment$
+ Left=?5?      ?? 5?      $$?Điểm trung bình tích lũy??6    ?? 5?      ?6   ?? *GPA+5?      5?      ? 5?      $??10,10,10,10q?6   #??[ 6,   ) 5?      ?? 5?      ?? 5?      .+?5?      ? $??1??5?      $??10??5?      $??4,0,0,0q?5?      
???????
???????#???  5?      ??5?      ?? *TrainingColor+* 5?      ?? *PercentTraining+?? 5?      $??0??5?      $??15(?5?      $
??Bold"?5?      #??[ 5?      $
+ Left=?5?      ?? 5?      $&? Trung bình điểm rèn luyện??6    ?? 5?      ?6   ?? *
Training+5?      5?      ? 5?      $??10,10,10,10q?6   #??[ 6,   ) 5?      ?? 5?      ?? 5?      .+?5     ? $??1??5     $??10??5     $??4,0,0,0q?5     
???????
???????#???  5	     ??5     ?? *CreditColor+* 5
     ?? *PercentCredit+?? 5     $??0??5     $??15(?5     $
??Bold"?5     #??[ 5     $
+ Left=?5     ?? 5     $?Tổng số tín chỉ??6    ?? 5     ?6   ?? *Credit+5     5     5     ?? 5     $??1??5     $??Center=?5     $??Center=?5     .+?5     A? $	??140??5     $	??140??5     $??20,16,20,16q?5     $
??Left=?5       DarkGray#??[ 5      $??2??5!     ??5"     ?? 5#     , ?? ImageSource$, https://picsum.photos/200??6%   - j? Stretch$- UniformToFill=?6M   5%     ?? 5'     $??Center=?5(     $
??Bold"?5)      $  MaterialDesignHeadline6TextBlock#??[ 5*     ??5+     ?? *DisplayName+. ?? FallbackValue$. Lê Hữu Trung??5-     5.     52     53     