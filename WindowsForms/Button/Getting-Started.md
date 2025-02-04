---
layout: post
title: Getting Started with WinForms Button control | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Button (SfButton) control and more details.
platform: windowsforms
control: SfButton
documentation: ug
---

# Getting Started with Windows Forms Button (SfButton)

## Assembly Deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfbutton) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application. 

## Adding SfButton into a Form

This section describes how to add the SfButton to a form.

### Through Designer

To add the SfButton to form, drag and drop the SfButton from the toolbox to the surface of the form designer.

![SfButton_img1](SfButton_images/SfButton_img1.jpeg)

### Through Code

To programmatically add the SfButton to form, create a new instance of the SfButton and add it to the form the Controls collection.


{% tabs %}
{% highlight c# %}
//Create a new instance of the SfButton control
SfButton sfButton1 = new Syncfusion.WinForms.Buttons.SfButton();

//Initialize the font, location, name, size and text for the SfButton.
sfButton1.Font = new System.Drawing.Font("Segoe UI Semibold", 9F);
sfButton1.Location = new System.Drawing.Point(60, 62);
sfButton1.Name = "sfButton1";
sfButton1.Size = new System.Drawing.Size(96, 28);
sfButton1.Text = "sfButton1";

//Add the SfButton into the form.
this.Controls.Add(sfButton1);

{% endhighlight %}
{% endtabs %}

## Performing Action on the SfButton Click

The SfButton allows adding the click event in two ways:

1. Adding the click event by double clicking the SfButton in designer.
2. Programmatically raises the clicking event of the SfButton.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
//Raises the click event of SfButton
sfButton1.Click += sfButton1_Click;

//Perform any action on click action method
private void sfButton1_Click(object sender, EventArgs e)
{
    MessageBox.Show("SfButton was clicked");    
}
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}