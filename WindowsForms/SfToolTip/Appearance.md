# Appearance

## ToolTip control

The border color and its thickness of the `SfToolTip` can be customized by using the [BorderColor](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipInfo.html#Syncfusion_WinForms_ToolTip_ToolTipInfo_BorderColor "") and [BorderThickness](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipInfo.html#Syncfusion_WinForms_ToolTip_ToolTipInfo_BorderThickness "") properties.

{% highlight c# %}
ToolTipInfo toolTipInfo1 = new ToolTipInfo();

toolTipInfo1.BorderColor = Color.Gray;

toolTipInfo1.BorderThickness = 5;

ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "The ToolTip information of the Button control.";

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button1, toolTipInfo1);



{% endhighlight %}

![](SfToolTip_images/SfToolTip_img15.jpeg)


## ToolTip Item

The appearance of `ToolTipItem` can be customized by setting the [ToolTipStyleInfo](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipStyleInfo.html# "") property. The ` ToolTipStyleInfo` property contains all the settings that are needed for the `ToolTipItem` appearance customization.

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

![](SfToolTip_images/SfToolTip_img16.jpeg)


### Gradient Color

Gradient background drawing for the `ToolTipItem` can be done by enabling the [EnableGradientBackground](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipItem.html#Syncfusion_WinForms_ToolTip_ToolTipItem_EnableGradientBackground "") property and initializing a [GradientBrush](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipStyleInfo.html#Syncfusion_WinForms_ToolTip_ToolTipStyleInfo_GradientBrush "") property for the `ToolTipItem`. 

{% highlight c# %}
ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "The ToolTip information of the Button control.";

toolTipItem1.EnableGradientBackground = true;

toolTipItem1.Style.GradientBrush = new BrushInfo(GradientStyle.ForwardDiagonal, new Color[] { Color.LightSkyBlue, Color.LightGreen, Color.Orange });

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}

![](SfToolTip_images/SfToolTip_img17.jpeg)


**Note****:** The `GradientBrush` property will be only considered when the `EnableGradientBackground` property is set to true.

### ToolTipItem Separator

The separator of the `ToolTipItem` can be customized using the [SeparatorColor](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipStyleInfo.html#Syncfusion_WinForms_ToolTip_ToolTipStyleInfo_SeparatorColor "") and [SeparatorStyle](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipStyleInfo.html#Syncfusion_WinForms_ToolTip_ToolTipStyleInfo_SeparatorStyle "") properties.

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

![](SfToolTip_images/SfToolTip_img18.jpeg)


## Customizing appearance based on control

The appearance of the `ToolTipItem` can be customized before showing the tooltip based on the control in which it is configured using the `ToolTipShowing` event.

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

![](SfToolTip_images/SfToolTip_img19.jpeg)


## Enabling the shadow

The shadow of the tooltip can be enabled by setting the **ShadowVisible** property to `true`.

{% highlight c# %}
SfToolTip sfToolTip1 = new SfToolTip();

sfToolTip1.ShadowVisible = true;



{% endhighlight %}

![](SfToolTip_images/SfToolTip_img20.jpeg)


## ToolTipItem Separator

The separator of the `ToolTipItem` can be enabled by setting the [EnableSeparator](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipItem.html#Syncfusion_WinForms_ToolTip_ToolTipItem_EnableSeparator "") property to `true`.

{% highlight c# %}
ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "ToolTipItem1 Text";

toolTipItem1.EnableSeparator = true;

ToolTipItem toolTipItem2 = new ToolTipItem();

toolTipItem2.Text = "ToolTipItem2 Text";

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1, toolTipItem2 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}

![](SfToolTip_images/SfToolTip_img21.jpeg)


**Note****:** Separator line cannot be drawn for the last `ToolTipItem` in the collection even it has separator enabled.

## Right to Left

The elements of the tooltip can be aligned from right to left and vice versa using the [RightToLeft](http://172.16.0.145:8080/Syncfusion.Core.WinForms/api/Syncfusion.WinForms.ToolTip.ToolTipInfo.html#Syncfusion_WinForms_ToolTip_ToolTipInfo_RightToLeft "") property. 

{% highlight c# %}
ToolTipInfo toolTipInfo1 = new ToolTipInfo();

toolTipInfo1.RightToLeft = RightToLeft.Yes;

ToolTipItem toolTipItem1 = new ToolTipItem();

toolTipItem1.Text = "David Carter\r\nPhone : +1 919.494.1974\r\nemail : davidc@syncfusion.com";

toolTipItem1.Style.TextAlignment = ContentAlignment.MiddleLeft;

toolTipItem1.Image = global::GettingStarted.Properties.Resources.MORGK;

toolTipItem1.Style.ImageSize = new Size(100, 100);

toolTipInfo1.Items.AddRange(new ToolTipItem[] { toolTipItem1 });

sfToolTip1.SetToolTipInfo(this.button2, toolTipInfo1);



{% endhighlight %}

![](SfToolTip_images/SfToolTip_img22.jpeg)


