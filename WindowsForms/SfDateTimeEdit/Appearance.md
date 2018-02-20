---
layout: post
title: Customization of SfDateTimeEdit control for Windows Forms
description: Customize the visibility of UpDown Button, Key Navigation Support and DropDown Popup alignment
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Customization

Appearance of each and every part in the DateTimeEdit can be customized. SfDateTimeEdit allows to customize the DropDown icon, calendar, updown buttons through `style` properties.

## Customize DateTimeEdit Appearance

BackColor, ForeColor and BorderColor of control can be customized through following `Style` propertiees of SfDateTimeEdit. UpDown and Dropdown button of SfDateTimeEdit control also can be customized through `Style`. 

* BackColor - To change the background color of DateTimeEdit.
* ForeColor - To change the foreground color of date-time text in DateTimeEdit.
* BorderColor - To change the border color of DateTimeEdit.
* DisabledBackColor - To change the border color of DateTimeEdit in disabled or readonly state.
* DisabledForeColor - To change the foreground color of date-time text in disabled or readonly state.
* FocusedBorderColor - To change the border color of DateTimeEdit in focused state.
* HoverBorderColor - To change the border color of DateTimeEdit in mouse hover state.

The following code snippets illustrates the customization.

{% tabs %}

{% highlight C# %}

sfDateTimeEdit1.Style.BorderColor = Color.Red;

{% endhighlight  %}

{% highlight VB %}

sfDateTimeEdit1.Style.BorderColor = Color.Red

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/bordercolor.png)

## Customize dropdown appearance

BackColor and ForeColor of drop down icon to open the calendar can be customized by following `DropDown` style properties. The following `style` properties of `DropDown` used to change the color of dropdown icon in different states.

* BackColor - To change the background color of dropdown icon in DateTimeEdit.
* ForeColor - To change the forground color of dropdown icon in DateTimeEdit.
* HoverForeColor - To change the forground color of dropdown icon in mouse hover state.
* PressedForeColor - To change the forground color of dropdown icon in pressed state.

### Change visibility of dropdown button

DropDown button in SfDateTimeEdit allows to open the popup calendar by mouse interaction. Visibility of DropDown button can be changed by `ShowDropDown` property. The following code snippets illustrates the same.

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

## Customize updown appearance

ForeColor of updown icon in the `SfDateTimeEdit` can be customized by following `Style` properties. The following `style` properties of SfDateTimeEdit used to change the color of updown icon in different states.

* UpDownForeColor - To change the forground color of updown icon in DateTimeEdit.
* UpDownHoverForeColor - To change the forground color of updown icon in mouse hover state.

The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Setting the UpDown Fore color

this.dateTimeEdit.Style.UpDownForeColor = Color.HotPink;

this.dateTimeEdit.Style.UpDownHoverForeColor = Color.Blue;

{% endhighlight  %}

{% highlight VB %}

'Setting the UpDown Fore color

Me.dateTimeEdit.Style.UpDownForeColor = Color.HotPink

Me.dateTimeEdit.Style.UpDownHoverForeColor = Color.Blue

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/updowncolor.png)

### Change visibility of UpDown

UpDown allows to change the value by increment or decrement the values of date, month and year based on the selected field. This value change by Up and Down buttons are only applicable when `DateTimeEditingMode` is Mask. Visibility of UpDown buttons can be changed by `ShowUpDown` property. The following code snippets illustrates the same.

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

## Customize Dropdown calendar Appearance

DropDown Calendar of SfDateTimeEdit can be get from `MonthCalendar` property. All the [customization with calendar](/windowsforms/sfcalendar/appearance) will be reflected in dropdown calendar of SfDateTimeEdit. The below code snippets illustrates how to change the visibility of footer in dropdown calendar of SfDateTimeEdit.

{% tabs %}

{% highlight C# %}

dateTimeEdit.MonthCalendar.ShowFooter = false;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.MonthCalendar.ShowFooter = false

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/footer.png)

## DropDown calendar Size customization

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
