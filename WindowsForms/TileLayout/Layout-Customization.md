---
layout: post
title: Layout Customization | WindowsForms | Syncfusion
description: Layout Customization
platform: WindowsForms
control: TileLayout 
documentation: ug
---


# Layout Customization

## Alignment

This property sets the main Layout Group alignment in TileLayout control.


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

### HorzNearMargin

It indicates the left margin between the client rectangle and layout rectangle

{% tabs %}

{% highlight C# %}

//Gets or sets the left margin between client rectangle and layout rectangle

this.tileLayout1.MainLayout.HorzNearMargin = 100;

{% endhighlight %}


{% highlight VB %}

‘Gets or sets the left margin between client rectangle and layout rectangle

Me.tileLayout1.MainLayout.HorzNearMargin = 100
 
{% endhighlight %}

{% endtabs %}

### HorzFarMargin

It indicates the right margin between the client rectangle and the layout rectangle

{% tabs %}

{% highlight C# %}

//Gets or sets the right margin between client rectangle and layout rectangle

this.tileLayout1.MainLayout.HorzFarMargin = 100;

{% endhighlight %}


{% highlight VB %}

‘Gets or sets the right margin between client rectangle and layout rectangle

Me.tileLayout1.MainLayout.HorzFarMargin = 100
 
{% endhighlight %}

{% endtabs %}

### TopMargin

Indicates the Top margin between the client rectangle and layout rectangle

{% tabs %}

{% highlight C# %}

//Gets or sets the Top margin between client rectangle and layout rectangle 

this.tileLayout1.MainLayout.TopMargin = 30;

{% endhighlight %}


{% highlight VB %}

‘Gets or sets the Top margin between client rectangle and layout rectangle

Me.tileLayout1.MainLayout.TopMargin = 30
 
{% endhighlight %}

{% endtabs %}


### BottomMargin

Indicates the Bottom margin between the client rectangle and layout rectangle

{% tabs %}

{% highlight C# %}

//Gets or sets the Bottom margin between client rectangle and layout rectangle

this.tileLayout1.MainLayout.BottomMargin = 10;


{% endhighlight %}


{% highlight VB %}

‘Gets or sets the Bottom margin between client rectangle and layout rectangle

Me.tileLayout1.MainLayout.BottomMargin = 10

 
{% endhighlight %}

{% endtabs %}


### ReverseRows

This property lays out the rows in opposite direction. If the LayoutMode is Horizontal then it lays out rows in Top to Bottom direction. If the LayoutMode is Vertical then it lays out the rows in Left to Right direction.

{% tabs %}

{% highlight C# %}

//Lays out the rows in opposite direction

this.tileLayout1.MainLayout.ReverseRows = true;

{% endhighlight %}


{% highlight VB %}

‘Lays out the rows in opposite direction
  
Me.tileLayout1.MainLayout.ReverseRows = true
 
{% endhighlight %}

{% endtabs %}



