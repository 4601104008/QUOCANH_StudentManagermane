   M S B A M L   `   `   `  ????L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5      2    ,StudentManagement.Components.CreateNewCourse   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      6local*clr-namespace:StudentManagement.Components  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      H DMathConverter, Version=1.2.1.6, Culture=neutral, PublicKeyToken=null(mathhttp://hexinnovation.com/math  5	      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5
      1utils%clr-namespace:StudentManagement.Utils  5      -   5          >?Name$  	NewCourse??5         Transparent#???   5       ? 	Resources 5      !  HexInnovation.MathConverter  math??%   &	         5   
   6   5      .??5      ??   
Background#???  6    ?? CornerRadius$ 15??67    J? Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q?5         Opacity$	 0.3Q?5         ShadowDepth$ 0Q?5         Color$ DarkGray??5      ._?5   
   ?  ? RowDefinitions 5      ?? 5      $
??auto ?6    ?? 5      $
??auto ?6    .+?5!      ]? $??0??6     AttentionToActionBrush#??[ 6%   .+?5"      ?? $??16,8,4,8q?5#      $??Center=?5$      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Chủ đề thông báo??5%      /  )MaterialDesignThemes.Wpf.ValidationAssist
   
Background

 ???? $??24(?5'      $
??Bold"?5(       	 Black#??[ 5)      $??Tạo Lớp Môn Học??5*      $
??Wrap=?5+      5,      ?? 5-      $??1??6   $??Visible=?6(   .??5.      ?? .+?5/      ? $??
16,16,16,4q?6    ? ColumnDefinitions 50      ?? 51      $
??1.5* ?6/   ?? 52      .+?54      ?? $??0??6%   .+?55      ?   text_grid_item#??[ 6#    56   "   ?? 57   &   ?? 58   &   .+?5;   "   ?? $??0??5<   %   $
??Bold"?5=   %     textblock_item#??[ 5>   %   $??
Môn học??5?   %   ?? 5@   "   -   5        $??	cbSubject??5A   %   $??1??5B   %   -  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem . $	 Chọn tên môn học??5D   %     combobox_item#??[ 5G   %   ??5E   %   ?? *
Subjects+ ?? SelectedItem 5F   %   ?? *SelectedSubject+ ?? UpdateSourceTrigger$ PropertyChanged=???5H   &   ?? 5I   *   .R?5J   .   ?? ??68   ?? *DisplayName+5K   +   5M   #   5N      ? 5O      #??[ 6#    5P   "   ?? 5Q   &   ?? 5R   &   .+?5U   "   ?? $??0??5V   %   $
??Bold"?5W   %   #??[ 5X   %   $??Hệ đào tạo??5Y   %   ?? 5Z   "   -   5        $
??cbTF??5[   %   $??1??5\   %    . $"	 Chọn tên hệ đào tạo??5^   %   #??[ 5a   %   ??5_   %   ?? *TrainingForms+ 5`   %   ?? *
SelectedTF+$ PropertyChanged=???5b   &   ?? 5c   *   .R?5d   .   ?? ??68   ?? *DisplayName+5e   +   5g   #   5h      ? 5i      #??[ 6#    5j   "   ?? 5k   &   ?? 5l   &   .+?5o   "   ?? $??0??5p   %   $
??Bold"?5q   %   #??[ 5r   %   $??Giảng viên??5s   %   ?? 5t   "   -   5         ??Name$ 	cbTeacher??5u   %   $??1??5v   %    . $	 Chọn giảng viên??5x   %      ClassicMode . #??[ 5|   %   ??5y   %   ?? *
Teachers+ 5z   %   ?? *SelectedTeacher+$ PropertyChanged=???5}   &   ?? 5~   *   .R?5   .   ?? ??68   ?? *User.DisplayName+5?   +   5?   #   5?      ? 5?      #??[ 6#    5?   "   ?? 5?   &   ?? 5?   &   .+?5?   "   ?? $??0??5?   %   $
??Bold"?5?   %   #??[ 5?   %   $??Sĩ số tối đa??5?   %   ?? 5?   "   $??1??5?   %   $&	  Nhập số sinh viên tối đa??5?   %    ?? AcceptsReturn .    textbox_item#??[ 5?   %   ??5?   %   ?? *	MaxNumber+$ PropertyChanged=?5?      ?? 5?      $??0??5?   !   $??8q?5?   !    ?? Padding$ 0,0,0,8q?5?   !   
???????$??1q?5?   !   $ 8??5?   !   ._?5?   "   ?? .+?5?   &   ?? $??0,16,0,8q?5?   )   $??Center=?5?   )   $??28(?5?   )   $??SemiBold"?5?   )   $??Mã lớp môn học??5?   )   ?? 5?   &   $??Center=?5?   )   $??24(?5?   )   $??Italic$?5?   )   
???<?? 	 MaterialDesignTextBox#??[	 5?   )   ??5?   )   ?? *SubjectClassCode+ ?? Mode$ TwoWay=? ?? FallbackValue$ x.x.x??5?   #   5?      5?      ?? 5?      $??2??6%   $??12,0,0,0q?65   .+?5?      ? #??[ 6#    5?   "   ?? 5?   &   ?? 5?   &   .+?5?   "   ?? $??0??5?   %   $
??Bold"?5?   %   #??[ 5?   %   $??Thứ??5?   %   ?? 5?   "   $??1??5?   %    . $	 Chọn thứ??5?   %   #??[ 5?   %   ??5?   %   ?? *
DayOfWeeks+ 5?   %   ?? *SelectedDay+$ PropertyChanged=?5?   %   5?      ? 5?      #??[ 6#    5?   "   ?? 5?   &   ?? 5?   &   .+?5?   "   ?? $??0??5?   %   $
??Bold"?5?   %   #??[ 5?   %   $??Tiết??5?   %   ?? 5?   "   $??1??5?   %   $	 Nhập tiết (Vd: 8910)??5?   %    .  #??[ 5?   %   ??5?   %   ?? *Period+$ PropertyChanged=?$ TwoWay=?5?      ? 5?      #??[ 6#    5?   "   ?? 5?   &   ?? 5?   &   .+?5?   "   ?? $??0??5?   %   $
??Bold"?5?   %   #??[ 5?   %   $??Ngày bắt đầu??5?   %   (  "System.Windows.Controls.DatePicker  5?   "   -   5        $??dpStart??5?   %   $??1??5?   %   $	 Chọn ngày bắt đầu??5?   %    
 datepicker_item#??[
 5?   %      SelectedDate 5?   %   ?? *	StartDate+$ PropertyChanged=?$ TwoWay=?5?   %   5?      ? 5?      #??[ 6#    5?   "   ?? 5?   &   ?? 5?   &   .+?5?   "   ?? $??0??5?   %   $
