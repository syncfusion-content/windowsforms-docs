---
layout: post
title: How To | WindowsForms | Syncfusion
description: How To
platform: WindowsForms
control: SfButton
documentation: ug
---

# How To

## Setting the SfButton as Accept or Cancel button of Form

This section describes how to set the **SfButton** as Accept or Cancel button of form.

### Accept Button

SfButton can be set as Accept button of a form by setting this button to the **AcceptButton** property of form.

{% tabs %}
{% highlight c# %}
//Sets the SfButton to the Accept button of form
this.AcceptButton = sfButton1;

{% endhighlight %}
{% endtabs %}

**Note**

The accept button might not be activated if the currently selected control on the form intercepts the ENTER key and processes it.

### Cancel Button

**SfButton** can be set as Cancel button of a form by setting this button to the **CancelButton** property of form.

{% tabs %}
{% highlight c# %}
//Sets the SfButton to the Cancel button of form
this.CancelButton = sfButton2;

{% endhighlight %}
{% endtabs %}

**Note**

**CancelButton** may not work if another control on the form intercepts the ESC key.

## Showing tooltip on mouse hover

The **SfToolTip** can be showing on the **SfButton** when mouse hover. Please follow the following steps to achieve this feature,

1. Create a new instance of SfToolTip.
2. Initialize the SfToolTip to the SfButton by using the **SetToolTip** method.

{% tabs %}
{% highlight c# %}
//Creating new instance for the SfToolTip.
SfToolTip sfToolTip1 = new SfToolTip();

//Initialize the SfToolTip to the SfButton to show the information.
sfToolTip1.SetToolTip(this.sfButton1, " The ToolTip information of the Button control.");
{% endhighlight %}
{% endtabs %}


![](SfButton_images/SfButton_img18.jpeg)
