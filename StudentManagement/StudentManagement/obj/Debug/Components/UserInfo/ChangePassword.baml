   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5
      1    +StudentManagement.Components.ChangePassword   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      6local*clr-namespace:StudentManagement.Components  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      1utils%clr-namespace:StudentManagement.Utils  5
      -   5          >?Name$  CreateNewInfoItem??5         Transparent#???   5      .??5      ??   
Background#???  6    ?? CornerRadius$ 15??67    J? Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q?5         Opacity$	 0.3Q?5         ShadowDepth$ 0Q?5         Color$ DarkGray??5      ._?5   
   ?  ? RowDefinitions 5      ?? 5      $??5* ?6    ?? 5      $??* ?6    .+?5      ?? $??0??6   .+?5      ?? $
??16,4q?5       $??SemiBold"?5!       $  MaterialDesignHeadline5TextBlock#??[ 5"      $??Thay đổi mật khẩu??5#      ? 5$      $
??16,8q?6    ? ColumnDefinitions 5%      ?? 5&      $
??0.6* ?6+   ?? 5'      $
??1.2* ?6+   .+?5*      ? $??0??6   .+?5+      ?? $
??0,20q?5,      $??Stretch=?5-      $	??Top=?5.      $??16(?5/      $??SemiBold"?50      $??Mật khẩu hiện tại??51      52      ? 53      $??1??6   .+?54      G? $??Center=?55      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Mật khẩu hiện tại??57      .  (MaterialDesignThemes.Wpf.TextFieldAssist
   LeadingIcon$

 Lock=?58         TextFieldCornerRadius$ 8??59         TrailingIcon$	 Eye=?5:      /  )MaterialDesignThemes.Wpf.ValidationAssist   
Background
 ????    
IsFloating .  $??SemiBold"?5=      4   .StudentManagement.Components.PasswordBoxHelper   Password 56      ?? *
Password+ ?? UpdateSourceTrigger$ PropertyChanged=? ?? Mode$ TwoWay=???5>      ?? 5?   "    + 'MaterialDesignOutlinedPasswordBoxCustom ?? BasedOn# [ 6(    ?? 
TargetType" G?6k    ?? Triggers 5@   &   P? 5A   *    P? Property ?@=?HasError P? Value . . ?5B   .   ??  ?? Property ?@ 
Foreground & "MaterialDesignValidationErrorBrush ?? Value# ?  6e   5C   +   5E   #   5G      5L      5M      ? 5N      $
??16,8q?6    5O      ?? 5P      $
??0.6* ?6+   ?? 5Q      $
??1.2* ?6+   .+?5T      ? $??0??6   .+?5U      ?? $
??0,20q?5V      $??Stretch=?5W      $	??Top=?5X      $??16(?5Y      $??SemiBold"?5Z      $??Mật khẩu mới??5[      5\      ? 5]      $??1??6   .+?5^      G? $??Center=?5_      $	 Mật khẩu hiện tại??5a      $

 Lock=?5b      $ 8??5c      $	 Eye=?5d       .  
 ???? $??SemiBold"?5g       5`      ?? *NewPassWord+$ PropertyChanged=?$ TwoWay=???5h      ?? 5i   "   # [ 6(   " G?6k    5j   &   P? 5k   *    ?@=?HasError . . ?5l   .   ??  ?@ 
Foreground# ?  6e   5m   +   5o   #   5q      5r      5s      ? 5t      $
??16,8q?6    5u      ?? 5v      $
??0.6* ?6+   ?? 5w      $
??1.2* ?6+   .+?5y      ? $??0??6   .+?5z      ?? $??Stretch=?5{      $??Center=?5|      $??16(?5}      $??SemiBold"?5~      $%??Nhập lại mật khẩu mới??5      5?      ? 5?      $??1??6   .+?5?      G? $??Center=?5?      $	 Mật khẩu hiện tại??5?      $

 Lock=?5?       .  $ 8??5?      $	 Eye=?5?      
 ???? $??SemiBold"?5?       5?      ?? *ReNewPassWord+$ PropertyChanged=?$ TwoWay=???5?      ?? 5?   "   # [ 6(   " G?6k    5?   &   P? 5?   *    ?@=?HasError . . ?5?   .   ??  ?@ 
Foreground# ?  6e   5?   +   5?   #   5?      5?      5?      5?      ? 5?      $??1??6    5?      ?? 5?      $??2* ?6'   ?? 5?      $??* ?6'   .+?5?      ? $??1??6   $	??0,8q?6'    5?      ?? 5?      ?? 5?      .+?5?      ?? $??0??5?      $??0,0,16,0q?5?      $??Stretch=?5?      $
??Lưu??5?        PrimaryButton#??[ 5?      ??5?      ?? *ConFirmCommand+5?      ?? 5?      $??1??5?      $??0,0,16,0q?5?      $??Stretch=?5?      
???  ??$??Huỷ??5?      #??[ 5?      ??5?      ?? *CancelCommand+5?      5?      5?      5?      5?      5?      