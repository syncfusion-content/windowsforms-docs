---
layout: post
title: Frequently Asked Questions
description: Frequently Asked Questions
platform: windowsforms
control: HubTile
documentation: ug
--- 

# How to add HubTile using code example?

The following section guides you through the steps involved in setting up a simple HubTile layout design through code.

Add the following namespace.

{% highlight C# %}  
 

// namespaces

using Syncfusion.Windows.Forms.Tools;

using Syncfusion.Windows.Forms;

 {% endhighlight %}

{% highlight vbnet %} 

 

‘namespaces

Imports Syncfusion.Windows.Forms

Imports Syncfusion.Windows.Forms.Tools

 {% endhighlight %}

The following code example shows how to create the HubTile via code.

{% highlight C# %}  

// Create the HubTile instance

HubTile HubTile1 = new HubTile();

this.Controls.Add(this.HubTile1);

 {% endhighlight %}

{% highlight vbnet %} 

‘Create the HubTile instance

Dim HubTile1 As HubTile =  New HubTile()

Me.Controls.Add(Me.HubTile1)

 {% endhighlight %}

