---
layout: post
title: Calculator Events in Windows Forms Calculator control | Syncfusion®
description: Learn about Calculator Events support in Syncfusion® Windows Forms Calculator control and more details.
platform: windowsforms
control: Calculator
documentation: ug
---

# Calculator Events in Windows Forms Calculator

The event for [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) and [PopupCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PopupCalculator.html) control are discussed in this section.

## ValueCalculated Event

The [ValueCalculated event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) fires each time the value of the [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) is changed. That is, even if you just press any digit, this event will be handled. 

The event  handler receives an argument of type [CalculatorValueCalculatedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorValueCalculatedEventArgs.html). To get the final result, use [LastAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorValueCalculatedEventArgs.html#Syncfusion_Windows_Forms_Tools_CalculatorValueCalculatedEventArgs_LastAction) property of the [CalculatorValueCalculatedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorValueCalculatedEventArgs.html) in the [ValueCalculated event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html). 

We can retrieve the value of the [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) after '=' button is pressed using the following code snippet.

{% tabs %}
{% highlight c# %}

private void calcctrl_ValueCalculated(object sender,CalculatorValueCalculatedEventArgs arg) 
{

// Checks the final answer after '=' is pressed.
    if(!arg.ErrorCondition && arg.LastAction == CalcActions.CalcOperatorEquals)  
    MessageBox.Show(calcctrl.Value.ToString());
}

{% endhighlight %}

{% highlight vb %}

Private Sub calcctrl_ValueCalculated(ByVal sender As Object, ByVal arg As CalculatorValueCalculatedEventArgs) 
If Not arg.ErrorCondition AndAlso arg.LastAction = CalcActions.CalcOperatorEquals Then 

' Checks the final answer after '=' is pressed.
MessageBox.Show(calcctrl.Value.ToString()) 
End If 
End Sub

{% endhighlight %}
{% endtabs %}

![Calculation performed](Overview_images/Overview_img127.jpeg) 

## Closing Event

### Closing Event of the PopupCalculator Control

This [PopupCalculator closing event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PopupCalculator.html) will be raised by [PopupCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PopupCalculator.html) when closing after "=" button was clicked. We can implement this event to display the final value of the [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) as follows.

{% tabs %}
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

{% highlight vb %}

Private Me.popupCalculator1.Closing += New PopupCalculatorClosingEventHandler(Me.HandlePopupCalculatorClosingEvent)
Public Sub HandlePopupCalculatorClosingEvent(ByVal sender As Object, ByVal args As CalculatorClosingEventArgs)

'Event logging
Dim item As String = args.FinalValue.ToString()
Dim eventlogmessage As String = String.Format("Event: {0} FinalValue: {1}" & Constants.vbCrLf, "CalculatorClosing", item)
Console.WriteLine(eventlogmessage)
End Sub

{% endhighlight %}
{% endtabs %}

![Calculator result](Overview_images/Overview_img128.jpeg) 

