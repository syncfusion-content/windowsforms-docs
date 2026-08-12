---
layout: post
title: Add HubTile using code example in Windows Forms | Syncfusion®
description: Learn how to add a Syncfusion Windows Forms HubTile control to your application through a step-by-step code example with namespace setup.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# Add HubTile using code example in Windows Forms

The following section guides you through the steps involved in setting up a simple HubTile layout design through code.

Add the following namespace.

{% tabs %}

{% highlight C# %}



//namespaces

using Syncfusion.Windows.Forms.Tools;

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight VB %}



‘namespaces

Imports Syncfusion.Windows.Forms

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

The following code example shows how to create the HubTile via code.

{% tabs %}

{% highlight C# %}

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

