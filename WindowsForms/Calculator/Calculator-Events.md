---
layout: post
title: Calculator-Events | Windows Forms | Syncfusion
description: calculator events
platform: windowsforms
control: Calculator
documentation: ug
---

# Calculator Events

The event for Calculator control and PopupCalculator control are discussed in this section.

## ValueCalculated Event

The ValueCalculated event fires each time the value of the CalculatorControl is changed. That is, even if you just press any digit, this event will be handled. 

The event  handler receives an argument of type CalculatorValueCalculatedEventArgs. To get the final result, use LastAction property of the CalculatorValueCalculatedEventArgs in the ValueCalculated event. 

_Methods Table_

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ErrorCondition</td><td>
Specifies the error condition of the Calculator control if any.</td></tr>
<tr>
<td>
LastAction</td><td>
Gets/Sets the last action that was performed.</td></tr>
<tr>
<td>
MemoryValue</td><td>
Gets/Sets the MemoryValue of the Calculator control.</td></tr>
<tr>
<td>
Message</td><td>
Gets/Sets the custom error message when in error mode.</td></tr>
<tr>
<td>
Value</td><td>
Gets/Sets the CalculatorValue object that contains the value of the Calculator control.</td></tr>
</table>


We can retrieve the value of the Calculator control after '=' button is pressed using the following code snippet.

{% highlight c# %}



private void calcctrl_ValueCalculated(object sender,CalculatorValueCalculatedEventArgs arg) 

{

    // Checks the final answer after '=' is pressed.

if(!arg.ErrorCondition && arg.LastAction == CalcActions.CalcOperatorEquals)  

MessageBox.Show(calcctrl.Value.ToString());

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub calcctrl_ValueCalculated(ByVal sender As Object, ByVal arg As CalculatorValueCalculatedEventArgs) 

If Not arg.ErrorCondition AndAlso arg.LastAction = CalcActions.CalcOperatorEquals Then 



    ' Checks the final answer after '=' is pressed.

MessageBox.Show(calcctrl.Value.ToString()) 

End If 

End Sub

{% endhighlight %}

![](Overview_images/Overview_img127.jpeg) 



## Closing Event

### Closing Event of the PopupCalculator control

This will be raised by popupCalculator when closing after "=" button was clicked. We can implement this event to display the final value of the Calculator control as follows.

{% highlight c# %}



this.popupCalculator1.Closing += new PopupCalculatorClosingEventHandler(this.HandlePopupCalculatorClosingEvent);



public void HandlePopupCalculatorClosingEvent(object sender, CalculatorClosingEventArgs args)

{

//Event logging

string item = args.FinalValue.ToString();

string eventlogmessage = String.Format("Event: {0} FinalValue: {1}\r\n", "CalculatorClosing", item);

Console.WriteLine(eventlogmessage);

}

{% endhighlight %}

{% highlight vbnet %}



Private Me.popupCalculator1.Closing += New PopupCalculatorClosingEventHandler(Me.HandlePopupCalculatorClosingEvent)



Public Sub HandlePopupCalculatorClosingEvent(ByVal sender As Object, ByVal args As CalculatorClosingEventArgs)

    'Event logging

    Dim item As String = args.FinalValue.ToString()

    Dim eventlogmessage As String = String.Format("Event: {0} FinalValue: {1}" & Constants.vbCrLf, "CalculatorClosing", item)

    Console.WriteLine(eventlogmessage)

End Sub

{% endhighlight %}

![](Overview_images/Overview_img128.jpeg) 

