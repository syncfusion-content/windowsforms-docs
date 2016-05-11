---
layout: post
title: How to set Layout Group location in TileLayout | WindowsForms | Syncfusion
description: How to set Layout Group location in TileLayout
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# How to set Layout Group location in TileLayout?

We can customize the Layout Group location by using the MainLayout propertly in TileLayout.

The alignment of the Layout can be Near, Center and Far as in the below code snippet.

{% tabs %}

{% highlight C# %}

//Gets or sets the MainLayout alignment

this.tileLayout1.MainLayout.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Near;


{% endhighlight %}


{% highlight VB %}

‘Gets or sets the MainLayout alignment

Me.tileLayout1.MainLayout.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Near

 
{% endhighlight %}

{% endtabs %}


The starting location of the Layout group can be assigned by using the properties named HorzNearMargin, HorzFarMargin, TopMargin, BottomMargin. Following is the Code snippet which demonstrates the same.

{% tabs %}

{% highlight C# %}

//Gets or sets the left margin between client rectangle and layout rectangle
this.tileLayout1.MainLayout.HorzNearMargin = 100;

//Gets or sets the right margin between client rectangle and layout rectangle
this.tileLayout1.MainLayout.HorzFarMargin = 100;

//Gets or sets the Top margin between client rectangle and layout rectangle this.tileLayout1.MainLayout.TopMargin = 30;

//Gets or sets the Bottom margin between client rectangle and layout rectangle
this.tileLayout1.MainLayout.BottomMargin = 10;

{% endhighlight %}


{% highlight VB %}

‘Gets or sets the left margin between client rectangle and layout rectangle
Me.tileLayout1.MainLayout.HorzNearMargin = 100

‘Gets or sets the right margin between client rectangle and layout rectangle
Me.tileLayout1.MainLayout.HorzFarMargin = 100	

‘Gets or sets the Top margin between client rectangle and layout rectangle
Me.tileLayout1.MainLayout.TopMargin = 30

‘Gets or sets the Bottom margin between client rectangle and layout rectangle
Me.tileLayout1.MainLayout.BottomMargin = 10
 
{% endhighlight %}

{% endtabs %}