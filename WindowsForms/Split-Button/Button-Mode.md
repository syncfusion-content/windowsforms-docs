---
layout: post
title: Button-Mode | WindowsForms | Syncfusion
description: button mode
platform: WindowsForms
control: SplitButton 
documentation: ug
---

# Button Mode

This feature enables you to set the button in normal or toggle mode.

* Norma Mode -  Execute normal button command
* Toggle Mode  - Execute toggle mode click event

## Setting button mode

You can set the button mode using the _ButtonMode_ property. 

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
Setting Button State for Toggle Mode

{% endhighlight %}
{% endtabs %}

You can set the button state using the _IsButtonChecked_ property. When this is set to true button will be in _Checked_ state. When this is set to false button will be in Unchecked state. This Property will active only When this SplitButton in Toggle Mode.

The following code illustrates how to set the button in checked state:

{% tabs %}
{% highlight c# %}

splitButton1.isButtonChecked = true;

{% endhighlight %}

{% highlight vb %}

splitButton1.isButtonChecked = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to set the button in unchecked state:

{% tabs %}
{% highlight c# %}

splitButton1.isButtonChecked = false;

{% endhighlight %}

{% highlight vb %}

splitButton1.isButtonChecked = False
				
{% endhighlight %}
{% endtabs %}
