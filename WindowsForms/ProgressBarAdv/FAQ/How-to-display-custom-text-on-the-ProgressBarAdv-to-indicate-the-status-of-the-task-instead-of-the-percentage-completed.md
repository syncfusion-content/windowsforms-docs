---
layout: post
title: How-to-display-custom-text-on-the-ProgressBarAdv-to-indicate-the-status-of-the-task-instead-of-the-percentage-completed | WindowsForms | Syncfusion
description: how to display custom text on the progressbaradv to indicate the status of the task instead of the percentage completed
platform: WindowsForms
control: Notification Package 
documentation: ug
---

# How to display custom text on the ProgressBarAdv to indicate the status of the task instead of the percentage completed?

This can be done using the steps given below.

1. Set the ProgressBarAdv's TextStyle property to 'Custom'.
2. Handle the ProgressBarAdv's ValueChanged event and set e.Text = "your desired text" and e.Handled = True.

{% tabs %}

{% highlight C# %}

// Declare and initialize count.

int count = 0;



// Set the code for the timer_Tick event.

private void timer1_Tick(object sender, System.EventArgs e)

{

if (this.progressBarAdv1.Value < 100)

this.progressBarAdv1.Value += 10;

else

this.progressBarAdv1.Value = 0;

}



// Set the code for the button_Click event.

private void button1_Click(object sender, System.EventArgs e)

{

count++;

if (count%2 == 1)

this.timer1.Start();

else if (count%2 == 0)

this.timer1.Stop();

}



// Handle the ValueChanged event.

this.progressBarAdv1.ValueChanged +=new ProgressBarValueChangedEventHandler(progressBarAdv1_ValueChanged);



// Define the ValueChanged event.

private void progressBarAdv1_ValueChanged(object sender, Syncfusion.Windows.Forms.Tools.ProgressBarValueChangedEventArgs e)

{

e.Text = "Value Changing...." + this.progressBarAdv1.Value.ToString();

e.Handled = true;

}

{% endhighlight %}

{% highlight VB %}

' Declare and initialize count.

Dim count As Integer = 0 



' Set the code for the timer_Tick event.

Private Sub timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs)

If Me.progressBarAdv1.Value < 100 Then

Me.progressBarAdv1.Value += 10

Else

Me.progressBarAdv1.Value = 0

End If

End Sub



' Set the code for the button_Click event.

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

count += 1

If count Mod 2 = 1 Then

Me.timer1.Start()

ElseIf count Mod 2 = 0 Then

Me.timer1.[Stop]()

End If

End Sub



' Handle the ValueChanged event.

AddHandler Me.progressBarAdv1.ValueChanged, AddressOf progressBarAdv1_ValueChanged 



' Define the ValueChanged event.

Private Sub progressBarAdv1_ValueChanged(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ProgressBarValueChangedEventArgs)

e.Text = "Value Changing...." + Me.progressBarAdv1.Value.ToString()

e.Handled = True

End Sub

{% endhighlight %}

{% endtabs %}