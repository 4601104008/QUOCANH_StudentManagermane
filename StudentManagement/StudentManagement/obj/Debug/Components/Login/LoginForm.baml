   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5      ,    &StudentManagement.Components.LoginForm   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      6local*clr-namespace:StudentManagement.Components  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      0sys&clr-namespace:System;assembly=mscorlib  5
      1utils%clr-namespace:StudentManagement.Utils  5      -   5        $??LoginFormUC??5      
?????? $??16(?5        J? InputBindings  5      ?? 5   
   
 ?? Key$ Enter??6    ?? Command 6!   ?? *GotoLayoutViewCommand+ 
  MainVM ?? Source# [  .??5      ?? 
??????? ?? CornerRadius$ 10??6     J? Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 8Q?5         Opacity$	 0.6Q?5         ShadowDepth$ 0Q?5      	   Color$
	 Gray??5      ._?5   
   ? 
 ? RowDefinitions
 5      ?? 5       $??* ?6    ?? 5!      $
??auto ?6    ?? 5"      $
??auto ?6    ?? 5#      $
??auto ?6    ?? 5$      $
??auto ?6    .+?5'      ? $??0??6   
 5(      ?? 5)      ?? 5*      .+?5,      ?? $??
28,28,28,0q?6     Logo#??[ 6,   ?? 5-      $??1??5.      $??	28,5,28,0q?5/      $??Center=?50      $??Center=?51      $??28(?52      $
??Bold"?53      $??ĐĂNG NHẬP??54      55      ?? 57      $??1??58      $??28,16q?59      $??Center=?5:      )  #MaterialDesignThemes.Wpf.HintAssist   
Background
 ?????   Hint$ Tên đăng nhập??5<         HintOpacity$	 0.5Q?5=      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=?5>      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .    HasLeadingIcon .    LeadingIcon$ Account=?5A         TextFieldCornerRadius$ 20??5B      /  )MaterialDesignThemes.Wpf.ValidationAssist   
Background
 ?????$??16(?5D      ??5E      ?? *
Username+ ?? UpdateSourceTrigger$ PropertyChanged=? ?? Mode$ TwoWay=?.??6]   ??5F      ?? 5G       ! MaterialDesignOutlinedTextBox ?? BasedOn# [ 6    ?? 
TargetType" ??6U    ?? Triggers 5H      P? 5I       P? Property ?@=?HasError P? Value . . ?5J   "   ??  ?? Property ?@ 
Foreground & "MaterialDesignValidationErrorBrush ?? Value# ?  6Y   5K      5M      .??5N   !   5O      G? 5Q      $??2??5R      $??28,16q?5S      $??Center=?5T      $ Mật khẩu??5V      $	 0.5Q?5W      $ Depth2=?5X       .  .    HasTrailingIcon . $
 Lock=?5\      $ 20??5]         TrailingIcon$	 Eye=?5^      
 ?????$??16(?5`      4   .StudentManagement.Components.PasswordBoxHelper   Password 5U      ?? *
Password+$ PropertyChanged=?$ TwoWay=???5a      ?? 5b       + 'MaterialDesignOutlinedPasswordBoxCustom# [ 6   " G?6_    5c      P? 5d       ?@=?HasError . . ?5e   "   ??  ?@ 
Foreground# ?  6Y   5f      5h      5j      ]? 5l      $??3??6   $
??28,8q?6%   .+?5m      ?? $??Center=?5n      $??	Ghi nhớ??5o        ? Cursor$
  Hand??5p      $
??Left=?5q      $??SemiBold"?5r      ! d? 	IsChecked! 5s      ?? *IsToRemember+$ OneWayToSource=??? 5t      $??Right=?5u      $??Center=?5v      $??Right=?5w      $??SemiBold"?5x      $??Quên mật khẩu???5y      ??5z      ?? 5{      " ??6    .?5|      ??  ? ??  	ErrorMain# [ 6;    5}      P? 5~   "    ?@J?IsMouseOver . . ?5   &   ??  ?@?Cursor$
 Hand??6?   ?? 5?   &    ? ??  
ErrorLight# [ 6C   5?   #   5?        5?      d? 5?      " d? MouseAction$" 	LeftClicke?6F    6'   ?? *
SwitchView+6F   5?      5?      ?? 5?      $??4??5?      $	??200??5?      $??50??5?      $??28,16q?5?      +  %MaterialDesignThemes.Wpf.ButtonAssist#   CornerRadius$# 20??5?      $??Đăng nhập??5?      $??16(?5?        PrimaryButton#??[ 5?      *  $Microsoft.Xaml.Behaviors.Interaction$   Triggers$ 5?      +	  %Microsoft.Xaml.Behaviors.EventTrigger	  5?      % 	  	EventName$% Click??6%   *
  $Microsoft.Xaml.Behaviors.TriggerBase& 
  Actions.& 5?      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  '   Command' 60   ?? *RememberUserCommand+  5?      ' 60   ?? *GotoLayoutViewCommand+# [  5?      5?      5?      5?      5?      