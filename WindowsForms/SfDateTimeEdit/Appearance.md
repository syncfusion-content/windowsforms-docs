---
layout: post
title: Customization of SfDateTimeEdit control for Windows Forms
description: Customize the visibility of UpDown Button, Key Navigation Support and DropDown Popup alignment
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Customization

## Change visibility of UpDown

UpDown allows to change the value Mouse interaction and it also allows to increment or decrement the values of date, month and year when change the value by clicking Up and Down buttons. This value change by Up and Down buttons are only applicable when `DateTimeEditingMode` is Mask. Visibility of UpDown buttons can be changed by `ShowUpDown` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Enable the UpDown Button

this.dateTimeEdit.ShowUpDown = true;

//Disable the UpDown Button

this.dateTimeEdit.ShowUpDown = false;

{% endhighlight  %}

{% highlight VB %}

'Enable the UpDown Button

Me.dateTimeEdit.ShowUpDown = true

'Disable the UpDown Button

Me.dateTimeEdit.ShowUpDown = false

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/showupdown.png)

## Customize the DropDown Button

DropDown button in SfDateTimeEdit allows to open the Popup Calendar by Mouse interaction. Visibility of DropDown button can be changed by `ShowDropDown` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Enable the DropDown Button

this.dateTimeEdit.ShowDropDown = true;

//Disable the DropDown Button

this.dateTimeEdit.ShowDropDown = false;

{% endhighlight  %}

{% highlight VB %}

'Enable the DropDown Button

Me.dateTimeEdit.ShowDropDown = true

'Disable the DropDown Button

Me.dateTimeEdit.ShowDropDown = false

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/showdropdown.png)

## Change Dropdown Calendar Size

Size of Dropdown calendar to pick the date for SfDateTimeEdit can be changed `DropDownSize`.

## DropDown Calendar Size customization

Size of the dropdown calendar can be customized by `DropDownSize` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Setting DropDownSize

this.dateTimeEdit.DropDownSize = new Size(294, 293);

this.dateTimeEdit.Width = 294;

{% endhighlight  %}

{% highlight VB %}

'Setting DropDownSize

Me.dateTimeEdit.DropDownSize = New Size(294, 293)

Me.dateTimeEdit.Width = 294

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/dropdownsize.png)

## Customize Calendar

DropDown Calendar of SfDateTimeEdit can be get from `MonthCalendar` property. All the customization with `MonthCalendar` will be reflected in dropdown calendar of SfDateTimeEdit. The below code snippets illustrates how to change the visibility of footer in dropdown calendar of SfDateTimeEdit.

{% tabs %}

{% highlight C# %}

dateTimeEdit.MonthCalendar.ShowFooter = false;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.MonthCalendar.ShowFooter = false

{% endhighlight  %}

{% endtabs %} 

## Customize DateTimeEdit Appearance

BackColor, ForeColor and BorderColor of control can be customized through `VisualStyle` of SfDateTimeEdit. UpDown and Dropdown button of SfDateTimeEdit control also can be customized through `VisualStyle`. The following code snippets illustrates the customization.

{% tabs %}

{% highlight C# %}

sfDateTimeEdit1.VisualStyle.BorderColor = Color.Green;

{% endhighlight  %}

{% highlight VB %}

sfDateTimeEdit1.VisualStyle.BorderColor = Color.Green

{% endhighlight  %}

{% endtabs %} 


