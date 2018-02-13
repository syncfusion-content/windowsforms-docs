---
layout: post
title: Selection of SfCalendar control for Windows Forms
description: Selecting dates through keyboard and programmatically. Also Multiple Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Selection

SfCalendar allow to select one or more dates. For selecting a date you have to set the `SelectedDate` property. This section will explain about the types of selection available for `SfCalendar` and its usability’s.

## Change selection

Selected date of the Calendar control can be changed by using the `SelectedDate` property.  

### Change selection through keyboard

Selected date of the Calendar control can be changed by using the keyboard the date selection of the control by using the `Up/Down Arrow` and `Left/Right Arrow` keys. 

### Change selection programmatically

`GoToDate` method used to validate the selected date value is not fall within min max range or Blackout dates contains the date or not. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Move the current view to the date based on given value. Return value as false when the date is not fall within min max range or Blackout dates contains the date.

if (this.sfCalendar.GoToDate(new DateTime(2018,02,02)))
{
    this.sfCalendar.SelectedDate = new DateTime(2018,02,02);
}

{% endhighlight  %}

{% highlight VB %}

' Move the current view to the date based on given value. Return value as false when the date is not fall within min max range or Blackout dates contains the date.

If Me.sfCalendar.GoToDate(New DateTime(2018, 2, 2)) Then

    Me.sfCalendar.SelectedDate = New DateTime(2018, 2, 2)

End If

{% endhighlight  %}

{% endtabs %} 

## Allow multiple selection

`SfCalendar` control allows to select multiple dates by setting the `AllowMultipleSelection` property to true. The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Setting to Allow Multiple Selection

this.SfCalendar1.AllowMultipleSelection = true;

{% endhighlight  %}

{% highlight VB %}

' Setting to Allow Multiple Selection

Me.SfCalendar1.AllowMultipleSelection = true

{% endhighlight  %}

{% endtabs %} 

![](selection-images/multiselection.png)

### Select multiple dates through mouse

`SfCalendar` allows to select the multiple dates through mouse by selecting the cells while pressing `Ctrl` key. 

Range Selection can be achieved by pressing the `Shift` key, Select a date to set the Start date of the Range Selection and Select the End date when pressing the `Shift` Key. 

### Select multiple dates through keyboard 

`SfCalendar` allows to select the multiple dates through keyboard by selecting the cells while pressing `Shift + UP/DOWN/LEFT/RIGHT Arrow` keys. 

## Disable selection

`BlackoutDates` refers the disabled dates that restrict the user from selecting it. A date collection can be provided to set the `BlackoutDates` for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the Blackout Dates
    
DateTime date = new DateTime(2018, 01, 25);
    
DateTime date1 = new DateTime(2018, 01, 23);
    
DateTime date2 = new DateTime(2018, 01, 17);
    
DateTime date3 = new DateTime(2018, 01, 18);
    
DateTime date4 = new DateTime(2018, 01, 20);
    
DateTime date5 = new DateTime(2018, 01, 22);
    
this.SfCalendar1.BlackoutDates = new DateTime[]{ date, date1, date2, date3, date4, date5};

{% endhighlight  %}

{% highlight VB %}

Dim date As DateTime = New DateTime(2018, 1, 25)

Dim date1 As DateTime = New DateTime(2018, 1, 23)

Dim date2 As DateTime = New DateTime(2018, 1, 17)

Dim date3 As DateTime = New DateTime(2018, 1, 18)

Dim date4 As DateTime = New DateTime(2018, 1, 20)

Dim date5 As DateTime = New DateTime(2018, 1, 22)

Me.SfCalendar1.BlackoutDates = New DateTime() {date, date1, date2, date3, date4, date5}

{% endhighlight  %}

{% endtabs %} 

![](getting-started-images/blackoutdates.png)

## Minimum DateTime

`MinDate` can help to restrict the `DateTime` value set lesser than specific `DateTime` value. If the value of `SfCalendar` is less than `MinDate`, then the `Value` property reset to `MinDate`. When the `MinDate` is set, if the new `MinDate` value is greater than the `MaxDate`, then the `MaxDate` reset to the `MinDate`. 

## Maximum DateTime

`MaxDate` can help to restrict the `DateTime` value set greater than specific `DateTime` value. If the value of `SfCalendar` is greater than `MaxDate`, then the `Value` property reset to `MaxDate`. When the `MaxDate` is set, if the `MinDate` property is greater than the new `MaxDate`, then the `MinDate` reset to the `MaxDate`. 

Sometimes, the value needs to be restricted in between some date range. Lets Consider a project for hotel reservation system. The “In Date” should be lesser than the “Out Date” and vice versa. So “In Date” should be set as minimum date and “Out Date” should be set as maximum date in the `SfCalendar` control.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();

this.Controls.Add(calendar);

calendar.Value = new DateTime(2018, 1, 12);

calendar.MinDate = new DateTime(2018, 1, 03);

calendar.MaxDate = new DateTime(2018, 1, 29);

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Dim calendar  As New Syncfusion.WinForms.Input.SfCalendar ()

Me.Controls.Add(calendar)

calendar.Value = New DateTime(2018, 1, 12)

calendar.MinDate = new DateTime(2018, 1, 03)

calendar.MaxDate = new DateTime(2018, 1, 29)

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/minmax.png)

## Handle Selection change

A selection can be changed not only by user interaction but also by binding as well as other set values. The selection changes can be handled by the following properties.

* `SelectionChanged` event invoked after the selected date changed in Calendar. 
* `SelectionChanging` event invoked before the selected date changed in Calendar. 

The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Invoking selection changing event

this.sfCalendar.SelectionChanging += SfCalendar_SelectionChanging;

// Invoking selection changed event

this.sfCalendar.SelectionChanged += SfCalendar_SelectionChanged;

/// <summary>
/// Occurs before the selected date changed in Calendar.
/// </summary>
/// <param name="sender">The SfCalendar</param>
/// <param name="e">The event args</param>

private void SfCalendar_SelectionChanging(SfCalendar sender, Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs args)
{
    args.Cancel = true;
}

/// <summary>
/// Occurs after the selected date changed in Calendar. 
/// </summary>
/// <param name="sender">The SfCalendar</param>
/// <param name="e">The event args</param>
private void SfCalendar_SelectionChanged(object sender, EventArgs e)
{
    MessageBox.Show("Selection changed");
}

{% endhighlight  %}

{% highlight VB %}

' Invoking selection changing event

Me.sfCalendar.SelectionChanging = (Me.sfCalendar.SelectionChanging + SfCalendar_SelectionChanging)

' Invoking selection changed event

Me.sfCalendar.SelectionChanged = (Me.sfCalendar.SelectionChanged + SfCalendar_SelectionChanged)

''' <summary>
''' Occurs before the selected date changed in Calendar.
''' </summary>
''' <param name="sender">The SfCalendar</param>
''' <param name="e">The event args</param>

Private Sub SfCalendar_SelectionChanging(ByVal sender As SfCalendar, ByVal args As Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs)

    args.Cancel = true

End Sub

''' <summary>
''' Occurs after the selected date changed in Calendar. 
''' </summary>
''' <param name="sender">The SfCalendar</param>
''' <param name="e">The event args</param>
Private Sub SfCalendar_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Selection changed")

End Sub

{% endhighlight  %}

{% endtabs %} 