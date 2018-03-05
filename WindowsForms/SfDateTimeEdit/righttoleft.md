---
layout: post
title: Right-To-Left Support of SfDateTimeEdit control for Windows Forms
description: How to render SfDateTimeEdit in Right-To-Left
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Right-to-left

`SfDateTimeEdit` control elements can be aligned in right-to-left layout. This control can be laid out from right to left when the `RightToLeft` value is set to `Yes`. The following code snippets illustrates the same:

{% tabs %}

{% highlight C# %}

//Enable the Right to Left

this.dateTimeEdit.RightToLeft = RightToLeft.Yes;

{% endhighlight  %}

{% highlight VB %}

'Enable the Right to Left

Me.dateTimeEdit.RightToLeft = RightToLeft.Yes

{% endhighlight  %}

{% endtabs %}

![](righttoleft-images/lefttoright.png)

## Change drop-down calendar alignment

The `SfDateTimeEdit` allows you to change the drop-down opening side of the calendar relative to the control. The `DropDownPopupAlignment` of the SfDateTimeEdit can be used to change the alignment of calendar. The following code snippets illustrates how to change the drop-down calendar alignment:

{% tabs %}

{% highlight c# %}

//Setting Left Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Left;

//Setting Right Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Right;

{% endhighlight  %}

{% highlight vb %}

'Setting Left Popup alignment

Me.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Left

'Setting Right Popup alignment

Me.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Right

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/popupalignment.png)