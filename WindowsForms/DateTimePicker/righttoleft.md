---
layout: post
title: Right to Left Support in Windows Forms DateTimePicker | Syncfusion
description: Learn how to enable right-to-left layout in Windows Forms DateTimePicker control for international language support.
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Right to Left Support in Windows Forms DateTimePicker

`SfDateTimeEdit` control elements can be aligned in right-to-left layout. This control can be laid out from right to left when the [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_RightToLeft) value is set to `Yes`.

{% tabs %}

{% highlight C# %}
using Syncfusion.WinForms.Input;

//Enable the Right to Left

this.dateTimeEdit.RightToLeft = RightToLeft.Yes;

{% endhighlight  %}

{% highlight VB %}
Imports Syncfusion.WinForms.Input

'Enable the Right to Left

Me.dateTimeEdit.RightToLeft = RightToLeft.Yes

{% endhighlight  %}

{% endtabs %}

![Right to left support](righttoleft-images/lefttoright.png)

## Change drop-down calendar alignment

The `SfDateTimeEdit` allows you to change the drop-down opening side of the calendar relative to the control. The [DropDownPopupAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DropDownPopupAlignment) of the SfDateTimeEdit can be used to change the alignment of the calendar.

{% tabs %}

{% highlight C# %}
using Syncfusion.WinForms.Input;

//Setting Left Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Left;

//Setting Right Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Right;

{% endhighlight  %}

{% highlight VB %}
Imports Syncfusion.WinForms.Input

'Setting Left Popup alignment

Me.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Left

'Setting Right Popup alignment

Me.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Right

{% endhighlight  %}

{% endtabs %} 

![Change drop down calendar alignment](appearance-images/popupalignment.png)
