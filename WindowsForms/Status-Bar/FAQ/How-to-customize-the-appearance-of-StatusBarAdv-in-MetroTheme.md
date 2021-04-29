---
layout: post
title: Customize the appearance of StatusBarAdv in MetroTheme | Syncfusion
description: how to customize the appearance of statusbaradv in metrotheme in Syncfusion Windows Forms StatusBarAdv control and more details.
platform: WindowsForms
control: Notification Package 
documentation: ug
---

# Customize the appearance of StatusBarAdv in MetroTheme

This page explains customize the appearance of StatusBarAdv in MetroTheme and more details.

## How to Customize the Appearance of StatusBarAdv in MetroTheme?

In MetroStyle, the back color and border color of StatusBarAdv can be changed by using its properties named “MetroColor” and “UseMetroColorAsBorder”. The following code example is to demonstrate the same.

{% tabs %}
{% highlight c# %}

//To set the MetroColor in StatusBarAdv
this.statusBarAdv1.MetroColor = ColorTranslator.FromHtml("#16a5dc");

//To set the MetroColor as Border of the StatusBarAdv
this.statusBarAdv1.UseMetroColorAsBorder = true;

//To set the StatusbarStyle as Metro
this.statusBarAdv1.Style = Syncfusion.Windows.Forms.Tools.StatusbarStyle.Metro;

{% endhighlight %}

{% highlight vb %}

'To set the MetroColor in StatusBarAdv
Me.statusBarAdv1.MetroColor = ColorTranslator.FromHtml("#16a5dc")

'To set the MetroColor as Border of the StatusBarAdv
Me.statusBarAdv1.UseMetroColorAsBorder = True

'To set the StatusbarStyle as Metro
Me.statusBarAdv1.Style = Syncfusion.Windows.Forms.Tools.StatusbarStyle.Metro

{% endhighlight %}
{% endtabs %}

![Overview_img78](Overview_images/Overview_img78.png) 
