---
layout: post
title: Selection of SfCalendar control for Windows Forms
description: Selecting dates through keyboard and programmatically. Also Multiple Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Selection

SfCalendar allows to select one or more dates. Selected date in calendar can be changed by mouse, keyboard interaction.

## Change selection

`SfCalendar` control allows to change the selection by click on specific date. 

### Change selection through keyboard

Selected date of `SfCalendar` control can be changed by keyboard. `Up/Down` and `Left/Right` arrow keys can helps to change the selection according to the key board interaction. 

### Change selection programmatically

Selection of the calendar control can be changed through programmatically by set the `SelectedDate` proeprty. `GoToDate` method used to validate and move the current view to the view which contains the date value passed as argument for `GoToDate` method. It return `false`, If te date value is not fall between minimum and maximum range or blackout dates contains the date. The following code example illustrates the same.

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

## Multiple selection

`SfCalendar` control allows to select multiple dates when `AllowMultipleSelection` property is true. The following code example illustrates how to configure calendar control to allow multiple date selection.

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

### Multiple selection through mouse

`SfCalendar` allows to select the multiple dates through mouse interaction by selecting the seperate cells while pressing `Ctrl` key. 

Specific range of dates can be selected by pressing the `Shift`. Select a date to set the start date of the range selection and select the end date when pressing the `Shift` Key. 

### Multiple selection through keyboard 

`SfCalendar` allows to select the multiple dates through keyboard by selecting the cells while pressing `Shift + UP/DOWN/LEFT/RIGHT Arrow` keys.

`Shift + UP` -  It selects the previos week dates from selected date.

`Shift + DOWN` -  It selects the next week dates from selected date.

`Shift + RIGHT` -  It selects the next date from selected date.

`Shift + LEFT` -  It selects the previos date from selected date.


## Disable selection

`BlackoutDates` refers the disabled dates that restrict the user from selecting it. List of dates can be provided to set the `BlackoutDates` for SfCalendar.  The following code example illustrates how to set the `BlackoutDates`.

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

`MinDate` can help to restrict the `SelectedDate` of calendar falls lesser than specific date. If the `SelectedDate` of calendar is less than `MinDate`, then the `SelectedDate` property reset to `MinDate`. When the `MinDate` is set, if the new `MinDate` value is greater than the `MaxDate`, then the `MaxDate` reset to the `MinDate`. 

## Maximum DateTime

`MaxDate` can help to restrict the `SelectedDate` of calendar falls greater than specific date. If the `SelectedDate` of calendar is greater than `MaxDate`, then the `SelectedDate` property reset to `MaxDate`. When the `MaxDate` is set, if the `MinDate` property is greater than the new `MaxDate`, then the `MinDate` reset to the `MaxDate`. 

Sometimes, the value needs to be restricted between some date range. In that scenario `MinDate` and `MaxDate` helps to select only the dates betwween these range and dates other than this range will not be displayed calendar.

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
 
 Restrict to set selected date can also be handled on-demand. While changing selection, based on the new selected date user can restrict selection change by handle the `SelectionChanging` event.

* `SelectionChanged` event invoked after the selected date changed in Calendar. The `SelectionChangedEventArgs` provides the following properties for the `SelectionChanged` event.

**OldValue** - An old SelectedDate of SfCalendar.
**NewValue** - The new SelectedDate of SfCalendar.
**IsMultipleDatesSelected** - `AllowMultipleSelection` property is enabled or not. 

* `SelectionChanging` event invoked before the selected date changed in Calendar. The `SelectionChangingEventArgs` provides the following properties for the `SelectionChanging` event.

**OldValue** - An old SelectedDate of SfCalendar.
**NewValue** - The new SelectedDate of SfCalendar.

The following code example illustrates the same.

{% tabs %}

{% highlight C# %}

// Invoking selection changing event

this.sfCalendar.SelectionChanging += SfCalendar_SelectionChanging;

// Invoking selection changed event

this.sfCalendar.SelectionChanged += SfCalendar_SelectionChanged;

// Occurs before the selected date changed in Calendar.

private void SfCalendar_SelectionChanging(SfCalendar sender, Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs args)
{
    args.Cancel = true;
}


// Occurs after the selected date changed in Calendar. 

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

' Occurs before the selected date changed in Calendar.

Private Sub SfCalendar_SelectionChanging(ByVal sender As SfCalendar, ByVal args As Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs)

    args.Cancel = true

End Sub

' Occurs after the selected date changed in Calendar. 

Private Sub SfCalendar_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Selection changed")

End Sub

{% endhighlight  %}

{% endtabs %} 