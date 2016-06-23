---
layout: post
title: Why-does-the-call-to-ApplicationDoEvents-never-returns-while-updating-the-Grid-using-BeginUpdate-method | Windows Forms | Syncfusion
description: why does the call to application.doevents never returns while updating the grid using beginupdate() method
platform: windowsforms
control: Grid
documentation: ug
---

# Why does the call to Application.DoEvents never returns while updating the Grid using BeginUpdate() method

If the Grid is performing a time-consuming task, BeginUpdate() and EndUpdate() methods will be used to ensure the updates correctly reflected in the grid. 

The problem arises when users try to dispatch windows messages to the controls (triggering the Application.DoEvents) inside BeginUpdate() and EndUpdate() methods.

## Root Cause:

The root cause of the problem is that the usage of Application.DoEvents will ask WM_PAINT messages of Grid to execute, but WM_PAINT messages will be ignored since the grid is in an updating state (the WM_PAINT message will be processed by the Grid only when the EndUpdate is called). Hence the above makes an Infinite loop execution, meaning the loop will never be returned from WM_PAINT.

The above problem can be resolved in the following two ways:

## Solution 1:

If the usage of Application.DoEvents is mandatory, then the simplest way to get rid of this problem is by calling the grid.CancelUpdate before triggering Application.DoEvents. After that, the grid can be updated with the call to Grid.BeginUpdate.

## Solution 2:

Add a public static member to the class where Application.DoEvents is to be used. Then override the Grid's WndProc method and process WM_PAINT if the DoEvents loop is triggered.

{% highlight c#  %}

public static bool InDoEvents = false;

private void button1_Click(object sender, System.EventArgs e)

{

      this.gridControl1.BeginUpdate();

      this.gridControl1.Refresh();



      Console.WriteLine("before Application.DoEvents");

      Form1.InDoEvents = true;

      Application.DoEvents();

      Form1.InDoEvents = false;

      Console.WriteLine("after Application.DoEvents");



      this.gridControl1.EndUpdate();

}

public class MyGridControl : GridControl

{

       public const int WM_PAINT = 15;

       protected override void WndProc(ref System.Windows.Forms.Message msg)

       {

         if (Form1.InDoEvents && msg.Msg == WM_PAINT)

               DefWndProc(ref msg);

          else

             base.WndProc(ref msg);

       }

}

{% endhighlight   %}

{% highlight vb  %}
Public Shared InDoEvents As Boolean = False

Private Sub button1_Click(sender As Object, e As System.EventArgs)

Me.gridControl1.BeginUpdate()

Me.gridControl1.Refresh()



Console.WriteLine("before Application.DoEvents")

Form1.InDoEvents = True

Application.DoEvents()

Form1.InDoEvents = False

Console.WriteLine("after Application.DoEvents")



Me.gridControl1.EndUpdate()

End Sub

Public Class MyGridControl

Inherits GridControl

Public Const WM_PAINT As Integer = 15

Protected Overrides Sub WndProc(ByRef msg As System.Windows.Forms.Message)

If Form1.InDoEvents AndAlso msg.Msg = WM_PAINT Then

DefWndProc(msg)

Else

MyBase.WndProc(msg)

End If

End Sub

End Class



{% endhighlight   %}