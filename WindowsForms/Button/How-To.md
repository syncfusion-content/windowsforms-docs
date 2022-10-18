---
layout: post
title: How To | WindowsForms | Syncfusion
description: Learn here about How To questions of Syncfusion Essential Studio Windows Forms SfButton control, its elements and more.
platform: WindowsForms
control: SfButton
documentation: ug
---

# How To Questions of Windows Forms SfButton

## Set the SfButton as Accept or Cancel Button to the Form

This section describes how to set the SfButton as Accept or Cancel button to the form.

### Accept Button

The SfButton can be set as Accept button to a form by setting the AcceptButton property of the form.

{% tabs %}
{% highlight c# %}
//Sets the SfButton to the Accept button of form
this.AcceptButton = sfButton1;

{% endhighlight %}
{% endtabs %}

**Note**: The Accept button might not be activated if the currently selected control on the form intercepts the ENTER key and processes it.

### Cancel Button

The SfButton can be set as Cancel button to a form by setting the CancelButton property of the form.

{% tabs %}
{% highlight c# %}
//Sets the SfButton to the Cancel button of form
this.CancelButton = sfButton2;

{% endhighlight %}
{% endtabs %}

**Note**: The Cancel button may not work if another control on the form intercepts the ESC key.

## Show the Tooltip on Mouse Hover

The SfToolTip can be shown on the SfButton when the mouse hovering. Follow the steps to perform this feature:

1. Create a new instance of SfToolTip.
2. Initialize the SfToolTip to the SfButton by using the SetToolTip method.

{% capture codesnippet1 %}​
{% tabs %}
{% highlight c# %}
//Creating new instance for the SfToolTip.
SfToolTip sfToolTip1 = new SfToolTip();

//Initialize the SfToolTip to the SfButton to show the information.
sfToolTip1.SetToolTip(this.sfButton1, " The ToolTip information of the Button control.");
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}


![SfButton_img18](SfButton_images/SfButton_img18.jpeg)
