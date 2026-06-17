---
layout: post
title: Stop Responding in Windows Forms AI AssistView control | Syncfusion
description: Learn about the Stop Responding feature in the AI AssistView control that allows users to cancel an ongoing AI response by clicking the Stop Responding button.
platform: windowsforms
control: SfAIAssistView
documentation: ug
---

# Stop Responding in WinForms AI AssistView

The **SfAIAssistView** control includes a **Stop Responding** feature that allows users to cancel an ongoing AI response by clicking the **Stop Responding** button. This feature ensures that users can interrupt the response if it is no longer needed.

## EnableStopResponding

By default, the **Stop Responding** button is not displayed. To enable it, set the **[EnableStopResponding](https://help.syncfusion.com/windowsforms/ai-assistview/stop-responding)** property to `true`.

{% tabs %}

{% highlight c# %}

    SfAIAssistView sfAIAssistView = = new SfAIAssistView();
    sfaiAssistView1.EnableStopResponding = true;

{% endhighlight %}

{% endtabs %}

The button displays when EnableStopResponding is true.

## Stop Responding Event

The **SfAIAssistView** control provides the **StopRespondingButtonClicked** event. This is triggered when the **Stop Responding** button is clicked. You can handle this action to stop an ongoing AI response by subscribing to the **StopRespondingButtonClicked** event:

{% tabs %}

{% highlight c# %}

    sfaiAssistView1.StopRespondingButtonClicked += SfaiAssistView1_StopResponding;

    private void SfaiAssistView1_StopResponding(object sender, EventArgs e)
    {
        // Handle the Stop Responding action
        CancelAIRequest();
    }

    private System.Threading.CancellationTokenSource cts;
    public void CancelAIRequest()
    {
        if (cts != null && !cts.IsCancellationRequested)
            cts.Cancel();
    }

{% endhighlight %}

{% endtabs %}

## Customization

The button text and hold duration in **SfAIAssistView** can be customized using the **[StopRespondingButtonText](https://help.syncfusion.com/windowsforms/ai-assistview/stop-responding)**, **[StopRespondingButtonCancelingText](https://help.syncfusion.com/windowsforms/ai-assistview/stop-responding)**, and **[StopRespondingHoldSeconds](https://help.syncfusion.com/windowsforms/ai-assistview/stop-responding)** properties. This allows you to set the button text, cancelling text, and hold time for the **Stop Responding** button.

{% tabs %}

{% highlight c# %}

    // Set button text
    sfaiAssistView1.StopRespondingButtonText = "⏹ Stop";

    // Set cancelling text (shown while cancelling)
    sfaiAssistView1.StopRespondingButtonCancelingText = "Stopping...";

    // Set hold time (seconds button stays disabled after click)
    sfaiAssistView1.StopRespondingHoldSeconds = 2;

{% endhighlight %}

{% endtabs %}

## Customization

The button text and hold duration in **SfAIAssistView** can be customized using the **StopRespondingButtonText**, **StopRespondingButtonCancelingText**, and **StopRespondingHoldSeconds** properties. This allows you to set the button text, cancelling text, and hold time for the **Stop Responding** button.

{% tabs %}

{% highlight c# %}

    // Set button text
    sfaiAssistView1.StopRespondingButtonText = "⏹ Stop";

    // Set cancelling text (shown while cancelling)
    sfaiAssistView1.StopRespondingButtonCancelingText = "Stopping...";

    // Set hold time (seconds button stays disabled after click)
    sfaiAssistView1.StopRespondingHoldSeconds = 2;

{% endhighlight %}

{% endtabs %}
