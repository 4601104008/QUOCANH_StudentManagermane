   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5
      9    3StudentManagement.Components.ShowDetailNotification   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      6local*clr-namespace:StudentManagement.Components  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      1utils%clr-namespace:StudentManagement.Utils  5
      -   5          >?Name$  CreatePostNewFeedUC??5         Transparent#???   5      .??5      ??   
Background#???  6    ?? CornerRadius$ 15??67    J? Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q?5         Opacity$	 0.3Q?5         ShadowDepth$ 0Q?5         Color$ DarkGray??5      ._?5   
   ?  ? RowDefinitions 5      ?? 5      $
??1.5* ?6    ?? 5      $??4* ?6    ?? 5      $??* ?6    .+?5      ?? $??0??6   .+?5      ]? .+?5       A? $??40??5!      $??40??5"      $??16,16,16,16q?5#      $	??Top=?5$      ??5%      ?? 5&        DefaultUserAvatar ?? ImageSource# ?  6)   	 j? Stretch$	 Uniform=?6[   5(      ?? 5*      $	??480??5+      $??Center=?5,      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Chủ đề thông báo??5-      /  )MaterialDesignThemes.Wpf.ValidationAssist   
Background
 ???? $??24(?5/      $
??Bold"?50       ?? MaxLines$ 1??52       ?? TextWrapping$
 Wrap=?54      {?51      ?? *
IsEnable+??53      ?? *Topic+ ?? TargetNullValue$
 true?? ?? UpdateSourceTrigger$ PropertyChanged=?.??54   -   ??55      ?? 56        MaterialDesignTextBox ?? BasedOn# [ 6$    ?? 
TargetType" ??6U    ?? Triggers 57   "   P? 58   &    P? Property ?@=?HasError P? Value . . ?59   *   ??  ?? Property ?@ 
Foreground & "MaterialDesignValidationErrorBrush ?? Value# ?  6a   5:   '   5<      .??5=   )   5>      '  !MaterialDesignThemes.Wpf.PopupBox  5@      $??60??5A      $??2,0,2,0q?5B      $??Right=?5C      ??5D      ?? 5E      "  6$    5F   "   ?? 5G   &    ?? Binding 62   ?? *IdUser+  
UserInfoVM ?? Source# [  ?? 	Converter 1   +StudentManagement.Utils.CheckAdminConverter   ?? Value	 false6?   .a?5H   *   ??  ? y?$ 	Collapsed=?6G   5I   '   5L         PopupContent. 5N      ?? .+?5O      ?? $??Chỉnh sửa??6x   ??6%   ?? *IsEditNotificationCommand+$ PropertyChanged=?6x   ?? 5P      $
??Xoá??6%   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5Q   "   +  %Microsoft.Xaml.Behaviors.EventTrigger  5R   &      	EventName$ Click??65   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5S   *   2	  ,Microsoft.Xaml.Behaviors.InvokeCommandAction	   	  Command 6@   ?? *DeleteNotificationCommand+	  5T   *   )
  #MaterialDesignThemes.Wpf.DialogHost  
  CloseDialogCommand# Z  6@   5U   '   5W      5X      5Y      5[      ?? 5]      $??	16,4,16,4q?6   ! ?? Orientation$! 
Horizontal=?60   .+?5^      '  !MaterialDesignThemes.Wpf.PackIcon  $??0,0,4,0q?6.   "   Kind$" Earth=?6?   ?? 5_      $??0,0,16,0q?5`       ! MaterialDesignButtonTextBlock#??[ 5a      ??5b      ?? *CurrentCard.Time+# ?? StringFormat$# 
dd/MM/yyyy?? /   )StudentManagement.Utils.DateTimeConverter  ?? 5c      $??0,0,4,0q?5d      #??[ 5e      ??5f      ?? *CurrentCard.Type+5h      5i      ?? 5k      $??1??5l      $
??auto??5m      $??40??5n      $??	16,8,16,8q?5o      $??16q?5p      $
 Nội dung thông báo???5q      $   
IsFloating$ .  .  (MaterialDesignThemes.Wpf.TextFieldAssist%   TextFieldCornerRadius$% 10??5s      &   UnderlineBrush
& ?????
 ???? ' ?? AcceptsReturn' . ( ?? 
AcceptsTab( . 
???????$??Right=?5y      $??16(?5z      $) ?? HorizontalScrollBarVisibility$) Disabled=?5{      $
 Wrap=?5~      "* ?? VerticalScrollBarVisibility$
* auto=?5      {?5|      ?? *
IsEnable+??5}      ?? *	Content+$
 true??$ PropertyChanged=?.??5   4   ??5?      ?? 5?       ! MaterialDesignOutlinedTextBox# [ 6   " ??6U    5?      P? 5?       ?@=?HasError . . ?5?   "   ??  ?@ 
Foreground# ?  6Y   5?      5?      .??5?   !   5?      ? 5?      $??2??6   .+?5?      ? + ? ColumnDefinitions+ 5?      ?? 5?      $??2* ?6+   ?? 5?      $
??1.5* ?6+   .+?5?      ? $??1??6   ??5?      ?? 5?      " ?6$    5?   "   ?? 5?   &    62   ?? *
IsEnable+$ PropertyChanged=? true6t   .a?5?   *   ??  ? y?$ Visible=?6G   5?   '   ?? 5?   &    62   ?? *
IsEnable+$ PropertyChanged=?	 false6t   .a?5?   *   ??  ? y?$ 	Collapsed=?6G   5?   '   5?      + 5?      ?? 5?      $??* ?6/   ?? 5?      $??* ?6/   .+?5?      ?? $??0??5?      $??0,0,16,0q?5?      $??Stretch=?5?      $??Cập nhật??5?      ??5?      ?? 5?   "     PrimaryButton# [ 6(   " ??6Q   .?5?   &   ??  ? {? .  6B    5?   &   ^? 5?   *   , ^? 
Conditions, 5?   .   ?? 5?   2   - ?? Binding- 6<   ?? *Topic+$ PropertyChanged=? -   'StudentManagement.Utils.IsNullConverter  . ?? Value	. False6?   ?? 5?   2   - 6<   ?? *	Content+$ PropertyChanged=?   	. False6?   .0?5?   .   ??  ? {? . 6J   5?   +   5?   #   / =? ErrorTemplate/ 5?      ?? 5?   "    5?        5?   "   $ Click??61   . 5?   &   	   6<   ?? *EditNotificationCommand+5?   #   5?      ?? 5?      $??1??5?      $??0,0,16,0q?5?      $??Stretch=?5?      
???  ??$??Huỷ??5?      #??[ 5?      ??5?      ?? *CancelEditCommand+5?      5?      5?      5?      5?      5?      5?      