??Bold"?5?   %   #??[ 5?   %   $??Ngày kết thúc??5?   %     5?   "   -   5        $??dpEnd??5?   %   $??1??5?   %   $	 Chọn ngày kết thúc??5?   %   #??[
 5?   %    5?   %   ?? *	EndDate+$ PropertyChanged=?$ TwoWay=?5?   %   5?      ? 5?      $??
16,32,16,4q?6#    5?   "   ?? 5?   &   ?? 5?   &   $
??auto ?67   .+?5?   "   ?? $??1??5?   %   $??4,0,16,4q?5   %   $??Right=?5  %    ?? Orientation$ 
Horizontal=?5  %   .+?5  &   ?  5  *   ?? 5  .   $??* ?6?   ?? 5  .   $??* ?6?   .+?5  *   ? $??1??6/   .+?5	  .   ?? $ 
Horizontal=?69   .+?5
  2   '  !MaterialDesignThemes.Wpf.PackIcon  $??1??5  5   $??30??5  5   $??30??5  5   $??Center=?5  5   $??Center=?5  5   
??? ? ?   Kind$ Check=?5  5     AutoDecreaseOpacityPackIcon#??[ 5  5   y?5  5   ?? *IsDoneVisible+ ?? 	Converter :   4StudentManagement.Utils.BooleanToVisibilityConverter  ?? 5  2   $??	16,0,16,0q?5  5   $??Stretch=?5  5   $??Thêm??5  5   ??5  6   ?? 5  :     PrimaryButton ?? BasedOn# [ 6@    ?? 
TargetType" ??6i   .?5  >   ??  ?? Property ? {? ?? Value .  6Z    ?? Triggers 5  >   ^? 5  B    ^? 
Conditions 5  F   ?? 5  J    ?? Binding 6T   ?? *SelectedDay+$ PropertyChanged=? -	   'StudentManagement.Utils.IsNullConverter	    ?? Value	  False6?   ?? 5  J    6T   ?? *Period+$ PropertyChanged=? 	  	  False6?   ?? 5   J    6T   ?? *	MaxNumber+$ PropertyChanged=? 	  	  False6?   ?? 5!  J    6T   ?? *SubjectClassCode+$ PropertyChanged=? 	  	  False6?   ?? 5"  J    6T   ?? ! ?? ElementName$! 	cbSubject??" ?? Path$
" Text?$ PropertyChanged=? 	  	  False6?   ?? 5#  J    6T   ?? $
! cbTF??$
" Text?$ PropertyChanged=? 	  	  False6?   ?? 5$  J    6T   ?? *	MaxNumber+$ PropertyChanged=? 0
   *StudentManagement.Utils.IsNumericConverter
    True6?   ?? 5%  J    6T   ?? *Period+$ PropertyChanged=? 
    True6?   ?? 5&  J    6T   ?? $! dpStart??$
" Text?$ PropertyChanged=? 	  	  False6?   ?? 5'  J    6T   ?? $! dpEnd??$
" Text?$ PropertyChanged=? 	  	  False6?   ?? 5(  J    6T   ?? *
CanConfirm+$ PropertyChanged=?  True6?   ?? 5)  J    6T   ?? $! 	cbTeacher??$" SelectedIndex?$ PropertyChanged=?# [ # ?? ConverterParameter$# x==-1??	  False6?   .0?5+  F   ??  ? {? . 6b   5,  C   P? 5-  B   $ P? Property$ ?@=?HasError% P? Value% . . ?5.  F   ??  ?@ 
Background
 ???? 6?   5/  C   51  ;   & =? ErrorTemplate& 53  6   ?? 54  :   *  $Microsoft.Xaml.Behaviors.Interaction'   Triggers' 56  6   +  %Microsoft.Xaml.Behaviors.EventTrigger  57  :   (   	EventName$( Click??6I   *  $Microsoft.Xaml.Behaviors.TriggerBase)   Actions.) 58  >   2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  *   Command* 6T   ?? *ConfirmCommand+5:  ;   5<  3   ?? 5>  2   $??Stretch=?5?  5   
???  ??)  #MaterialDesignThemes.Wpf.DialogHost+   CloseDialogCommand#??Z+ 5A  5   $??Huỷ??5B  5   #??[ 5C  5   5D  /   5E  +   5F  '   5G  #   5H     5I     5J     5M     5O     5Q     5R     5S     