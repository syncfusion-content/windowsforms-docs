---
layout: post
title: Time-Interval
description: time interval
platform: WindowsForms
control: Schedule
documentation: ug
---

# Time Interval

This topic illustrates the time interval format options for scheduling appointments.

## Recurrence Rule

The RecurrenceRule is a string value that contains the details of the recurrence appointments with repeated rule types like daily, monthly, yearly, every second, every minute, every hour, how many days it needs to render or count, what is the interval, the time period to render the appointment, etc. RecurrenceRule has the following properties and based on these property values, recurrence appointments are rendered in the Schedule control.





<table>
<tr>
<td>
S.No</td><td>
Rule Name</td><td>
Purpose</td></tr>
<tr>
<td>
1.</td><td>
Every DAY</td><td>
Maintains the repeat type value Every Day.Syntax:{StartDate};{EndDate};Every DAY {NumberOfDay}Example:10/08/2015;10/15/2015;Every DAY 1</td></tr>
<tr>
<td>
2.</td><td>
Every WEEKDAY</td><td>
Maintains the repeat type value for the selected Weekdays.Syntax:{StartDate};{EndDate};Every WEEKDAYExample:10/08/2015;11/08/2015;Every WEEKDAY</td></tr>
<tr>
<td>
3.</td><td>
Every WEEKEND</td><td>
Maintains the repeat type value for the selected Weekends.Syntax:{StartDate};{EndDate};Every WEEKENDExample:10/08/2009;11/08/2009;Every WEEKEND</td></tr>
<tr>
<td>
4.</td><td>
Every WEEK</td><td>
Maintains the repeat type value for the selected Week.Syntax:{StartDate};{EndDate};Every WEEK on {DAY};Every WEEK on {DAY}Example:10/08/2015;11/08/2015;Every WEEK on SUN;Every WEEK on MON;</td></tr>
<tr>
<td>
5.</td><td>
Every SEC</td><td>
Maintains the repeat type value for every mentioned second for the appointed date.Syntax:{StartDate};{EndDate};Every DAY {NumberOfDay};Every SEC {Interval}Example:10/08/2015;10/15/2015;Every DAY 1;Every SEC 120;10/08/2015;11/08/2015;Every WEEKDAY; Every SEC 120;</td></tr>
<tr>
<td>
6.</td><td>
Every MIN</td><td>
Maintains the repeat type value for every mentioned minute for the appointed date.Syntax:{StartDate};{EndDate};Every DAY {NumberOfDay};Every MIN {Interval}Example:10/08/2015;10/15/2015;Every DAY 1;Every MIN 10;10/08/2015;11/08/2015;Every WEEKDAY; Every MIN 10;</td></tr>
<tr>
<td>
7.</td><td>
Every HR</td><td>
Maintains the repeat type value for every mentioned hour for the appointed date.Syntax:{StartDate};{EndDate};Every DAY {NumberOfDay};Every HR {Interval}Example:10/08/2015;10/15/2015;Every DAY 1;Every HR 10;10/08/2015;11/08/2015;Every WEEKDAY; Every HR 10;</td></tr>
<tr>
<td>
8.</td><td>
Every MONTH</td><td>
Maintains the repeat type value for every Month on the selected date or week.Syntax:{StartDate};{EndDate};Every MONTH on {Date}{StartDate};{EndDate};Every MONTH on {Day}:{WhichWeek}Example:5/08/2009;10/08/2009;Every MONTH on 205/08/2009;10/08/2009;Every MONTH on WED:2</td></tr>
<tr>
<td>
9.</td><td>
Every QUARTER</td><td>
Maintains the repeat type value for every quarter.Syntax:{StartDate};{EndDate};Every QUARTER on {Date} after MONTH:{diffmonth}{StartDate};{EndDate};Every QUARTER on {Day}:{Date} after MONTH:{diffmonth}Example:10/13/2015;10/13/2016;Every QUARTER on 20 after MONTH:110/13/2015;10/13/2016;Every QUARTER on MON:1 after MONTH:1</td></tr>
<tr>
<td>
10.</td><td>
Every YEAR</td><td>
Maintains the repeat type value for every year.Syntax:{StartDate};{EndDate};Every YEAR on {Month}{Date}{StartDate};{EndDate};Every YEAR on {DAY}:{whichWeek} after {Month}Example:10/13/2015;10/13/2017;Every YEAR on JAN 2010/15/2015;10/15/2017;Every YEAR on MON:1 after JAN</td></tr>
</table>


## Setting the Time Interval in Seconds Format

