---
layout: post
title: How to Add HubTile using Code Example in TabbedMDI | Syncfusion®
description: Learn how to add a HubTile control programmatically in the Syncfusion Windows Forms TabbedMDI control.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to Add HubTile using Code Example in WinForms TabbedMDI

The following section guides you through the steps involved in setting up a simple HubTile layout design through code.

Add the following namespace.

{% tabs %}

{% highlight c# %}



//namespaces

using Syncfusion.Windows.Forms.Tools;

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight VB %}



‘namespaces

Imports Syncfusion.Windows.Forms

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

The following code example shows how to create the HubTile via code.

{% tabs %}

{% highlight c# %}

// Create the HubTile instance

HubTile HubTile1 = new HubTile();

this.Controls.Add(this.HubTile1);

{% endhighlight %}

{% highlight VB %}

‘Create the HubTile instance

Dim HubTile1 As HubTile =  New HubTile()

Me.Controls.Add(Me.HubTile1)

{% endhighlight %}

{% endtabs %}

