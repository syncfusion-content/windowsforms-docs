---
layout: post
title: Getting Started| WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: SfForm
documentation: ug
---

# Getting Started

## Assembly Deployment

The following list of assembly should be added as reference to use `SfForm` in any application:

<table>
<tr>
<td>
{{'Required assembly'| markdownify }}
</td>
<td>
{{'Description'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Syncfusion.Core.WinForms assembly contains the theme related classes for the Syncfusion controls and basic components like SfScrollFrame, SfButton, SfForm, SfToolTip and SfScrollControl.
</td>
</tr>
</table>

## Converting Standard Form into SfForm

The default form can be changed into SfForm by the following steps:

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

## Title Bar Customization

By default, the SfForm loads with the default appearance, that  can be customized by using the `TitleBarStyleInfo` property. It contains all the settings for the appearance of the form.


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

## Border Customization

The borders of the form can be customized by using the `Style.Border` and `Style.InactiveBorder` properties.


{% tabs %}
{% highlight c# %}
this.Style.Border = new Pen(Color.Black, 5);
this.Style.InactiveBorder = new Pen(Color.Gray, 5);
{% endhighlight %}
{% endtabs %}


![](Getting-Started_images/Getting-Started_img3.jpeg)

## Loading User Control to the Title Bar

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

