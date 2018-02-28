---
layout: post
title: Getting Started| WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: SfForm
documentation: ug
---

# Getting Started

## Assembly deployment

The following list of assemblies needs to be added as reference to use `SfForm` in any application,

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
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
Syncfusion.Core.WinForms assembly contains the theme related classes for the Syncfusion controls and basic components like SfScrollFrame, SfButton, SfForm, SfToolTip, SfScrollControl and SfSkinManager.
</td>
</tr>
</table>

## Converting a standard form to SfForm


A default Form can be changed into an SfForm by following the below given steps.

1) Create a new Windows Forms Application in Visual Studio and refer to the `Syncfusion.Core.WinForms` assembly.

2) Include the following namespace to the directives list.

{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.Controls;
{% endhighlight %}
{% endtabs %}


3) Change the base class of your form from `System.Windows.Forms.Form` to `SfForm`.


{% tabs %}
{% highlight c# %}
public partial class Form1 : SfForm
{
    public Form1()
    {
        InitializeComponent();
    }
}
{% endhighlight %}
{% endtabs %}


![](Getting-Started_images/Getting-Started_img1.jpeg)

## TitleBar customization

By default, the SfForm loads with the default appearance. The default title bar appearance of the form can be customized by using the `TitleBarStyleInfo` property. It contains all the settings that controls the appearance of the form.


{% tabs %}
{% highlight c# %}
//Sets the back color and fore color of the title bar.
this.Style.TitleBar.BackColor = Color.Black;
this.Style.TitleBar.ForeColor = Color.White;

//Sets the fore color of the title bar buttons
this.Style.TitleBar.CloseButtonForeColor = Color.White;
this.Style.TitleBar.MinimizeButtonForeColor = Color.White;
this.Style.TitleBar.MaximizeButtonForeColor = Color.White;

//Sets the hover state back color of the title bar buttons
this.Style.TitleBar.CloseButtonHoverBackColor = Color.DarkGray;
this.Style.TitleBar.MinimizeButtonHoverBackColor = Color.DarkGray;
this.Style.TitleBar.MaximizeButtonHoverBackColor = Color.DarkGray;

//Sets the pressed state back color of the title bar buttons
this.Style.TitleBar.CloseButtonPressedBackColor = Color.Gray;
this.Style.TitleBar.MaximizeButtonPressedBackColor = Color.Gray;
this.Style.TitleBar.MinimizeButtonPressedBackColor = Color.Gray;
{% endhighlight %}
{% endtabs %}


![](Getting-Started_images/Getting-Started_img2.jpeg)

## Border customization

The borders of the form can be customized by using the `Style.Border`  and `Style.InactiveBorder` properties.


{% tabs %}
{% highlight c# %}
this.Style.Border = new Pen(Color.Black, 5);
this.Style.InactiveBorder = new Pen(Color.Gray, 5);
{% endhighlight %}
{% endtabs %}


![](Getting-Started_images/Getting-Started_img3.jpeg)

## Loading user control to the TitleBar

You can load any user control to the title bar of the SfForm instead of the title bar text by using the `TitleBarTextControl` property.


{% tabs %}
{% highlight c# %}
FlowLayoutPanel searchPanel = new FlowLayoutPanel();
Label searchingLabel = new Label();
searchingLabel.Text = "Searching";
TextBox searchBox = new TextBox();
searchPanel.Controls.Add(searchingLabel);
searchPanel.Controls.Add(searchBox);

//Loads the searchPanel to the title bar.
this.TitleBarTextControl = searchPanel;
{% endhighlight %}
{% endtabs %}


![](Getting-Started_images/Getting-Started_img4.jpeg)

