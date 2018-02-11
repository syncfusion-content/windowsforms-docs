---
layout: post
title: Appearance of header, footer and cells of SfCalendar control for Windows Forms
description: The appearance of header, footer and cells.
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Appearance

This section explains the appearance of header, footer and cells.

## Customize header appearance

Calendar control header can be customized by using the following properties.

* BackColor
* ForeColor
* DayNamesBackColor
* DayNamesForeColor
* DayFont

The following code example illustrates to customize the appearances. 

{% tabs %}

{% highlight C# %}

// Header customizations

// Setting header BackColor

this.sfCalendar.Style.Header.BackColor = Color.Red;

// Setting header BackColor

this.sfCalendar.Style.Header.ForeColor = Color.Yellow;

// Setting header BackColor

this.sfCalendar.Style.Header.DayNamesBackColor = Color.Green;

// Setting header BackColor

this.sfCalendar.Style.Header.DayNamesForeColor = Color.WhiteSmoke;

{% endhighlight  %}

{% highlight VB %}

' Header customizations

' Setting header BackColor

Me.sfCalendar.Style.Header.BackColor = Color.Red

' Setting header ForeColor

Me.sfCalendar.Style.Header.ForeColor = Color.Yellow

' Setting header DayNamesBackColor

Me.sfCalendar.Style.Header.DayNamesBackColor = Color.Green

' Setting header DayNamesForeColor

Me.sfCalendar.Style.Header.DayNamesForeColor = Color.WhiteSmoke

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/headercustomizations.png)

## Customize footer appearance

Calendar control footer can be customized by using the following properties.

* BackColor
* ForeColor
* HoverBackColor
* HoverForeColor

The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Footer customizations

// Setting Footer BackColor

this.sfCalendar.VisualStyle.Footer.BackColor = Color.Tomato;

// Setting Footer ForeColor

this.sfCalendar.Style.Footer.ForeColor = Color.WhiteSmoke;

// Setting Footer HoverBackColor

this.sfCalendar.Style.Footer.HoverBackColor = Color.Yellow;

// Setting Footer HoverForeColor

this.sfCalendar.Style.Footer.HoverForeColor = Color.SpringGreen;

{% endhighlight  %}

{% highlight VB %}

' Footer customizations

' Setting Footer BackColor

Me.sfCalendar.Style.Footer.BackColor = Color.Tomato

' Setting Footer ForeColor

Me.sfCalendar.Style.Footer.ForeColor = Color.WhiteSmoke

' Setting Footer HoverBackColor

Me.sfCalendar.Style.Footer.HoverBackColor = Color.Yellow

' Setting Footer HoverForeColor

Me.sfCalendar.Style.Footer.HoverForeColor = Color.SpringGreen

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/footercustomizations.png)

## Customize cell appearance

Calendar control cells can be customized by using the following properties.

* CellBackColor
* CellForeColor
* CellHoverBackColor
* CellHoverForeColor
* CellFont 

### Customize trailing date appearance 

Calendar control Trailing(Next or Previous month) cells can be customized by the below properties.

* TrailingCellBackColor
* TrailingCellForeColor
* TrailingCellFont

### Customize selected date appearance

Calendar control Selected cells can be customized by the below properties.

* SelectedCellBackColor
* SelectedCellForeColor
* SelectedCellBorderColor
* SelectedCellHoverBorderColor

The following code example illustrates the customization of the Calendar cells.

{% tabs %}

