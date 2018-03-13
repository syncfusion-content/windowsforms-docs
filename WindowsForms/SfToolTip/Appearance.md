---
layout: post
title: Appearance of SfToolTip for syncfusion Essential Windows Forms
description: This section explains the Appearance of the SfToolTip.
platform: windowsforms
control: SfToolTip
documentation: ug

---
# Appearance

## ToolTip control

The border color and its thickness of the `SfToolTip` can be customized by using the `BorderColor` and `BorderThickness` properties.

{% tabs %}
{% highlight c# %}
ToolTipInfo toolTipInfo1 = new ToolTipInfo();

toolTipInfo1.BorderColor = Color.Gray;

toolTipInfo1.BorderThickness = 5;

ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "The ToolTip information of the Button control.";

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button1, toolTipInfo1);



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img15.jpeg)


## ToolTip item

The appearance of `ToolTipItem` can be customized by setting the `ToolTipStyleInfo` property. The `ToolTipStyleInfo` property contains all the settings for the `ToolTipItem` appearance customization.

{% tabs %}
{% highlight c# %}
ToolTipInfo toolTipInfo1 = new ToolTipInfo();

ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "The ToolTip information of the Button control.";

toolTipItem1.Style.BackColor = Color.LightSkyBlue;

toolTipItem1.Style.ForeColor = Color.Black;

toolTipItem1.Style.TextAlignment = ContentAlignment.MiddleCenter;

toolTipItem1.Style.Font = new Font("Arial", 10.5f, FontStyle.Bold);

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button1, toolTipInfo1);



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img16.jpeg)


### Gradient color

Gradient background drawing for the `ToolTipItem` can be done by enabling the `EnableGradientBackground` property and initializing a `GradientBrush` property for the `ToolTipItem`. 

{% tabs %}
{% highlight c# %}
ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "The ToolTip information of the Button control.";

toolTipItem1.EnableGradientBackground = true;

toolTipItem1.Style.GradientBrush = new BrushInfo(GradientStyle.ForwardDiagonal, new Color[] { Color.LightSkyBlue, Color.LightGreen, Color.Orange });

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img17.jpeg)


**Note**: The `GradientBrush` property will be considered only when the `EnableGradientBackground` property is set to true.

### ToolTipItem separator

The separator of the `ToolTipItem` can be customized using the `SeparatorColor` and `SeparatorStyle` properties.

{% tabs %}
{% highlight c# %}
ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "ToolTipItem1 Text";

toolTipItem1.EnableSeparator = true;

toolTipItem1.Style.SeparatorColor = Color.Gray;

toolTipItem1.Style.SeparatorStyle = DashStyle.DashDot;

ToolTipItem toolTipItem2 = new ToolTipItem();

toolTipItem2.Text = "ToolTipItem2 Text";

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1, toolTipItem2 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img18.jpeg)


## Customizing appearance based on control

The appearance of the `ToolTipItem` can be customized before showing the tooltip based on the control in which it is configured using the `ToolTipShowing` event.

{% tabs %}
{% highlight c# %}
this.sfToolTip1.ToolTipShowing += SfToolTip1_ToolTipShowing;

private void SfToolTip1_ToolTipShowing(object sender, ToolTipShowingEventsArgs e)

{

if (e.Control is Button)

{

e.ToolTipInfo.Items[0].Style.BackColor = Color.LightSkyBlue;

e.ToolTipInfo.Items[0].Style.ForeColor = Color.Black;

}

}



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img19.jpeg)


## Enabling the shadow

The shadow of the tooltip can be enabled by setting the ShadowVisible property to `true`.

{% tabs %}
{% highlight c# %}
SfToolTip sfToolTip1 = new SfToolTip();

sfToolTip1.ShadowVisible = true;



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img20.jpeg)


## ToolTipItem eparator

The enabled separator of the `ToolTipItem` can be customized by setting the `EnableSeparator` property to `true`.

{% tabs %}
{% highlight c# %}
ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "ToolTipItem1 Text";

toolTipItem1.EnableSeparator = true;

ToolTipItem toolTipItem2 = new ToolTipItem();

toolTipItem2.Text = "ToolTipItem2 Text";

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1, toolTipItem2 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img21.jpeg)


**Note**: The separator line cannot be drawn for the last `ToolTipItem` in the collection, even the separator is enabled.

## Right to left

The elements of the tooltip can be aligned from right to left and vice versa using the `RightToLeft` property. 

{% tabs %}
{% highlight c# %}
ToolTipInfo toolTipInfo1 = new ToolTipInfo();

toolTipInfo1.RightToLeft = RightToLeft.Yes;

ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "David Carter\r\nPhone : +1 919.494.1974\r\nEmail : david@syncfusion.com";

toolTipItem1.Style.TextAlignment = ContentAlignment.MiddleLeft;

toolTipItem1.Image = global::GettingStarted.Properties.Resources.MORGK;

toolTipItem1.Style.ImageSize = new Size(100, 100);

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img22.jpeg)


