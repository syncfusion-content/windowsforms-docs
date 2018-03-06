---
layout: post
title: Selection of SfCalendar control for Windows Forms
description: Selecting dates through keyboard and programmatically. Also Multiple Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Selection

The SfCalendar allows you to select one or more dates. The selected date in the calendar can be changed by the mouse, keyboard, and touch interaction.

## Change selection

The `SfCalendar` control allows you to change the selection by clicking the specific date. 

### Change selection through keyboard

The selected date of the `SfCalendar` control can be changed by the keyboard. `Up/Down` and `Left/Right` arrow keys help you to change the selection according to the key board interaction. 

### Change selection programmatically

The selection of the calendar control can be changed programmatically by setting the `SelectedDate` property. The `GoToDate` method is used to validate and move the current view to the view which contains the date value passed as argument for `GoToDate` method. If the date value is not fall between minimum and maximum ranges or blackout dates contains the date, it returns `false`. The following code example illustrates the same:

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

The `SfCalendar` control allows you to select multiple dates when the `AllowMultipleSelection` property is true. The following code example illustrates how to configure the calendar control to allow multiple date selection:

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


### Multiple selection through mouse

The `SfCalendar` allows you to select multiple dates through the mouse interaction by selecting separate cells while pressing the `Ctrl`.

The specific range of dates can be selected by pressing the `Shift`. Select a date to set the start date of the range selection and select an end date when pressing the `Shift`.

### Multiple selection through keyboard 

The `SfCalendar` allows you to select multiple dates through the keyboard by selecting the cells while pressing `Shift + UP/DOWN/LEFT/RIGHT` and `Shift + HOME/END` arrow keys.

* Shift + UP: Selects previous week dates from the selected date.

* Shift + DOWN: Selects next week dates from the selected date.

* Shift + RIGHT: Selects next date from the selected date.

* Shift + LEFT: Selects previous date from the selected date.

*  Shift + HOME: Selects the date range from first day of month to the current selected date.

*  Shift + END: Selects the date range from current selected date to the last date of a month.


### Multiple selection programmatically

Multiple dates in the calendar control can be selected programmatically by adding dates to the `SelectedDates` collection. If the date which passed for adding with selected dates is not fall within minimum or maximum ranges or present in blackout dates, it will not be added to selected dates. The following code example illustrates how to add the selected dates programmatically. In the below code example, blackout dates contain the first date that is added to selected dates. So, except that first added date, other dates are added to selected dates.

{% tabs %}

{% highlight C# %}

sfCalendar.AllowMultipleSelection = true;

sfCalendar.BlackoutDates.Add(new DateTime(2018, 02, 12));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 12));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 13));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 14));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 15));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 16));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 17));

sfCalendar.SelectedDates.Add(new DateTime(2018, 02, 18));         

{% endhighlight  %}

{% endtabs %}

![](selection-images/multiselection.png)

## Disable selection

The `BlackoutDates` refers the disabled dates that restrict the user from selecting it. List of dates can be provided to set the `BlackoutDates` for the SfCalendar. The following code example illustrates how to set the `BlackoutDates`:

{% tabs %}

{% highlight C# %}

//Setting the Blackout Dates

var weekends = GetDaysBetween(minDateTimeEdit.Value.Value, maxDateTimeEdit.Value.Value).Where(d => d.DayOfWeek == DayOfWeek.Saturday || d.DayOfWeek == DayOfWeek.Sunday);

List<DateTime> time = new List<DateTime>();

time = weekends.ToList();

this.sfCalendar.BlackoutDates = time;


{% endhighlight  %}

{% highlight VB %}

        'Setting the Blackout Dates

        Dim weekends = GetDaysBetween(minDateTimeEdit.Value.Value, maxDateTimeEdit.Value.Value).Where(() => {  }, ((d.DayOfWeek = DayOfWeek.Saturday)  _
                        OrElse (d.DayOfWeek = DayOfWeek.Sunday)))

        Dim time As List(Of DateTime) = New List(Of DateTime)

        time = weekends.ToList

        Me.sfCalendar.BlackoutDates = time

{% endhighlight  %}

{% endtabs %} 

![](getting-started-images/blackoutdates.png)

## Minimum datetime

`MinDate` helps you to restrict the `SelectedDate` of calendar falling lesser than the specific date. If the `SelectedDate` of calendar is less than the `MinDate`, then the `SelectedDate` property will be reset to `MinDate`. If the new `MinDate` value is greater than the `MaxDate`, then the `MaxDate` will be reset to the `MinDate`.

## Maximum datetime

`MaxDate` helps you to restrict the `SelectedDate` of calendar falling greater than the specific date. If the `SelectedDate` of calendar is greater than `MaxDate`, then the `SelectedDate` property will be reset to `MaxDate`. When the `MaxDate` is set, if the `MinDate` property is greater than the new `MaxDate`, then the `MinDate` will be reset to the `MaxDate`. 

Sometimes, the value should be restricted between some date ranges. In that scenario, the `MinDate` and `MaxDate` help you to select only the dates between these range, and dates other than this range will not be displayed in the calendar.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();

calendar.Value = new DateTime(2018, 1, 12);

calendar.MinDate = new DateTime(2018, 1, 05);

calendar.MaxDate = new DateTime(2018, 1, 25);

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Dim calendar  As New Syncfusion.WinForms.Input.SfCalendar ()

calendar.Value = New DateTime(2018, 1, 12)

calendar.MinDate = new DateTime(2018, 1, 05)

calendar.MaxDate = new DateTime(2018, 1, 25)

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/minmax.png)

## Handle selection change
 
 Restricts setting the selected date to handle on-demand. While changing the selection, user can restrict the selection change based on the new selected date by handling the `SelectionChanging` event.
 
 The `SelectionChanging` event is invoked before the selected date is changed in the calendar. The `SelectionChangingEventArgs` provides the following properties for the `SelectionChanging` event:

* OldValue: Old selected date of the SfCalendar.
* NewValue: New selected date of the SfCalendar.

The `SelectionChanged` event is invoked after the selected date is changed in the calendar. The `SelectionChangedEventArgs` provides the following properties for the `SelectionChanged` event:

* OldValue: Old selected date of the SfCalendar.
* NewValue: New selected date of the SfCalendar.
* IsMultipleDatesSelected: Indicates whether multiples dates are selected in the calendar or not.

The following code example illustrates how to restrict the selection change on-demand:

{% tabs %}

{% highlight C# %}

// Invoking selection changing event

this.sfCalendar.SelectionChanging += SfCalendar_SelectionChanging;

// Invoking selection changed event

this.sfCalendar.SelectionChanged += SfCalendar_SelectionChanged;

// Occurs before the selected date changed in Calendar.

private void SfCalendar_SelectionChanging(SfCalendar sender, Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs args)

{
    if(args.NewValue == new DateTime(2018, 1, 16))

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

## Clear Selection

Selected dates of the calendar control will be cleared when the single date is selected. The calendar control also provides support to remove single date from the selected dates by selecting the already selected date while pressing the `CTRL` key.

### Clear selected dates programmatically

Selected dates of the calendar control can be removed from the selection by programmatically. The SfCalendar provides `ClearSelection` method that helps to remove already selected dates and also provides options to select the new date. The following code example illustrates how to remove the selected dates and select new date:

{% tabs %}

{% highlight C# %}

// Clear the selected dates and set the new date as selected date

sfCalendar.ClearSelection(new DateTime(2018, 02, 16));

{% endhighlight  %}

{% endtabs %} 

![](selection-images/selection.png)