---
layout: post
title: How to change the Header BackColor of a Stacked GroupBar when it is in Office 2003 Visual Style | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How to change the Header BackColor of a Stacked GroupBar when it is in Office 2003 Visual Style?

The following code examples are used to change the GroupBar Item's Header BackColor.

{% tabs %}

{% highlight C# %}

//To set the Office2003 visual style

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003;

//To enable stacked mode

groupBar1.StackedMode = true;

//To customize the GroupBarItem's Header BackColor

Syncfusion.Windows.Forms.Office2003Colors.GroupBarHeaderColorDark = Color.Red;

Syncfusion.Windows.Forms.Office2003Colors.GroupBarHeaderColorLight = Color.White;

 {% endhighlight %}

{% highlight VB %}

'To set the Office2003 visual style

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003

'To enable stacked mode

groupBar1.StackedMode = True

'To customize the GroupBarItem's Header BackColor

Syncfusion.Windows.Forms.Office2003Colors.GroupBarHeaderColorDark = Color.Red

Syncfusion.Windows.Forms.Office2003Colors.GroupBarHeaderColorLight = Color.White

{% endhighlight %}

{% endtabs %}


N> In GroupBar, StackedMode property should be enabled to customize the appearance of the GroupBar header.

![](Overview_images/Overview_img47.png)

