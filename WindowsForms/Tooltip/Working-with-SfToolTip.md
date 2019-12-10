---
layout: post
title: Customization of SfToolTip for syncfusion Essential Windows Forms
description: This section explains on how to customize the settings of SfToolTip.
platform: windowsforms
control: SfToolTip
documentation: ug

---
# Working with SfToolTip

## Getting the ToolTip Text of a Control

The tooltip text of a control can be retrieved by using the [GetToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfToolTip~GetToolTip.html) method. 

{% tabs %}
{% highlight c# %}

string toolTipText = this.sfToolTip1.GetToolTip(this.button1);

{% endhighlight %}
{% endtabs %}

## Setting the ToolTip Text of a Control

The tooltip text for a control can be initialized by using the [SetToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfToolTip~SetToolTip.html) method.

{% tabs %}
{% highlight c# %}

this.sfToolTip1.SetToolTip(this.button1, "Button1 ToolTip Text");

{% endhighlight %}
{% endtabs %}

## Getting the ToolTipInfo of a Control

The `ToolTipInfo` of a control can be retrieved by using the [GetToolTipInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfToolTip~GetToolTipInfo.html) method.

{% tabs %}
{% highlight c# %}

ToolTipInfo toolTipInfo = this.sfToolTip1.GetToolTipInfo(this.button1);

{% endhighlight %}
{% endtabs %}

## Setting the ToolTipInfo of a Control

The `ToolTipInfo` for a control can be initialized by using the [SetToolTipInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfToolTip~SetToolTipInfo.html) method.

{% tabs %}
{% highlight c# %}

this.sfToolTip1.SetToolTipInfo(this.button1, toolTipInfo);

{% endhighlight %}
{% endtabs %}

## Disabling Tooltip from Showing

The [ToolTipShowing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfToolTip~ToolTipShowing_EV.html) event can be used to disable the tooltip window by setting the `e.Cancel` to `true`.

{% tabs %}
{% highlight c# %}

this.sfToolTip1.ToolTipShowing += SfToolTip1_ToolTipShowing;
private void SfToolTip1_ToolTipShowing(object sender, ToolTipShowingEventArgs e)
{
    if (e.Control.Name == "cancelButton")
    e.Cancel = true;
}

{% endhighlight %}
{% endtabs %}

## Changing Location of the ToolTip

The location of the tooltip to be shown can be customized in the `ToolTipShowing` event using the `e.Location` property.

{% tabs %}
{% highlight c# %}

this.sfToolTip1.ToolTipShowing += SfToolTip1_ToolTipShowing;
private void SfToolTip1_ToolTipShowing(object sender, ToolTipShowingEventsArgs e)
{
    e.Location = new Point(e.Location.X + 20, e.Location.Y - 25);
}

{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img23.jpeg)


## Setting Minimum and Maximum Widths

The minimum width and the maximum width of the tooltip can be changed using the [MinWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.ToolTipInfo~MinWidth.html) and [MaxWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.ToolTipInfo~MaxWidth.html) properties. 

{% tabs %}
{% highlight c# %}

ToolTipInfo toolTipInfo1 = new ToolTipInfo();
toolTipInfo1.MinWidth = 100;
toolTipInfo1.MaxWidth = 500;

{% endhighlight %}
{% endtabs %}

**Note**: The width of the tooltip will be initialized to `MinWidth`, if the width is lesser than `MinWidth`. The width of the tooltip will be initialized to `MaxWidth`, if the width exceeds the `MaxWidth`.

## Custom Drawing of ToolTip

The [DrawToolTipItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfToolTip~DrawToolTipItem_EV.html) event can be used to draw the `ToolTipItem` appearance. To cancel the default drawing of the `ToolTipItem`, `e.Cancel` property can be used.

{% tabs %}
{% highlight c# %}
this.sfToolTip1.DrawToolTipItem += SfToolTip1_DrawToolTipItem;
private void SfToolTip1_DrawToolTipItem(object sender, DrawToolTipItemEventArgs e)
{

// To cancel the drawing of ToolTipItem.
    e.Cancel = true;
    LinearGradientBrush gradientBrush = new LinearGradientBrush(e.ToolTipItemRectangle, Color.LightSkyBlue, Color.LightGreen, LinearGradientMode.Horizontal);
    e.Graphics.FillRectangle(gradientBrush, e.ToolTipItemRectangle);
    Pen pen = new Pen(Color.Black);
    Rectangle borderRectangle = e.ToolTipItemRectangle;
    borderRectangle.Width -= 1;
    borderRectangle.Height -= 1;
    e.Graphics.DrawRectangle(pen, borderRectangle);
    SolidBrush solidBrush = new SolidBrush(Color.Black);
    StringFormat stringFormat = new StringFormat();
    stringFormat.Alignment = StringAlignment.Center;
    stringFormat.LineAlignment = StringAlignment.Center;
    e.Graphics.DrawString(e.ToolTipItem.Text, e.ToolTipItem.Style.Font, solidBrush, e.ToolTipItemRectangle, stringFormat);
}

{% endhighlight %}
{% endtabs %}

![](SfToolTip_images/SfToolTip_img24.jpeg)


