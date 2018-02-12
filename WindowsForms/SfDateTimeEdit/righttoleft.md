---
layout: post
title: Right-To-Left Support of SfDateTimeEdit control for Windows Forms
description: How to render SfDateTimeEdit in Right-To-Left
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Right-To-Left

SfDateTimeEdit control elements can be aligned in right-to-left layout. The `RightToLeftLayout` property is used for international applications where the language is written from right to left such as Hebrew or Arabic. SfDateTimeEdit control laid out from right to left when `RightToLeftLayout` is `true` and  `RightToLeft` value is `Yes`. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Enable the Right to Left

this.dateTimeEdit.RightToLeft = RightToLeft.Yes;

this.dateTimeEdit.MonthCalendar.RightToLeftLayout = true;

{% endhighlight  %}

{% highlight VB %}

'Enable the Right to Left

Me.dateTimeEdit.RightToLeft = RightToLeft.Yes

Me.dateTimeEdit.MonthCalendar.RightToLeftLayout = true

{% endhighlight  %}

{% endtabs %}

![](righttoleft-images/lefttoright.png)

## Change Dropdown Calendar Alignment

`SfDateTimeEdit` allows to change the dropdown opening side of Calendar relative to control. `DropDownPopupAlignment` of SfDateTimeEdit can be used to change the alignment of Calendar.The following code snippets illustrates how to change dropdown calendar alignment.

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