---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: How to add SfCalendar and enable its basic features.
platform: WindowsForms
control: SfCalendar 
documentation: ug
---

# Getting Started

This section briefly describes how to design a `SfCalendar` control in a Windows Forms Application.

* Adding SfCalendar control 
* Configuring SfCalendar

## Creating simple application with SfCalendar

In this walk through, you will create Windows Forms Application that contains SfCalendar control.

1. [Creating project](#creating-the-project)
2. [Adding control via Designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Configuring date range](#configuring-date-range)
5. [Configure BlackoutDates](#configure-blackoutdates)
6. [Configure SpecialDates](#configure-specialdates)
7. [Configure to allow multiple selection](#configure-to-allow-multiple-selection)
8. [Configure number of weeks in view](#configure-number-of-weeks-in-view)
9. [Configure first day of week](#configure-first-day-of-week)
10. [Configure to show week number](#configure-to-show-week-number)

### Creating the project

Create new Windows Forms Project in Visual Studio to display SfCalendar with date information.

### Adding control via Designer

SfCalendar control can be added to the application by dragging it from Toolbox and dropping it in designer view. The required assembly references will be added automatically.

![](getting-started-images/gettingstarted.png) 

### Adding control manually in Code

In order to add control manually in C#, do the below steps,

1. Add the below required assembly references to the project,
	* Syncfusion.Core.WinForms.dll
	* Syncfusion.SfInput.WinForms.dll

2. Include the namespaces **Syncfusion.WinForms.Input**

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 

2. Create `SfCalendar` control instance and add it to the Form.

{% tabs %}

{% highlight C# %}

SfCalendar sfCalendar = new SfCalendar();

this.Controls.Add(sfCalendar);

{% endhighlight %}

{% highlight VB %}

Dim sfCalendar As SfCalendar = New SfCalendar

Me.Controls.Add(sfCalendar)

{% endhighlight %}

{% endtabs %}

## Configure date range

`SfCalendar` prevent users from selecting dates within a specified minimum and maximum range. To specify the range, set start date and end date to `MinDate` and `MaxDate` properties respectively.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();

this.Controls.Add(calendar);

calendar.Value = new DateTime(2018, 1, 12);

calendar.MinDate = new DateTime(2018, 1, 05);

calendar.MaxDate = new DateTime(2018, 1, 25);

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Dim calendar As Syncfusion.WinForms.Input.SfCalendar = New Syncfusion.WinForms.Input.SfCalendar

Me.Controls.Add(calendar)

calendar.Value = New DateTime(2018, 1, 12)

calendar.MinDate = New DateTime(2018, 1, 5)

calendar.MaxDate = New DateTime(2018, 1, 25)

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/minmax.png)

## Configure BlackoutDates

`BlackoutDates` refers the disabled dates that restrict the user from selecting it. A date collection can be provided to set the `BlackoutDates` for this control. Below code example illustrates how to add blackout dates to calendar.

{% tabs %}

{% highlight C# %}

//Setting the Blackout Dates

var weekends = GetDaysBetween(minDateTimeEdit.Value.Value, maxDateTimeEdit.Value.Value)
        .Where(d => d.DayOfWeek == DayOfWeek.Saturday || d.DayOfWeek == DayOfWeek.Sunday);

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

## Configure SpecialDates

`SfCalendar` allows to highlight special dates with icons and descriptions. Special dates to calendar can be added through `SpecialDates`collection.
Below code illustrates how to add the special dates in calendar.

{% tabs %}

{% highlight C# %}

        SpecialDate specialDate1 = new SpecialDate();

        SpecialDate specialDate2 = new SpecialDate();

        SpecialDate specialDate3 = new SpecialDate();

        SpecialDate specialDate4 = new SpecialDate();  

        List<SpecialDate> SpecialDates = new List<SpecialDate>();      
         
        specialDate1.BackColor = System.Drawing.Color.White;

        specialDate1.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, ((byte)(0)));

        specialDate1.ForeColor = System.Drawing.Color.Magenta;

        specialDate1.Image = Properties.Resources.icons_Womens_day;

        specialDate1.Description = "International Women’s Day";

        specialDate1.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate1.IsDateVisible = false;

        specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;

        specialDate1.Value = new System.DateTime(2018, 3, 8, 0, 0, 0, 0);
            
        specialDate2.BackColor = System.Drawing.Color.White;

        specialDate2.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, ((byte)(0)));

        specialDate2.ForeColor = System.Drawing.Color.Magenta;

        specialDate2.Description = "World Forestry Day";

        specialDate2.Image = Properties.Resources.Icon_World_Forestry_Day;

        specialDate2.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate2.IsDateVisible = false;

        specialDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;

        specialDate2.Value = new System.DateTime(2018, 3, 21, 0, 0, 0, 0);
            
        specialDate3.BackColor = System.Drawing.Color.White;

        specialDate3.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, ((byte)(0)));

        specialDate3.ForeColor = System.Drawing.Color.Magenta;

        specialDate3.Image = Properties.Resources.Icon_Water_day;

        specialDate3.Description = "World Day for Water";

        specialDate3.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate3.IsDateVisible = false;

        specialDate3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate3.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;

        specialDate3.Value = new System.DateTime(2018, 3, 24, 0, 0, 0, 0);
        
        specialDate4.BackColor = System.Drawing.Color.White;

        specialDate4.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, ((byte)(0)));

        specialDate4.ForeColor = System.Drawing.Color.Magenta;

        specialDate4.Image = Properties.Resources.Icon_Healthy_day;

        specialDate4.Description = "World Health Day";

        specialDate4.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate4.IsDateVisible = false;

        specialDate4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;

        specialDate4.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;

        specialDate4.Value = new System.DateTime(2018, 4, 7, 0, 0, 0, 0);

        SpecialDates.Add(specialDate1);

        SpecialDates.Add(specialDate2);

        SpecialDates.Add(specialDate3);

        SpecialDates.Add(specialDate4);

        this.sfCalendar.SpecialDates = SpecialDates;       
  
{% endhighlight  %}

{% highlight VB %}

 Private Sub InitializeComponent()

        Me.components = New System.ComponentModel.Container
 
        Dim specialDate1 As SpecialDate = New SpecialDate

        Dim specialDate2 As SpecialDate = New SpecialDate

        Dim specialDate3 As SpecialDate = New SpecialDate

        Dim specialDate4 As SpecialDate = New SpecialDate

        Dim SpecialDates As List(Of SpecialDate) = New List(Of SpecialDate)

        
        specialDate1.BackColor = System.Drawing.Color.White

        specialDate1.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, CType(0,Byte))

        specialDate1.ForeColor = System.Drawing.Color.Magenta

        specialDate1.Image = Properties.Resources.icons_Womens_day

        specialDate1.Description = "International Womens Day"

        specialDate1.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate1.IsDateVisible = false

        specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage

        specialDate1.Value = New Date(2018, 3, 8, 0, 0, 0, 0)

        specialDate2.BackColor = System.Drawing.Color.White

        specialDate2.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, CType(0,Byte))

        specialDate2.ForeColor = System.Drawing.Color.Magenta

        specialDate2.Description = "World Forestry Day"

        specialDate2.Image = Properties.Resources.Icon_World_Forestry_Day

        specialDate2.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate2.IsDateVisible = false

        specialDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage

        specialDate2.Value = New Date(2018, 3, 21, 0, 0, 0, 0)

        specialDate3.BackColor = System.Drawing.Color.White

        specialDate3.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, CType(0,Byte))

        specialDate3.ForeColor = System.Drawing.Color.Magenta

        specialDate3.Image = Properties.Resources.Icon_Water_day

        specialDate3.Description = "World Day for Water"

        specialDate3.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate3.IsDateVisible = false

        specialDate3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate3.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage

        specialDate3.Value = New Date(2018, 3, 24, 0, 0, 0, 0)

        specialDate4.BackColor = System.Drawing.Color.White

        specialDate4.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, 
                                               System.Drawing.GraphicsUnit.Point, CType(0,Byte))

        specialDate4.ForeColor = System.Drawing.Color.Magenta

        specialDate4.Image = Properties.Resources.Icon_Healthy_day

        specialDate4.Description = "World Health Day"

        specialDate4.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate4.IsDateVisible = false

        specialDate4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter

        specialDate4.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage

        specialDate4.Value = New Date(2018, 4, 7, 0, 0, 0, 0)
        
        SpecialDates.Add(specialDate1)

        SpecialDates.Add(specialDate2)

        SpecialDates.Add(specialDate3)
        
        SpecialDates.Add(specialDate4)

        Me.sfCalendar.SpecialDates = SpecialDates

    End Sub

{% endhighlight  %}

{% endtabs %}  

![](cell-customization-images/specialdates.png)

## Configure to allow multiple selection

SfCalendar control allows to select multiple dates by setting the `AllowMultipleSelection` property to true. The following code example illustrates the same.

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

![](getting-started-images/multiselection.png)

## Configure number of weeks in view

The number of weeks shown in the month view can be changed by setting the `NumberOfWeeksInView` property as follows.

{% tabs %}

{% highlight C# %}

// Setting the Number of weeks in View

this.sfCalendar.NumberOfWeeksInView = 8;

{% endhighlight  %}

{% highlight VB %}

' Setting the Number of weeks in View

Me.sfCalendar.NumberOfWeeksInView = 8

{% endhighlight  %}

{% endtabs %} 

![](getting-started-images/numberofweeksinview.png)

## Configure first day of week

The first day of a week can be changed by setting `FirstDayOfWeek` property. The following code example shows how to set `FirstDayofWeek` property.

{% tabs %}

{% highlight C# %}

//Setting the First Day Of Week

this.SfCalendar1.FirstDayOfWeek = DayOfWeek.Monday;

{% endhighlight  %}

{% highlight VB %}

'Setting the First Day Of Week

Me.SfCalendar1.FirstDayOfWeek = DayOfWeek.Monday

{% endhighlight  %}

{% endtabs %} 

![](getting-started-images/firstdayofweek.png)

## Configure to show week number

The week number of current week in a year can be shown in the calendar control by setting `ShowWeekNumber` property to true as follows.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

this.SfCalendar1.ShowWeekNumber = true;

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Me.SfCalendar1.ShowWeekNumber = true

{% endhighlight  %}

{% endtabs %} 

![](appearance-images/showweeknumber.png)