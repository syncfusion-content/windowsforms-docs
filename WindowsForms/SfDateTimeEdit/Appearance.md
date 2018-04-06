---
layout: post
title: Customization of SfDateTimeEdit control for Windows Forms
description: Customize the visibility of UpDown Button, Key Navigation Support and DropDown Popup alignment
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Customization

The appearance of each and every part in the DateTimeEdit can be customized. The SfDateTimeEdit allows you to customize the drop-down icon, calendar, and up-down buttons by using `style` properties.

## Customize DateTimeEdit appearance

The BackColor, ForeColor, and BorderColor of the control can be customized by using the following `Style` properties of the SfDateTimeEdit. The up-down and drop-down buttons of the SfDateTimeEdit control can also be customized using the `Style`.

* BackColor: Changes the background color of the DateTimeEdit.
* ForeColor: Changes the foreground color of date-time text in the DateTimeEdit.
* BorderColor: Changes the border color of the DateTimeEdit.
* DisabledBackColor: Changes the border color of DateTimeEdit in disabled or readonly state.
* DisabledForeColor: Changes the foreground color of date-time text in disabled or readonly state.
* FocusedBorderColor: Changes the border color of DateTimeEdit in focused state.
* HoverBorderColor: Changes the border color of DateTimeEdit on mouse hover.


{% tabs %}

{% highlight C# %}

sfDateTimeEdit1.Style.BorderColor = Color.Red;

{% endhighlight  %}

{% highlight VB %}

sfDateTimeEdit1.Style.BorderColor = Color.Red

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/bordercolor.png)

## Customize drop-down appearance

The BackColor and ForeColor of drop-down icon to open the calendar can be customized by the following `DropDown` style properties. The following `style` properties of `DropDown` are used to change the color of drop-down icon in different states.

* BackColor: Changes the background color of drop-down icon in the DateTimeEdit.
* ForeColor: Changes the foreground color of drop-down icon in the DateTimeEdit.
* HoverForeColor: Changes the foreground color of drop-down icon on mouse hover.
* PressedForeColor: Changes the foreground color of drop-down icon in pressed state.

### Change visibility of drop-down button

The drop-down button in the SfDateTimeEdit allows you to open the pop-up calendar by using the mouse interaction. The visibility of drop-down button can be changed by the `ShowDropDown` property. The following code snippets illustrates the same:

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

## Customize up-down appearance

The ForeColor of up-down icon in the `SfDateTimeEdit` can be customized by the following `Style` properties. The following `style` properties of the SfDateTimeEdit can be used to change the color of up-down icon in different states:

* UpDownForeColor: Changes the foreground color of up-down icon in the DateTimeEdit.
* UpDownHoverForeColor: Changes the foreground color of up-down icon on mouse hover.

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

### Change visibility of up-down

The up-down allows you to change the value by increment or decrement of values of the date, month, and year based on the selected field. The value change by up and down buttons are only applicable when the `DateTimeEditingMode` is mask. The visibility of up-down buttons can be changed by the `ShowUpDown` property. The following code snippets illustrates the same:

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

## Customize drop-down calendar appearance

The drop-down calendar of the SfDateTimeEdit can be obtained from the `MonthCalendar` property. All the [customization with calendar](/windowsforms/sfcalendar/appearance) will be reflected in drop-down calendar of the SfDateTimeEdit. The following code snippets illustrates how to change the visibility of footer in the drop-down calendar of the SfDateTimeEdit:

{% tabs %}

{% highlight C# %}

dateTimeEdit.MonthCalendar.ShowFooter = false;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.MonthCalendar.ShowFooter = false

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/footer.png)

## Drop-down calendar size customization

The size of the drop-down calendar can be customized by using the `DropDownSize` property.

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
