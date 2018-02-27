---
layout: post
title: Getting Started| WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: SfButton
documentation: ug
---

# Getting Started

## Assembly deployment

The following assembly needs to be added as reference to use **SfButton** control in any application,

<table>
<tr>
<td>
{{'**Required Assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Syncfusion.Core.WinForms assembly contains the theme related classes for the Syncfusion controls and basic components like{{'**SfScrollFrame**'| markdownify }}, {{'**SfButton**'| markdownify }}, {{'**SfToolTip** '| markdownify }}and {{'**SfForm**'| markdownify }}.
</td>
</tr>
</table>

## Adding SfButton into a Form

This section describes how to add the **SfButton** to a form.

### Through designer

To add a **SfButton** to form, drag and drop a **SfButton** from the toolbox onto the surface of the form designer.

![](SfButton_images/SfButton_img1.jpeg)

### Through code

To programmatically add the **SfButton** to form, create a new instance of the SfButton and add it to the form **Controls** collection.


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

## Performing action on SfButton click

**SfButton** allows to add the click event in two ways,
1. Adding the click event by double click the **SfButton** in designer.
2. Programmatically raises the click event of the **SfButton**.

Please find the code to show message box while perform the click action,

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
