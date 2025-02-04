---
layout: post
title: Styles Settings in Windows Forms TabbedMDI control | Syncfusion®
description: Learn about Styles Settings support in Syncfusion® Windows Forms TabbedMDI control, its elements and more details.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# Styles Settings in Windows Forms TabbedMDI

This section discusses about the Style Settings available in TabbedMDIManager control that can be used to create applications that are attractive and appealing to the end-users.

## Tab styles

TabbedMDI Framework provides the ability to support a number of tab styles. The tabbedMDIManager's [TabStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_TabStyle) property lets users specify the required style for the Tabs.

Property table

<table>
<tr>
<td>
TabbedMDIManager property</td><td>
Description</td></tr>
<tr>
<td>
TabStyle</td><td>
Specifies the style for the tabs of the TabbedMDIManager Control. The options include:2D,3D,WorkbookMode,WhidbeyStyle,DockingWhidbeyStyle,DockingWhidbeyBetaStyle,Office2003Style,Office2007Style,OneNoteStyle,OneNoteStyleFlatTabsStyle,InternetExplorer7Style,MetroStyle,Office2016Colorful,Office2016White,Office2016DarkGray and Office2016Black.</td></tr>
</table>

## 2D

This option helps to set the 2D theme.

{% tabs %}

{% highlight C# %}

// 2D

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer2D);

{% endhighlight %}

{% highlight VB %}

'2D

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRenderer2D)

{%endhighlight %}

{% endtabs %}

![Tab style is 2D](Styles-Settings_images/Styles-Settings_img8.png)


## 3D

This option helps to set the 3D theme.

{% tabs %}

{% highlight C# %}

// 3D

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer3D);

{% endhighlight %}

{% highlight VB %}

'3D

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRenderer3D)

{%endhighlight %}

{% endtabs %}

![Tab style is 3D](Styles-Settings_images/Styles-Settings_img9.png)

## Workbook

This option helps to set the Workbook theme.

{% tabs %}

{% highlight C# %}

// Workbook

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode);

{% endhighlight %}

{% highlight VB %}

'Workbook

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode)

{%endhighlight %}

{% endtabs %}

![Workbook mode tab style](Styles-Settings_images/Styles-Settings_img10.png)

## WhidbeyStyle

This option helps to set the WhidbeyStyle.

{% tabs %}

{% highlight C# %}

// WhidbeyStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWhidbey);

{% endhighlight %}

{% highlight VB %}

'WhidbeyStyle

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererWhidbey)

{%endhighlight %}

{% endtabs %}

![WhidbeyStyle of tabs](Styles-Settings_images/Styles-Settings_img11.png)

## DockingWhidbeyStyle

This option helps to set the DockingWhidbeyStyle.

{% tabs %}

{% highlight C# %}

// DockingWhidbeyStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey);

{% endhighlight %}

{% highlight VB %}

'DockingWhidbeyStyle

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey)

{%endhighlight %}

{% endtabs %}

![DockingWhidbeyStyle of tabs](Styles-Settings_images/Styles-Settings_img12.png)

## DockingWhidbeyBetaStyle

This option helps to set the DockingWhidbeyBetaStyle.

{% tabs %}

{% highlight C# %}

// DockingWhidbeyBetaStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta);

{% endhighlight %}

{% highlight VB %}

'DockingWhidbeyBetaStyle

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta)

{%endhighlight %}

{% endtabs %}

![DockingWhidbeyBetaStyle of tabs](Styles-Settings_images/Styles-Settings_img13.png)

## Office2003

This option helps to set the Office2003 theme.

{% tabs %}

{% highlight C# %}

// Office2003

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2003);

{% endhighlight %}

{% highlight VB %}

'Office2003

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2003)

{%endhighlight %}

{% endtabs %}

![Office2003 tab style](Styles-Settings_images/Styles-Settings_img14.png)

## Office2007Blue

This option helps to set the Office2007Blue theme.

{% tabs %}

