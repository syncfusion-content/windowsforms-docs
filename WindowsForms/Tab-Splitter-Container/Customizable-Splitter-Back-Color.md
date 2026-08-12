---
layout: post
title: Splitter BackColor in Windows Forms TabSplitterContainer | Syncfusion®
description: Customize the splitter background color to match application themes and enhance TabSplitterContainer appearance.
platform: windowsforms
control: TabSplitterContainer 
documentation: ug
---

# Splitter BackColor Customization in Windows Forms TabSplitterContainer

TabSplitterContainer now supports customizing the back color of the Splitter to match the theme of the application using the newly added property [SplitterBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterContainer.html#Syncfusion_Windows_Forms_Tools_TabSplitterContainer_SplitterBackColor). Earlier this was not made possible.

{% tabs %}

{% highlight C# %}

// Set Custom Color to The TabSplitterContainer.

this.tabSplitterContainer1.SplitterBackColor = Color.Blue;

{% endhighlight %}

{% highlight VB %}

‘Set Custom Color to The TabSplitterContainer.

Me.tabSplitterContainer1.SplitterBackColor = Color.Blue

{% endhighlight %}

{% endtabs %}