{% highlight C# %}

// Footer customizations

// Setting CellBackColor

this.sfCalendar.Style.Cell.CellBackColor = Color.LightBlue;

// Setting CellForeColor

this.sfCalendar.Style.Cell.CellForeColor = Color.Red;

// Setting CellHoverBorderColor

this.sfCalendar.Style.Cell.CellHoverBorderColor = Color.LightCyan;

// Setting SelectedCellBackColor

this.sfCalendar.Style.Cell.SelectedCellBackColor = Color.Blue;

// Setting SelectedCellForeColor

this.sfCalendar.Style.Cell.SelectedCellForeColor = Color.White;

// Setting SelectedCellBorderColor

this.sfCalendar.Style.Cell.SelectedCellBorderColor = Color.Tomato;

// Setting SelectedCellHoverBorderColor

this.sfCalendar.Style.Cell.SelectedCellHoverBorderColor = Color.Yellow;

// Setting TrailingCellBackColor

this.sfCalendar.Style.Cell.TrailingCellBackColor = Color.LightGray;

// Setting TrailingCellForeColor

this.sfCalendar.Style.Cell.TrailingCellForeColor = Color.Black;

// Setting TrailingCellFont

this.sfCalendar.Style.Cell.TrailingCellFont = new System.Drawing.Font("Calibri", 11.25F, System.Drawing.FontStyle.Bold);

// Setting CellFont

this.sfCalendar.Style.Cell.CellFont = new System.Drawing.Font("Calibri", 11.25F, System.Drawing.FontStyle.Bold);

{% endhighlight  %}

{% highlight VB %}

' Footer customizations

' Setting CellBackColor

Me.sfCalendar.Style.Cell.CellBackColor = Color.LightBlue

' Setting CellForeColor

Me.sfCalendar.Style.Cell.CellForeColor = Color.Red

' Setting CellHoverBorderColor

Me.sfCalendar.Style.Cell.CellHoverBorderColor = Color.LightCyan

' Setting SelectedCellBackColor

Me.sfCalendar.Style.Cell.SelectedCellBackColor = Color.Blue

' Setting SelectedCellForeColor

Me.sfCalendar.Style.Cell.SelectedCellForeColor = Color.White

' Setting SelectedCellBorderColor

Me.sfCalendar.Style.Cell.SelectedCellBorderColor = Color.Tomato

' Setting SelectedCellHoverBorderColor

Me.sfCalendar.Style.Cell.SelectedCellHoverBorderColor = Color.Yellow

' Setting TrailingCellBackColor

Me.sfCalendar.Style.Cell.TrailingCellBackColor = Color.LightGray

' Setting TrailingCellForeColor

Me.sfCalendar.Style.Cell.TrailingCellForeColor = Color.Black

' Setting TrailingCellFont

Me.sfCalendar.Style.Cell.TrailingCellFont = New System.Drawing.Font("Calibri", 11.25!, System.Drawing.FontStyle.Bold)

' Setting CellFont

Me.sfCalendar.Style.Cell.CellFont = New System.Drawing.Font("Calibri", 11.25!, System.Drawing.FontStyle.Bold)

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/cellcustomization.png)

## Settings the Days   

It is possible to hide the days of the next month and the previous month in the calendar, to enhance the appearance of the Calendar. This is done by disabling the `TrailingCellVisible` property.

For setting these properties, use the following code.

{% tabs %}

