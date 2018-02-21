---
layout: post
title: Right-To-Left Support of SfDateTimeEdit control for Windows Forms
description: How to render SfDateTimeEdit in Right-To-Left
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Right-To-Left

`SfDateTimeEdit` control elements can be aligned in right-to-left layout. This control laid out from right to left when `RightToLeft` value is `Yes`. The following code snippets illustrates the same.

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

## Change Dropdown Calendar Alignment

`SfDateTimeEdit` allows to change the dropdown opening side of Calendar relative to control. `DropDownPopupAlignment` of SfDateTimeEdit can be used to change the alignment of Calendar. The following code snippets illustrates how to change dropdown calendar alignment.

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