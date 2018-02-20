---
layout: post
title: Selection of SfCalendar control for Windows Forms
description: Selecting dates through keyboard and programmatically. Also Multiple Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Selection

SfCalendar allows to select one or more dates. Selected date in calendar can be changed by mouse, keyboard and touch interaction.

## Change selection

`SfCalendar` control allows to change the selection by click on specific date. 

### Change selection through keyboard

Selected date of `SfCalendar` control can be changed by keyboard. `Up/Down` and `Left/Right` arrow keys can helps to change the selection according to the key board interaction. 

### Change selection programmatically

Selection of the calendar control can be changed through programmatically by set the `SelectedDate` property. `GoToDate` method used to validate and move the current view to the view which contains the date value passed as argument for `GoToDate` method. It returns `false`, If the date value is not fall between minimum and maximum range or blackout dates contains the date. The following code example illustrates the same.

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


### Multiple selection through mouse

`SfCalendar` allows to select the multiple dates through mouse interaction by selecting the separate cells while pressing `Ctrl` key. 

Specific range of dates can be selected by pressing the `Shift`. Select a date to set the start date of the range selection and select the end date when pressing the `Shift` Key. 

### Multiple selection through keyboard 

`SfCalendar` allows to select the multiple dates through keyboard by selecting the cells while pressing `Shift + UP/DOWN/LEFT/RIGHT` and `Shift + HOME/END` arrow keys.

* Shift + UP -  It selects the previous week dates from selected date.

* Shift + DOWN -  It selects the next week dates from selected date.

* Shift + RIGHT -  It selects the next date from selected date.

* Shift + LEFT -  It selects the previous date from selected date.

*  Shift + HOME - It selects the date range from first day of month to current selected date.

*  Shift + END - It selects the date range from current selected date to last date of month.


### Multiple selection programmatically

Multiple dates in the calendar control can be selected through programmatically by adding dates to the `SelectedDates` collection. If the date which passed for adding with selected dates is not fall within minimum or maximum range or contains in blackout dates, it will not be added to selected dates. The following code example illustrates how to add the selected dates programmatically. In the below code example blackout dates contains the first date which is added to selected dates. So except that firstly added date, other dates ar added to selected dates.

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

`BlackoutDates` refers the disabled dates that restrict the user from selecting it. List of dates can be provided to set the `BlackoutDates` for SfCalendar.  The following code example illustrates how to set the `BlackoutDates`.

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

## Minimum DateTime

`MinDate` can help to restrict the `SelectedDate` of calendar falls lesser than specific date. If the `SelectedDate` of calendar is less than `MinDate`, then the `SelectedDate` property reset to `MinDate`. When the `MinDate` is set, if the new `MinDate` value is greater than the `MaxDate`, then the `MaxDate` reset to the `MinDate`. 

## Maximum DateTime

`MaxDate` can help to restrict the `SelectedDate` of calendar falls greater than specific date. If the `SelectedDate` of calendar is greater than `MaxDate`, then the `SelectedDate` property reset to `MaxDate`. When the `MaxDate` is set, if the `MinDate` property is greater than the new `MaxDate`, then the `MinDate` reset to the `MaxDate`. 

Sometimes, the value needs to be restricted between some date range. In that scenario `MinDate` and `MaxDate` helps to select only the dates between these range and dates other than this range will not be displayed calendar.

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

## Handle Selection change
 
 Restrict to set selected date can also be handled on-demand. While changing selection, based on the new selected date user can restrict selection change by handle the `SelectionChanging` event. 
 
 `SelectionChanging` event invoked before the selected date changed in Calendar. The `SelectionChangingEventArgs` provides the following properties for the `SelectionChanging` event.

* OldValue - Old SelectedDate of SfCalendar.
* NewValue - New SelectedDate of SfCalendar.

`SelectionChanged` event invoked after the selected date changed in Calendar. The `SelectionChangedEventArgs` provides the following properties for the `SelectionChanged` event.

* OldValue - Old selected date of SfCalendar.
* NewValue - New selected date of SfCalendar.
* IsMultipleDatesSelected - Indicates whether multiples dates are selected in calendar or not. 

The following code example illustrates how to restrict selection change on-demand.

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

Selected dates of the calendar control will be cleared when select the single date. Calendar control also provides support to remove single date from the selected dates by selecting the already selected date while press the `CTRL` key.

### Clear selected dates programmatically

Selected dates of the calendar control can be removed from selection by programmatically. SfCalendar provides `ClearSelection` method that helps to remove already selected dates and also provide options to select the new date. The following code example illustrates how to remove the sleected dates and select new date.

{% tabs %}

{% highlight C# %}

// Clear the selected dates and set the newdate as selected date

sfCalendar.ClearSelection(new DateTime(2018, 02, 16));

{% endhighlight  %}

{% endtabs %} 

![](selection-images/selection.png)