The Schedule control, by default, allows you to set the time interval for scheduling appointments only in hours and minutes format. Now, you can also include seconds in the time interval by enabling the AllowSecondsInAppointment property.

[C#]

this.scheduleControl1.AllowSecondsInAppointment = true;



[VB]

Me.scheduleControl1.AllowSecondsInAppointment = True



{{ '![](Time-Interval_images/Time-Interval_img1.png)' | markdownify }}
{:.image }


## Setting the Recurrence Appointments in Seconds

By default, Schedule control allows you to add the recurrence appointments only for each day, month, or year. Now, recurrence appointments in the Schedule WF can also be organized in seconds, minutes, and hours. To add the recurrence appointments in seconds, it is necessary to enable the [AllowSecondsInAppointment](http://help.syncfusion.com/ug/windows%20forms/documents/settingthetimeinterv.htm)property. The minimum value that can be used for adding the recurrence appointments is 60 seconds. When the value goes below 60 seconds, then by default, the appointment time assigns 60 seconds. Recurrence Appointments can be added in two ways. 

### Adding recurrence by using Appointment Recurrence Dialog

Recurrence Appointments can be added by using the appointment recurrence dialog box that is available in the Appointment Form. The Appointment Form can be opened by double clicking any day in the schedule control. The following steps need to be followed.

1. Enter the contents in the subject.
2. Uncheck the All Day event.
3. Enter the Start Time and End Time values.

{{ '![C:/Users/Usha Clementine/AppData/Roaming/Skype/ushah_1933/media_messaging/media_cache/^D7E225994120331E40BD64E3029818F53B14DCAF00CBEDA431^pimgpsh_fullsize_distr.jpg](Time-Interval_images/Time-Interval_img2.png)' | markdownify }}
{:.image }




4. Now click the Make Recurring button to open the Appointment Recurrence Dialog.

{{ '![C:/Users/Usha Clementine/AppData/Roaming/Skype/ushah_1933/media_messaging/media_cache/^B7E1DA37FC59D3BB6D6C41CD1E63B09765AB4C992B642D7F30^pimgpsh_fullsize_distr.jpg](Time-Interval_images/Time-Interval_img3.jpeg)' | markdownify }}
{:.image }




5. The highlighted area above is the newly implemented recurrence settings.
6. Choose the desired option to make the recurrence appointment in the schedule control and press OK.
7. Now Save and Close. 
### Adding recurrence by using the RecurrenceRule property


Recurrence appointments can also be added by using the RecurrenceRule property. The RecurrenceRule is a string value that contains the details of the recurrence appointment with repeated rule types like daily, monthly, yearly, every second, every minute, every hour, how many days it needs to render or count, what is the interval, the time period to render the appointment, etc. The rules that are available in the Recurrence Rule property are listed in the following link.

[RecurrenceRule](http://help.syncfusion.com/ug/windows%20forms/index.html)

In order to use the recurring appointments data provider of the Schedule control, the IRecurringScheduleAppointment interface should be implemented. Refer to the following code to achieve this.

[C#]



IRecurringScheduleDataProvider dp = scheduleProvider as IRecurringScheduleDataProvider;

IScheduleAppointment app = scheduleProvider.NewScheduleAppointment();

IRecurringScheduleAppointment item = app as IRecurringScheduleAppointment;

if (item != null)

{

item.StartTime = new DateTime(2015, 05, 06, 1, 0, 0);

item.EndTime = new DateTime(2015, 05, 06, 2, 0, 0);

item.Subject = "Call Joe";

item.RecurrenceRule = "05/06/2015 ;05/07/2015 ;Every DAY;EVERY MIN 10";

dp.AddNewRecurringAppointments(item, new DateTime(2015, 09, 09));

}





[VB]



Dim dp As IRecurringScheduleDataProvider = TryCast(scheduleProvider, IRecurringScheduleDataProvider)

Dim app As IScheduleAppointment = scheduleProvider.NewScheduleAppointment()

Dim item As IRecurringScheduleAppointment = TryCast(app, IRecurringScheduleAppointment)

If item IsNot Nothing Then

item.StartTime = New DateTime(2015, 05, 06, 1, 0, 0)

item.EndTime = New DateTime(2015, 5, 6, 2, 0, 0)

item.Subject = "Call Joe"

item.RecurrenceRule = "05/06/2015 ;05/07/2015 ;Every DAY;EVERY MIN 10"

dp.AddNewRecurringAppointments(item, New DateTime(2015, 09, 09))

End If



The following screenshot displays appointments shown in the day view every 10 minutes from 1:00 AM to 2:00 AM.

{{ '![](Time-Interval_images/Time-Interval_img4.png)' | markdownify }}
{:.image }