{% highlight C# %}

// Setting the Next and Previous Months Dates invisible

this.SfCalendar1.TrailingCellVisible = false;

{% endhighlight  %}

{% highlight VB %}

' Setting the Next and Previous Months Dates invisible

this.SfCalendar1.TrailingCellVisible = False

{% endhighlight  %}

{% endtabs %}

![](appearance-images/inactivedaysfalse.png)

## Abbreviating Day Names

By default, the day names are displayed in an abbreviated form in the Calendar control. They can also be displayed in an expanded form by setting `ShowAbbreviatedDayNames` property to false. This indicates whether the name of day is abbreviated or expanded. It returns the Boolean value.

To set this property, use the following code:

{% tabs %}

{% highlight C# %}

// Setting the Show Abbreviated Day Names

this.sfCalendar.ShowAbbreviatedDayNames = false;

{% endhighlight  %}

{% highlight VB %}

' Setting the Show Abbreviated Day Names

Me.sfCalendar.ShowAbbreviatedDayNames = false

{% endhighlight  %}

{% endtabs %}

![](appearance-images/abbreviateddaynames.png)

## Right-To-Left

`SfCalendar` control elements can be aligned in right-to-left layout. The `RightToLeftLayout` property is used for international applications where the language is written from right to left such as Hebrew or Arabic. `SfCalendar` control laid out from right to left when `RightToLeftLayout` is `true` and  `RightToLeft` value is `Yes`. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

//Enable the Right to Left 

this.sfCalendar.RightToLeft = RightToLeft.Yes;

this.sfCalendar.RightToLeftLayout = true;

{% endhighlight  %}

{% highlight VB %}

'Enable the Right to Left 

Me.sfCalendar.RightToLeft = RightToLeft.Yes

Me.sfCalendar.RightToLeftLayout = true

{% endhighlight  %}

{% endtabs %}

![](appearance-images/righttoleft.png)

## Highlight Today cell 

Today cell highlighted even selected date is different than Today in `SfCalendar`. The highlight of today cell can be customized by using `HighlightTodayCell` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

// Indicating whether Today cell highlighted even selected date is different than Today

this.sfCalendar.HighlightTodayCell = false;

{% endhighlight  %}

{% highlight VB %}

' Indicating whether Today cell highlighted even selected date is different than Today

Me.sfCalendar.HighlightTodayCell = false

{% endhighlight  %}

{% endtabs %}

![](appearance-images/todaycell.png)

## Change visibility of Navigation Buttons

Navigation buttons used to move between views in SfCalendar. It visiblity can be customized by using `ShowNavigationButton` property. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Indicating whether show the navigation buttons which used to move between views. 

this.sfCalendar.ShowNavigationButton = false;

{% endhighlight  %}

{% highlight VB %}

' Indicating whether  show the navigation buttons which used to move between views. 

Me.sfCalendar.ShowNavigationButton = false

{% endhighlight  %}

{% endtabs %}

![](appearance-images/navigationbuttons.png)

## Navigation Buttons alignment

Navigation buttons should align relative to the Calendar Header. It alignment can be customized by using `NavigationButtonAlignment`. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Indicating how the navigation buttons should align relative to the Calendar Header. Setting Left alignment. 

this.sfCalendar.NavigationButtonAlignment = Syncfusion.WinForms.Input.Enums.NavigationButtonAlignment.Left;

{% endhighlight  %}

{% highlight VB %}

' Indicating how the navigation buttons should align relative to the Calendar Header. Setting Left alignment. 

Me.sfCalendar.NavigationButtonAlignment = Syncfusion.WinForms.Input.Enums.NavigationButtonAlignment.Left

{% endhighlight  %}

{% endtabs %}

![](appearance-images/navbuttonalignleft.png)


{% tabs %}

{% highlight C# %}

// Indicating how the navigation buttons should align relative to the Calendar Header. Setting Both alignment. 

this.sfCalendar.NavigationButtonAlignment = Syncfusion.WinForms.Input.Enums.NavigationButtonAlignment.Both;

{% endhighlight  %}

{% highlight VB %}

' Indicating how the navigation buttons should align relative to the Calendar Header. Setting Both alignment. 

Me.sfCalendar.NavigationButtonAlignment = Syncfusion.WinForms.Input.Enums.NavigationButtonAlignment.Both

{% endhighlight  %}

{% endtabs %}

![](appearance-images/navbuttonalignboth.png)

## Change the visibility of the Vertical splitter

Visibility of vertical splitter in calendar control can be customized by setting the `ShowVerticalSplitter`property. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Indicating whether the dates of each columns in the SfCalendar are separated with vertical splitter.

this.sfCalendar.ShowVerticalSplitter = true;

{% endhighlight  %}

{% highlight VB %}

' Indicating whether the dates of each columns in the SfCalendar are separated with vertical splitter.

Me.sfCalendar.ShowVerticalSplitter = true

{% endhighlight  %}

{% endtabs %}

![](appearance-images/verticalsplitter.png)

## Change the visibility of the footer Today or None Button

Visibility of the calendar footer Today/None button can be customized by using `ShowToday` and `ShowNone` properties. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Indicating the visibility of none button in footer 

this.sfCalendar.ShowFooter = true;

this.sfCalendar.ShowNone = false;

{% endhighlight  %}

{% highlight VB %}

' Indicating the visibility of none button in footer 

Me.sfCalendar.ShowFooter = true

Me.sfCalendar.ShowNone = false

{% endhighlight  %}

{% endtabs %}

![](appearance-images/showtoday.png)

{% tabs %}

{% highlight C# %}

// Indicating the visibility of today button in footer 

this.sfCalendar.ShowFooter = true;

this.sfCalendar.ShowToday = false;

{% endhighlight  %}

{% highlight VB %}

' Indicating the visibility of today button in footer 

Me.sfCalendar.ShowFooter = true

Me.sfCalendar.ShowToday = false

{% endhighlight  %}

{% endtabs %}

![](appearance-images/shownone.png)