---
layout: post
title: Appearance of SfCalendar control for Windows Forms
description: The appearance of header, footer and cells.
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Appearance

This section explains customize the appearance for header, footer and cells in Calendar through `style`proeprties.

## Customize header appearance

BackColor and ForeColor of each part in calendar header can customized. Height of the calendar header can be customized by change the `HeaderHeight` property and width of header can updated automatically from the calendar width.

### Customize header text

Header text in Calendar control which display the month and year of selected date. Calendar header color can be customized by using the following style properties.

* BackColor - To change the background color of header in calendar.
* ForeColor - To change the foreground color of text which display month and year in calendar header.
* HoverForeColor - To change the foreground color of header text on mouse hover state.
* Font - To change the font used to draw the header text in  calendar.

### Customize day names

Calendar header also contains the day names of week for the month view. Day names of the calendar header can be customized using the following properties.

* DayNamesBackColor - To change the background color of day names in calendar header.
* DayNamesForeColor - To change the foreground color of day names in calendar header.
* DayNamesFont - To change the font used to draw the day names text in calendar.

The following code example illustrates to customize the appearances of calendar header. 

{% tabs %}

{% highlight C# %}

// Header customizations

// Setting header BackColor

this.sfCalendar.Style.Header.BackColor = Color.Red;

// Setting header ForeColor

this.sfCalendar.Style.Header.ForeColor = Color.Yellow;

// Setting header DayNames BackColor

this.sfCalendar.Style.Header.DayNamesBackColor = Color.Green;

// Setting header DayNames ForeColor

this.sfCalendar.Style.Header.DayNamesForeColor = Color.WhiteSmoke;

// Setting header DayNames Font

this.sfCalendar.Style.Header.DayNamesFont = new System.Drawing.Font("Calibri", 11.25F, System.Drawing.FontStyle.Regular);

{% endhighlight  %}

{% highlight VB %}

' Header customizations

' Setting header BackColor

Me.sfCalendar.Style.Header.BackColor = Color.LightGray

' Setting header ForeColor

Me.sfCalendar.Style.Header.ForeColor = Color.Blue

' Setting header DayNames BackColor

Me.sfCalendar.Style.Header.DayNamesBackColor = Color.LightSeaGreen

' Setting header DayNames ForeColor

Me.sfCalendar.Style.Header.DayNamesForeColor = Color.AliceBlue

' Setting header DayNames Font

Me.sfCalendar.Style.Header.DayNamesFont = New System.Drawing.Font("Calibri", 11.25!, System.Drawing.FontStyle.Regular)

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/headercustomizations.png)

## Customize navigation buttons

Navigation buttons in the calendar header can be customized by change the icons used for up and down. Icons used for navigation buttons can be changed by `UpArrowImage` and `DownArrowImage` properties of SfCalendar. Color used draw the default icons for up and down navaigation buttons can be customized by follwing properties.

* NavigationButtonForeColor - To change foreground color of up and down navigation buttons.
* NavigationButtonHoverForeColor - To change foreground color of up and down navigation buttons in mouse hover state.
* NavigationButtonDisabledForeColor - To change foreground color of up and down navigation buttons in disabled state.

The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// set the Navigation Button ForeColor
            
this.sfCalendar.Style.Header.NavigationButtonForeColor = Color.HotPink;

// set the Navigation Button Hover ForeColor

this.sfCalendar.Style.Header.NavigationButtonHoverForeColor = Color.Indigo;

// set the Navigation Button disabled ForeColor
            
this.sfCalendar.Style.Header.NavigationButtonDisabledForeColor = Color.LightGray;

{% endhighlight  %}

{% highlight VB %}

' set the Navigation Button ForeColor

Me.sfCalendar.Style.Header.NavigationButtonForeColor = Color.HotPink

' set the Navigation Button Hover ForeColor

Me.sfCalendar.Style.Header.NavigationButtonHoverForeColor = Color.Indigo

' set the Navigation Button disabled ForeColor

Me.sfCalendar.Style.Header.NavigationButtonDisabledForeColor = Color.LightGray

