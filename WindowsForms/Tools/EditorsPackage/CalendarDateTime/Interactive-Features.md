---
layout: post
title: Interactive Features
description: interactive features
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Interactive Features

This section covers the below topics:

## Context Menu

This section deals with replacing MonthCalendarAdv 'Go to Today' ContextMenu with a Custom Context Menu. At run-time, you can right click any calendar date and go to the today date using 'Go to Today' ContextMenu.

![](CalendarDateTime_images/Overview_img169.jpeg) 



This is the default context menu. To replace this with a custom context menu, you need to derive a Custom MonthCalendarAdv from the existing one and override the InitializeGrid so that the GetInternalGridControl method can be used to access the ContextMenu and replace it with a custom contextMenu.

It can be done programmatically using the below code snippet.



{% highlight c#  %}

//Declaring and Initializing the calendar, Context menu and menu item

private CustomMonthCalendarAdv monthCalendarAdv1;

private System.Windows.Forms.MenuItem menuItem1;

private System.Windows.Forms.ContextMenu contextMenuStrip1;

this.contextMenuStrip1 = new System.Windows.Forms.ContextMenu();

this.menuItem1 = new System.Windows.Forms.MenuItem();

this.monthCalendarAdv1 = new MonthCalendar.Form1.CustomMonthCalendarAdv();



this.contextMenuStrip1.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] {this.menuItem1});

this.menuItem1.Text = "Go To Tomorrow";

this.menuItem1.Click += new System.EventHandler(this.menuItem1_Click);



//Override the internal grid context menu using the custom context menu

private void Form1_Load_1(object sender, EventArgs e)

{

    this.monthCalendarAdv1.GetInternalGridControl().ContextMenu = this.contextMenuStrip1;

}



//Focus moves to tomorrow's date, when menu item is clicked

private void menuItem1_Click(object sender, System.EventArgs e)

{

    this.monthCalendarAdv1.Value = DateTime.Today.AddDays(1);

}



//Defining CustomMonthCalendarAdv class

public class CustomMonthCalendarAdv : Syncfusion.Windows.Forms.Tools.MonthCalendarAdv

{

    private Syncfusion.Windows.Forms.Tools.CalendarGrid internalGrid;

    // Overrides the InitializeGrid.

    protected override void InitializeGrid(ref Syncfusion.Windows.Forms.Tools.CalendarGrid grid)

    {

        base.InitializeGrid(ref grid);

        internalGrid = grid;

    }

    // Returns the internal grid.

    public Syncfusion.Windows.Forms.Tools.CalendarGrid GetInternalGridControl()

    {

        return internalGrid;

    }

}




{% endhighlight  %}
{% highlight vbnet  %}


'Declaring and Initializing the calendar, Context menu and menu item 

Private monthCalendarAdv1 As CustomMonthCalendarAdv

Private menuItem1 As System.Windows.Forms.MenuItem

Private contextMenuStrip1 As System.Windows.Forms.ContextMenu

Me.contextMenuStrip1 = New System.Windows.Forms.ContextMenu() 

Me.menuItem1 = New System.Windows.Forms.MenuItem() 

Me.monthCalendarAdv1 = New MonthCalendar.Form1.CustomMonthCalendarAdv() 

Me.contextMenuStrip1.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.menuItem1}) 

Me.menuItem1.Text = "Go To Tomorrow" 

AddHandler Me.menuItem1.Click, AddressOf Me.menuItem1_Click 



'Override the internal grid context menu using the custom context menu 

Private Sub Form1_Load_1(ByVal sender As Object, ByVal e As EventArgs)

    Me.monthCalendarAdv1.GetInternalGridControl().ContextMenu = Me.contextMenuStrip1

End Sub



'Focus moves to tomorrow's date, when menu item is clicked. 

Private Sub menuItem1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Me.monthCalendarAdv1.Value = DateTime.Today.AddDays(1)

End Sub



'Defining CustomMonthCalendarAdv class 

Public Class CustomMonthCalendarAdv

    Inherits Syncfusion.Windows.Forms.Tools.MonthCalendarAdv

    Private internalGrid As Syncfusion.Windows.Forms.Tools.CalendarGrid

    ' Overrides the InitializeGrid. 

    Protected Overloads Overrides Sub InitializeGrid(ByRef grid As Syncfusion.Windows.Forms.Tools.CalendarGrid)

        MyBase.InitializeGrid(grid)

        internalGrid = grid

    End Sub

    ' Returns the internal grid. 

    Public Function GetInternalGridControl() As Syncfusion.Windows.Forms.Tools.CalendarGrid

        Return internalGrid

    End Function

End Class

{% endhighlight   %}

![](CalendarDateTime_images/Overview_img170.jpeg) 

