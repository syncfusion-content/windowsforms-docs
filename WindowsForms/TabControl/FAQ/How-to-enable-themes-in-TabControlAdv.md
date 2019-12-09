---
layout: post
title: How-to-enable-themes-in-TabControlAdv | WindowsForms | Syncfusion
description: how to enable themes in tabcontroladv
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to enable themes in TabControlAdv?
The [TabPageAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabPageAdv.html) can be themed by enabling the [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~ThemesEnabled.html) property.

N> On setting this property, all the TabPages will be themed. This can be disabled or enabled for individual pages using the [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~ThemesEnabled.html) property of [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv.html).

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.ThemesEnabled = true;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

![TabControlAdv theme support](How-to-enable-themes-in-TabControlAdv_images/How-to-enable-themes-in-TabControlAdv_img1.jpeg)