Visibility and alignment of navigation buttons also can be customized.

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/navigationcolor.png)

### Visibility of navigation buttons

Navigation buttons are used to move between views in `SfCalendar`. Visibility of navigation buttons can be customized by `ShowNavigationButton` property. The following code example illustrates the same.

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

### Navigation buttons alignment

Navigation buttons can be aligned in different sides relative to the calendar header. Alignment of navigation buttons can be customized by `NavigationButtonAlignment`. The following code example illustrates the same.

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

## Customize footer appearance

BackColor and ForeColor of each part in calendar footer can customized. Height of the calendar footer can be customized by change the `FooterHeight` property and width of footer can updated automatically from the calendar width. Calendar control footer color can be customized by the following style properties.

* BackColor - To change the background color of footer in calendar
* ForeColor - To change the foreground color of footer in calendar
* HoverBackColor - To change the background color of footer on mouse hover state.
* HoverForeColor - To change the foreground color of footer text on mouse hover state.

The following code example illustrates how to change the background and foreground of calendar footer.

{% tabs %}

{% highlight C# %}

// Footer customizations

// Setting Footer BackColor

this.sfCalendar.Style.Footer.BackColor = Color.LightGreen;

// Setting Footer ForeColor

this.sfCalendar.Style.Footer.ForeColor = Color.Green;

// Setting Footer HoverBackColor

this.sfCalendar.Style.Footer.HoverBackColor = Color.Yellow;

// Setting Footer HoverForeColor

this.sfCalendar.Style.Footer.HoverForeColor = Color.SpringGreen;

{% endhighlight  %}

{% highlight VB %}

' Footer customizations

' Setting Footer BackColor

Me.sfCalendar.Style.Footer.BackColor = Color.LightGreen

' Setting Footer ForeColor

Me.sfCalendar.Style.Footer.ForeColor = Color.Green

' Setting Footer HoverBackColor

Me.sfCalendar.Style.Footer.HoverBackColor = Color.Yellow

' Setting Footer HoverForeColor

Me.sfCalendar.Style.Footer.HoverForeColor = Color.SpringGreen

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/footercustomizations.png)

## Customize cell appearance

BackColor, ForeColor and BorderColor of each date cells in the calendar can be customized. Date cells in the calendar control can be customized by the following style properties.

* CellBackColor - To change the background color of date cells in calendar
* CellForeColor - To change the foreground color of date cells in calendar
* CellHoverBorderColor - To change the border color of date cells in calendar 
* CellFont - To change font used draw the date text of cell in calendar

### Customize trailing date appearance 

Calendar control trailing (Next or Previous month) cells can be customized by the below properties.

* TrailingCellBackColor - To change background color of the previous and following month cells which shown in current view in calendar.
* TrailingCellForeColor - To change foreground color of the previous and following month cells which shown in current view in calendar.
* TrailingCellFont - To change the font used to draw the date text for the previous and following month cells which shown in current view in calendar.

### Customize selected date appearance

BackColor and ForeColor of selected date cell in calendar can customized. The following code illustrates how to customize the selected date cell appearance.

* SelectedCellBackColor - To change the background color of selected date cell in calendar
* SelectedCellForeColor - To change the foreground color of selected date cell in calendar
* SelectedCellBorderColor - To change the border color of selected date cell in calendar 
* SelectedCellHoverBorderColor - To change the border color of selected date cell in mouse hover state
* SelectedCellFont - To change the font used to draw the date text of selected cell in calendar

The following code example illustrates the customization of the Calendar cells.

{% tabs %}

{% highlight C# %}

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

// Setting selected CellFont

this.sfCalendar.Style.Cell.SelectedCellFont = new System.Drawing.Font("Calibri", 11.25F, System.Drawing.FontStyle.Regular); 

{% endhighlight  %}

{% highlight VB %}

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

' Setting selected CellFont

Me.sfCalendar.Style.Cell.SelectedCellFont = New System.Drawing.Font("Calibri", 11.25!, System.Drawing.FontStyle.Regular)

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/cellcustomization.png)