{% highlight C# %}

// Office2007Blue

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2007Blue

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Blue

{%endhighlight %}

{% endtabs %}

![Office2007Blue tab style](Styles-Settings_images/Styles-Settings_img15.png)

## Office2007Black

This option helps to set the Office2007Black theme.

{% tabs %}

{% highlight C# %}

// Office2007Black

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Black

{%endhighlight %}

{% endtabs %}

![Office2007Black tab style](Styles-Settings_images/Styles-Settings_img16.png)

## Office2007Silver

This option helps to set the Office2007Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabbedMDIManager.Office2007ColorScheme = Office2007Theme.Silver

{%endhighlight %}

{% endtabs %}

![Office2007Silver tab style](Styles-Settings_images/Styles-Settings_img17.png)

## OneNoteStyle

This option helps to set the OneNoteStyle theme.

{% tabs %}

{% highlight C# %}

// OneNoteStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer);

{% endhighlight %}

{% highlight VB %}

'OneNoteStyle

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer)

{%endhighlight %}

{% endtabs %}

![OneNoteStyle tab style](Styles-Settings_images/Styles-Settings_img18.png)

## OneNoteStyleFlatTabsStyle

This option helps to set the OneNoteStyleFlatTabsStyle.

{% tabs %}

{% highlight C# %}

// OneNoteStyleFlatTabsStyle

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleFlatTabsRenderer);

{% endhighlight %}

{% highlight VB %}

'OneNoteStyleFlatTabsStyle

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.OneNoteStyleFlatTabsRenderer)

{%endhighlight %}

{% endtabs %}

![OneNoteStyleFlatTabsStyle tab style](Styles-Settings_images/Styles-Settings_img19.png)

## InternetExplorer7

This option helps to set the InternetExplorer7 theme.

{% tabs %}

{% highlight C# %}

// InternetExplorer7

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererIE7);

{% endhighlight %}

{% highlight VB %}

'InternetExplorer7

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererIE7)

{%endhighlight %}

{% endtabs %}

![InternetExplorer7 tab style](Styles-Settings_images/Styles-Settings_img20.png)

## Metro

This option helps to set the Metro theme.

{% tabs %}

{% highlight C# %}

// Metro

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererMetro);

{% endhighlight %}

{% highlight VB %}

'Metro

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererMetro)

{%endhighlight %}

{% endtabs %}

![Metro tab style](Styles-Settings_images/Styles-Settings_img21.png)

## Office2016Colorful

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful);

{% endhighlight %}

{% highlight VB %}

'Office2016Colorful

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful)

{%endhighlight %}

{% endtabs %}

![Office2016Colorful tab style](Styles-Settings_images/Styles-Settings_img4.png)

## Office2016White

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

// Office2016White

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White);

{% endhighlight %}

{% highlight VB %}

'Office2016White

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White)

{%endhighlight %}

{% endtabs %}

![Office2016White tab style](Styles-Settings_images/Styles-Settings_img5.png)

## Office2016DarkGray

This option helps to set the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}

// Office2016DarkGray

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray);

{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray)

{%endhighlight %}

{% endtabs %}

![Office2016DarkGray tab style](Styles-Settings_images/Styles-Settings_img6.png)

## Office2016Black

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

// Office2016Black

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black);

{% endhighlight %}

{% highlight VB %}

'Office2016Black

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black)

{%endhighlight %}

{% endtabs %}

![Office2016Black tab style](Styles-Settings_images/Styles-Settings_img7.png)

## Window styles

The windows in the TabbedMDI Framework can be arranged in four different styles. To set the styles of the windows, the MDIParent form should be detached from the TabbedMDIManager.

N> The DetachFromMdIContainer method is used to detach an MDIParent from the TabbedMDIManager.

<table>
<tr>
<th>
TabbedMDIManager property</th><th>
Description</th></tr>
<tr>
<td>
WindowStyle</td><td>
Specifies the style for the windows of the TabbedMDIManager Control. The options include:TileHorizontal,TileVertical,Cascade andArrangeIcons.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



//Detach the MDIParent form from TabbedMDIManager.

this.tabbedMDIManager.DetachFromMdiContainer(this, false);



//Arranges the multiple document interface Child forms in Horizontal style within the MDIParent form.                        

this.LayoutMdi(MdiLayout.TileHorizontal);

{% endhighlight %}

{% highlight VB %}


'Detach the MDIParent form from TabbedMDIManager.

Me.tabbedMDIManager.DetachFromMdiContainer(Me, False)


'Arranges the multiple document interface Child forms in Horizontal style within the MDIParent form.                        

Me.LayoutMdi(MdiLayout.TileHorizontal)

{% endhighlight %}

{% endtabs %}

![WindowStyle tabs](Styles-Settings_images/Styles-Settings_img3.jpeg)
