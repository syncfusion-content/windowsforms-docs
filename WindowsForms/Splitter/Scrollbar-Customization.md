---
layout: post
title: Scrollbar-customization | Windows Forms | Syncfusion
description: scrollbar customization
platform: windowsforms
control: Splitter  
documentation: ug
---

# Scrollbar customization

The appearance of the SplitterControl scrollbar can be customized by using the GridOfficeScrollBars property. The scrollbar can be customized to get the following style look and feel.

* Office2007
* Office2010
* Metro
* None

The following code example illustrates this.

{% highlight c# %}

//Customizes the Scrollbar.

this.splitterControl1.GridOfficeScrollBars= OfficeScrollBars.Office2007;

{% endhighlight %}

{% highlight vbnet %}

'Customizes the Scrollbar

Me.splitterControl1.GridOfficeScrollBars= OfficeScrollBars.Office2007

{% endhighlight %}