---
layout: post
title: How-to-create-MultilineText-in-TabPages-ToolTipTex | WindowsForms | Syncfusion
description: how to create multilinetext in tabpages tooltiptext
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to create MultilineText in TabPage's ToolTipText

Setting the **ShowToolTipText** property of TabControlAdv to 'True' will wrap the text when using the new line character (\n) in the ToolTipText property of TabPageAdv. The new line character (\n) is not supported at design-time.

{% tabs %}

{% highlight c# %}



//Setting the ShowToolTipText property in TabControlAdv.

this.tabControlAdv1.ShowToolTips=true;

//Setting the text into the ToolTipText property of TabPageAdv.

this.tabPageAdv1.ToolTipText="Tab\nPageAdv1";

this.tabPageAdv1.ToolTipText="Tab\nPage\nAdv2";

{% endhighlight %}

{% highlight vbnet %}



'Setting the ShowToolTipText property in TabControlAdv.

Me.tabControlAdv1.ShowToolTips=True

'Setting the text into the ToolTipText property of TabPageAdv.

Me.tabPageAdv1.ToolTipText="Tab" & Constants.vbLf & "PagAdv1"

Me.tabPageAdv2.ToolTipText="Tab" & Constants.vbLf & "Page" & Constants.vbLf & "Adv2"

{% endhighlight %}

{% endtabs %}