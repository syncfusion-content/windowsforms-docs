---
layout: post
title: Styles-Settings | WindowsForms | Syncfusion
description: styles settings
platform: WindowsForms
control: TabbedMDIPackage 
documentation: ug
---

# Styles Settings

This section discusses about the Style Settings available in TabbedMDIManager control that can be used to create applications that are attractive and appealing to the end-users.

The topics discussed in this section are given below.

## Tab styles

TabbedMDI Framework provides the ability to support a number of tab styles. The tabbedMDIManager's TabStyle property lets users specify the required style for the Tabs.

Property Table

<table>
<tr>
<td>
TabbedMDIManager Property</td><td>
Description</td></tr>
<tr>
<td>
TabStyle</td><td>
Specifies the style for the tabs of the TabbedMDIManager Control. The options include:2D,3D,WorkbookMode,WhidbeyStyle,DockingWhidbeyStyle,DockingWhidbeyBetaStyle,Office2003Style,Office2007Style,OneNoteStyle,OneNoteStyleFlatTabsStyle,InternetExplorer7Style,MetroStyle,Office2016Colorful,Office2016White,Office2016DarkGray and Office2016Black.</td></tr>
</table>

**2D**

This option helps to set the 2D theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// 2D

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer2D);

{% endhighlight %}

{% highlight VB %}

'2D

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer2D)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img8.png)


**3D**

This option helps to set the 3D theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// 3D

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer3D);

{% endhighlight %}

{% highlight VB %}

'3D

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer3D)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img9.png)

**Workbook**

This option helps to set the Workbook theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Workbook

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode);

{% endhighlight %}

{% highlight VB %}

'Workbook

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img10.png)

**WhidbeyStyle**

This option helps to set the WhidbeyStyle.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// WhidbeyStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWhidbey);

{% endhighlight %}

{% highlight VB %}

'WhidbeyStyle

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWhidbey)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img11.png)

**DockingWhidbeyStyle**

This option helps to set the DockingWhidbeyStyle.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// DockingWhidbeyStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey);

{% endhighlight %}

{% highlight VB %}

'DockingWhidbeyStyle

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img12.png)

**DockingWhidbeyBetaStyle**

This option helps to set the DockingWhidbeyBetaStyle.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// DockingWhidbeyBetaStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta);

{% endhighlight %}

{% highlight VB %}

'DockingWhidbeyBetaStyle

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img13.png)

**Office2003**

This option helps to set the Office2003 theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2003

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2003);

{% endhighlight %}

{% highlight VB %}

'Office2003

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2003)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img14.png)

**Office2007Blue**

This option helps to set the Office2007Blue theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007Blue

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2007Blue

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Blue

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img15.png)

**Office2007Black**

This option helps to set the Office2007Black theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007Black

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Black

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img16.png)

**Office2007Silver**

This option helps to set the Office2007Silver theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Silver

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img17.png)

**OneNoteStyle**

This option helps to set the OneNoteStyle theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// OneNoteStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer);

{% endhighlight %}

{% highlight VB %}

'OneNoteStyle

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img18.png)

**OneNoteStyleFlatTabsStyle**

This option helps to set the OneNoteStyleFlatTabsStyle.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// OneNoteStyleFlatTabsStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleFlatTabsRenderer);

{% endhighlight %}

{% highlight VB %}

'OneNoteStyleFlatTabsStyle

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleFlatTabsRenderer)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img19.png)

**InternetExplorer7**

This option helps to set the InternetExplorer7 theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// InternetExplorer7

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererIE7);

{% endhighlight %}

{% highlight VB %}

'InternetExplorer7

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererIE7)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img20.png)

**Metro**

This option helps to set the Metro theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Metro

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererMetro);

{% endhighlight %}

{% highlight VB %}

'Metro

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererMetro)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img21.png)

**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful);

{% endhighlight %}

{% highlight VB %}

'Office2016Colorful

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img4.png)

**Office2016White**

This option helps to set the Office2016White theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2016White

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White);

{% endhighlight %}

{% highlight VB %}

'Office2016White

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img5.png)

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2016DarkGray

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray);

{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img6.png)

**Office2016Black**

This option helps to set the Office2016Black theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2016Black

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black);

{% endhighlight %}

{% highlight VB %}

'Office2016Black

Me.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black)

{%endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img7.png)

## Window Styles

The windows in the TabbedMDI Framework can be arranged in four different styles. To set the styles of the windows, the MDIParent form should be detached from the TabbedMDIManager.

N> The DetachFromMdIContainer method is used to detach an MDIParent from the TabbedMDIManager.

<table>
<tr>
<th>
TabbedMDIManager Property</th><th>
Description</th></tr>
<tr>
<td>
WindowStyle</td><td>
Specifies the style for the windows of the TabbedMDIManager Control. The options include:TileHorizontal,TileVertical,Cascade andArrangeIcons.</td></tr>
</table>


{% highlight c# %}



//Detach the MDIParent form from TabbedMDIManager.

this.tabbedMDIManager.DetachFromMdiContainer(this, false);



//Arranges the multiple document interface Child forms in Horizontal style within the MDIParent form.                        

this.LayoutMdi(MdiLayout.TileHorizontal);

{% endhighlight %}

{% highlight vbnet %}


'Detach the MDIParent form from TabbedMDIManager.

Me.tabbedMDIManager.DetachFromMdiContainer(Me, False)


'Arranges the multiple document interface Child forms in Horizontal style within the MDIParent form.                        

Me.LayoutMdi(MdiLayout.TileHorizontal)

{% endhighlight %}


![](Styles-Settings_images/Styles-Settings_img3.jpeg)
