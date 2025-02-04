---
layout: post
title: MultilineText in tab page tooltip| WindowsForms | Syncfusion®
description: how to create multilinetext in tabpages tooltiptext
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to create MultilineText in TabPage's ToolTipText?

Setting the [ShowToolTips](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ShowToolTips) property of [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) to `true` will wrap the text when using the new line character (\n) in the [ToolTipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html#Syncfusion_Windows_Forms_Tools_TabPageAdv_ToolTipText) property of [TabPageAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html). The new line character (\n) is not supported at design-time.

{% tabs %}

{% highlight C# %}



//Setting the ShowToolTipText property in TabControlAdv.

this.tabControlAdv1.ShowToolTips=true;

//Setting the text into the ToolTipText property of TabPageAdv.

this.tabPageAdv1.ToolTipText="Tab\nPageAdv1";

this.tabPageAdv1.ToolTipText="Tab\nPage\nAdv2";

{% endhighlight %}

{% highlight VB %}



'Setting the ShowToolTipText property in TabControlAdv.

Me.tabControlAdv1.ShowToolTips=True

'Setting the text into the ToolTipText property of TabPageAdv.

Me.tabPageAdv1.ToolTipText="Tab" & Constants.vbLf & "PagAdv1"

Me.tabPageAdv2.ToolTipText="Tab" & Constants.vbLf & "Page" & Constants.vbLf & "Adv2"

{% endhighlight %}

{% endtabs %}