## Hide trailing dates   

`SfCalendar` allows to hide the days of the next month and the previous month in the calendar to enhance the appearance of the calendar. This can be achieved by disabling the `TrailingDatesVisible` property. The following code example illustrates how to hide trailing dates in calendar.

{% tabs %}

{% highlight C# %}

// Setting the Next and Previous Months Dates invisible

this.SfCalendar1.TrailingDatesVisible = false;

{% endhighlight  %}

{% highlight VB %}

' Setting the Next and Previous Months Dates invisible

this.SfCalendar1.TrailingDatesVisible = False

{% endhighlight  %}

{% endtabs %}

![](appearance-images/inactivedaysfalse.png)

## Abbreviating day names

By default, the day names are displayed in an abbreviated form in the Calendar control. They can also be displayed in an expanded form by setting `ShowAbbreviatedDayNames` property to false. This indicates whether the name of day is abbreviated or expanded. The following code example illustrates how to display the day names in expanded form.

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

`SfCalendar` control elements can be aligned in right-to-left layout. `SfCalendar` control laid out from right to left when `RightToLeft` value is `Yes`. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

//Enable the Right to Left 

this.sfCalendar.RightToLeft = RightToLeft.Yes;

{% endhighlight  %}

{% highlight VB %}

'Enable the Right to Left 

Me.sfCalendar.RightToLeft = RightToLeft.Yes

{% endhighlight  %}

{% endtabs %}

![](appearance-images/righttoleft.png)

## Highlight today cell 

Today cell highlighted even selected date is different than today in `SfCalendar`. The highlight of today cell can be changed by `HighlightTodayCell` property. Today date cell can also be customized the following style properties. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

// Indicating whether Today cell highlighted even selected date is different than today

this.sfCalendar.HighlightTodayCell = true;

{% endhighlight  %}

{% highlight VB %}

' Indicating whether Today cell highlighted even selected date is different than Today

Me.sfCalendar.HighlightTodayCell = true

{% endhighlight  %}

{% endtabs %}

![](appearance-images/todaycell.png)

### Customize today cell appearance

BackColor, ForeColor and BorderColor of today cell in the calendar can be customized. Today cell in the calendar control can be customized by the following style properties.

* TodayBackColor - To change the background color of today cell in calendar
* TodayForeColor - To change the foreground color of today cell in calendar
* TodayFont - To change the font used to draw the date text of today cell in calendar
* TodayHoverBorderColor - To change the border color of today cell in mouse hover state

## Change visibility of the footer

Visibility of the calendar footer can be customized by using `ShowFooter` property which contains Today and None buttons. Visibility of today and none button separately by `ShowToday` and `ShowNone` properties respectively. The following code example illustrates the same.

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

## Customize splitter appearance

Visibility of splitters in calendar control can be customized by setting the `ShowHorizontalSplitter` and `ShowVerticalSplitter` properties respectively. Also splitters color can be customized by `HorizontalSplitterColor` and `VerticalSplitterColor` for horizontal and vertical Splitters respectively. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Enable Horizontal splitter

 this.sfCalendar.ShowHorizontalSplitter = true;

// Enable Vertical splitter

this.sfCalendar.ShowVerticalSplitter = true;

//  color used draw the Horizontal splitter in cell view

this.sfCalendar.Style.HorizontalSplitterColor = Color.Red;

// color used draw the vertical splitter in cell view

this.sfCalendar.Style.VerticalSplitterColor = Color.Green;

{% endhighlight  %}

{% highlight VB %}

' Enable Horizontal splitter

Me.sfCalendar.ShowHorizontalSplitter = true

' Enable Vertical splitter

Me.sfCalendar.ShowVerticalSplitter = true

'  color used draw the Horizontal splitter in cell view

Me.sfCalendar.Style.HorizontalSplitterColor = Color.Red

' color used draw the vertical splitter in cell view

Me.sfCalendar.Style.VerticalSplitterColor = Color.Green

{% endhighlight  %}

{% endtabs %}

![](appearance-images/splittercolor.png)