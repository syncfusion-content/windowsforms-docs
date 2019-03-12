---
layout: post
title: Layout group location | WindowsForms | Syncfusion
description: How to set Layout Group location in TileLayout
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# How to set layout group location in TileLayout?

We can customize the Layout Group location by using the [MainLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TileLayout~MainLayout.html) property in [TileLayout](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TileLayout.html).

The alignment of the Layout can be Near, Center, and Far as shown in the following code snippet.

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


The starting location of the Layout group can be assigned by using the properties named [HorzNearMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.LayoutManager~HorzNearMargin.html), [HorzFarMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.LayoutManager~HorzFarMargin.html), [TopMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.LayoutManager~TopMargin.html), [BottomMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.LayoutManager~BottomMargin.html). Following is the Code snippet which demonstrates the same.

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