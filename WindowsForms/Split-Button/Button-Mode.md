---
layout: post
title: Button Mode in Windows Forms Split Button | Syncfusion
description: Button Mode supports normal and toggle behaviors, including configurable checked and unchecked button states.
platform: WindowsForms
control: SplitButton
documentation: ug
---

# Button Mode in Windows Forms SplitButton

This feature enables you to set the button in normal or toggle mode. The `splitButton1` instance used in the examples below is assumed to be created as shown in the [Getting Started](https://help.syncfusion.com/windowsforms/split-button/getting-started) documentation.

* **Normal mode** - Executes the normal button command.
* **Toggle mode** - Executes the toggle-mode click event.

## Setting button mode

You can set the button mode using the [ButtonMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SplitButton.html) property. The default value is `ButtonMode.Normal`.

The following code illustrates how to set the button in normal mode:

{% tabs %}
{% highlight c# %}

this.splitButton1.ButtonMode = Syncfusion.Windows.Forms.Tools.ButtonMode.Normal;

{% endhighlight %}

{% highlight vb %}

Me.splitButton1.ButtonMode = Syncfusion.Windows.Forms.Tools.ButtonMode.Normal

{% endhighlight %}
{% endtabs %}

The following code illustrates how to set the button in toggle mode:

{% tabs %}
{% highlight c# %}

this.splitButton1.ButtonMode = Syncfusion.Windows.Forms.Tools.ButtonMode.Toggle;

{% endhighlight %}

{% highlight vb %}

Me.splitButton1.ButtonMode = Syncfusion.Windows.Forms.Tools.ButtonMode.Toggle

{% endhighlight %}
{% endtabs %}

## Setting button state for toggle mode

You can set the button state using the [IsButtonChecked](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SplitButton.html) property. When this is set to `true`, the button is in the checked state. When this is set to `false`, the button is in the unchecked state. This property is active only when the SplitButton is in toggle mode. The default value of `IsButtonChecked` is `false`.

The following code illustrates how to set the button in checked state:

{% tabs %}
{% highlight c# %}

splitButton1.IsButtonChecked = true;

{% endhighlight %}

{% highlight vb %}

splitButton1.IsButtonChecked = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to set the button in unchecked state:

{% tabs %}
{% highlight c# %}

splitButton1.IsButtonChecked = false;

{% endhighlight %}

{% highlight vb %}

splitButton1.IsButtonChecked = False
				
{% endhighlight %}
{% endtabs %}
