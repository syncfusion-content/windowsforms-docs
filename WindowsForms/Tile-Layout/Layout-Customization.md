---
layout: post
title: Layout Customization in Windows Forms Tile Layout control | Syncfusion
description: Learn about Layout Customization support in Syncfusion Windows Forms Tile Layout control and more details.
platform: WindowsForms
control: TileLayout 
documentation: ug
---


# Layout Customization in Windows Forms Tile Layout

## Alignment

This [Alignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FlowLayout.html#Syncfusion_Windows_Forms_Tools_FlowLayout_Alignment) property sets the [MainLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TileLayout.html) group alignment in [TileLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TileLayout.html) control.


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


![Near alignment](Layout-Customization_images/NearAlignment.png)

![Far alignment](Layout-Customization_images/FarAlignment.png)

![Center alignment](Layout-Customization_images/CenterAlignment.png)

### HorzNearMargin

[HorzNearMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutManager.html#Syncfusion_Windows_Forms_Tools_LayoutManager_HorzNearMargin) indicates the left margin between the client rectangle and layout rectangle.

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

![Horizontal near margin](Layout-Customization_images/HorNearMargin.png)

### HorzFarMargin

[HorzFarMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutManager.html#Syncfusion_Windows_Forms_Tools_LayoutManager_HorzFarMargin) indicates the right margin between the client rectangle and the layout rectangle.

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

![Horizontal far margin](Layout-Customization_images/HorFarMargin.png)

### TopMargin

[TopMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutManager.html#Syncfusion_Windows_Forms_Tools_LayoutManager_TopMargin) indicates the Top margin between the client rectangle and layout rectangle.

{% tabs %}

{% highlight C# %}

//Gets or sets the Top margin between client rectangle and layout rectangle 

this.tileLayout1.MainLayout.TopMargin = 20;

{% endhighlight %}


{% highlight VB %}

‘Gets or sets the Top margin between client rectangle and layout rectangle

Me.tileLayout1.MainLayout.TopMargin = 20
 
{% endhighlight %}

{% endtabs %}

![Top margin](Layout-Customization_images/TopMargin.png)

### BottomMargin

[BottomMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutManager.html#Syncfusion_Windows_Forms_Tools_LayoutManager_BottomMargin) indicates the Bottom margin between the client rectangle and layout rectangle.

{% tabs %}

{% highlight C# %}

//Gets or sets the Bottom margin between client rectangle and layout rectangle

this.tileLayout1.MainLayout.BottomMargin = 100;


{% endhighlight %}


{% highlight VB %}

‘Gets or sets the Bottom margin between client rectangle and layout rectangle

Me.tileLayout1.MainLayout.BottomMargin = 100

 
{% endhighlight %}

{% endtabs %}

![Bottom margin](Layout-Customization_images/BottomMargin.png)

### ReverseRows

This [ReverseRows](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FlowLayout.html#Syncfusion_Windows_Forms_Tools_FlowLayout_ReverseRows) property lays out the rows in opposite direction. If the LayoutMode is Horizontal then it lays out rows in Top to Bottom direction. If the LayoutMode is Vertical then it lays out the rows in Left to Right direction.

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

![Reverse transition](Layout-Customization_images/ReverseRows.png)

