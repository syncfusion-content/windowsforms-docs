---
layout: post
title: Styles Settings in Windows Forms TabControl control | Syncfusion®
description: Learn about Styles Settings support in Syncfusion® Windows Forms TabControl (TabControlAdv) control and more details.
platform: windowsforms
control: TabControlAdv
documentation: ug
---

# Styles Settings in Windows Forms TabControl (TabControlAdv)

This section discusses the various Style Settings available in [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html).

## TabStyles

[TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) provides options to customize the [TabStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_TabStyle) settings. Styles can be set through [TabStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_TabStyle) property.

#### 2D

This option helps to set the [2D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRenderer2D.html) theme.

{% tabs %}

{% highlight C# %}

// 2D

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer2D);

{% endhighlight %}

{% highlight VB %}

'2D

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer2D)

{%endhighlight %}

{% endtabs %}

![TabStyle is 2D](Styles-Settings_images/Styles-Settings_img15.png)


#### 3D

This option helps to set the [3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRenderer3D.html) theme.

{% tabs %}

{% highlight C# %}

// 3D

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer3D);

{% endhighlight %}

{% highlight VB %}

'3D

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRenderer3D)

{%endhighlight %}

{% endtabs %}

![TabStyle is 3D](Styles-Settings_images/Styles-Settings_img16.png)

#### Workbook

This option helps to set the [Workbook](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode.html) theme.

{% tabs %}

{% highlight C# %}

// Workbook

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode);

{% endhighlight %}

{% highlight VB %}

'Workbook

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode)

{%endhighlight %}

{% endtabs %}

![Workbook tab style](Styles-Settings_images/Styles-Settings_img17.png)

#### InternetExplorer7

This option helps to set the [InternetExplorer7](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererIE7.html) theme.

{% tabs %}

{% highlight C# %}

// InternetExplorer7

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererIE7);

{% endhighlight %}

{% highlight VB %}

'InternetExplorer7

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererIE7)

{%endhighlight %}

{% endtabs %}

![Internet explorer tab style](Styles-Settings_images/Styles-Settings_img18.png)

#### OneNoteStyle

This option helps to set the [OneNoteStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer.html) theme.

{% tabs %}

{% highlight C# %}

// OneNoteStyle

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer);

{% endhighlight %}

{% highlight VB %}

'OneNoteStyle

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.OneNoteStyleRenderer)

{%endhighlight %}

{% endtabs %}

![One note tab style](Styles-Settings_images/Styles-Settings_img19.png)

#### VS2005DockingStyle

This option helps to set the [VS2005DockingStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey.html).

{% tabs %}

{% highlight C# %}

// VS2005DockingStyle

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey);

{% endhighlight %}

{% highlight VB %}

'VS2005DockingStyle

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbey)

{%endhighlight %}

{% endtabs %}

![VS2005 docking tab style](Styles-Settings_images/Styles-Settings_img20.png)

#### Office2007Blue

This option helps to set the [Office2007Blue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2007.html) theme.

{% tabs %}

{% highlight C# %}

// Office2007Blue

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabControlAdv1.Office2007ColorScheme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2007Blue

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabControlAdv1.Office2007ColorScheme = Office2007Theme.Blue

{%endhighlight %}

{% endtabs %}

![Office2007 blue tab style](Styles-Settings_images/Styles-Settings_img21.png)

#### Office2007Black

This option helps to set the [Office2007Black](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2007.html) theme.

{% tabs %}

{% highlight C# %}

// Office2007Black

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabControlAdv1.Office2007ColorScheme = Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabControlAdv1.Office2007ColorScheme = Office2007Theme.Black

{%endhighlight %}

{% endtabs %}

![Office2007 black tab style](Styles-Settings_images/Styles-Settings_img22.png)

#### Office2007Silver

This option helps to set the [Office2007Silver](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2007.html) theme.

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007);
this.tabControlAdv1.Office2007ColorScheme = Office2007Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2007)
Me.tabControlAdv1.Office2007ColorScheme = Office2007Theme.Silver

{%endhighlight %}

{% endtabs %}

![Office2007 silver tab style](Styles-Settings_images/Styles-Settings_img23.png)

#### VS2005Style

This option helps to set the [VS2005Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererWhidbey.html).

{% tabs %}

{% highlight C# %}

// VS2005Style

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWhidbey);

{% endhighlight %}

{% highlight VB %}

'VS2005Style

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWhidbey)

{%endhighlight %}

{% endtabs %}

![VS2005 tab style](Styles-Settings_images/Styles-Settings_img24.png)

#### VS2005DockingBetaStyle

This option helps to set the [VS2005DockingBetaStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta.html).

{% tabs %}

{% highlight C# %}

// VS2005DockingBetaStyle

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta);

{% endhighlight %}

{% highlight VB %}

'VS2005DockingBetaStyle

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererDockingWhidbeyBeta)

{%endhighlight %}

{% endtabs %}

![VS2005 docking beta tab style](Styles-Settings_images/Styles-Settings_img25.png)


#### Office2003

This option helps to set the [Office2003](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2003.html) theme.

{% tabs %}

{% highlight C# %}

// Office2003

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2003);

{% endhighlight %}

{% highlight VB %}

'Office2003

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2003)

{%endhighlight %}

{% endtabs %}

![Office2003 tab style](Styles-Settings_images/Styles-Settings_img26.png)

#### VS2008

This option helps to set the [VS2008](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererVS2008.html) theme.

{% tabs %}

{% highlight C# %}

// VS2008

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererVS2008);

{% endhighlight %}

{% highlight VB %}

'VS2008

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererVS2008)

{%endhighlight %}

{% endtabs %}

![VS2008 tab style](Styles-Settings_images/Styles-Settings_img27.png)

#### VS2010

This option helps to set the [VS2010](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererVS2010.html) theme.

{% tabs %}

{% highlight C# %}

// VS2010

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererVS2010);

{% endhighlight %}

{% highlight VB %}

'VS2010

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererVS2010)

{%endhighlight %}

{% endtabs %}

![VS2010 tab style](Styles-Settings_images/Styles-Settings_img28.png)

#### Metro

This option helps to set the [Metro theme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererMetro.html).

{% tabs %}

{% highlight C# %}

// Metro

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererMetro);

{% endhighlight %}

{% highlight VB %}

'Metro

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererMetro)

{%endhighlight %}

{% endtabs %}

![Metro tab style](Styles-Settings_images/Styles-Settings_img29.png)

#### Office2016Colorful

This option helps to set the [Office2016Colorful](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful.html) theme.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful);

{% endhighlight %}

{% highlight VB %}

'Office2016Colorful

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful)

{%endhighlight %}

{% endtabs %}

![Office2016 colorful tab style](Styles-Settings_images/Styles-Settings_img11.png)

#### Office2016White

This option helps to set the [Office2016White](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White.html) theme.

{% tabs %}

{% highlight C# %}

// Office2016White

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White);

{% endhighlight %}

{% highlight VB %}

'Office2016White

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016White)

{%endhighlight %}

{% endtabs %}

![Office2016 white tab style](Styles-Settings_images/Styles-Settings_img12.png)

#### Office2016DarkGray

This option helps to set the [Office2016DarkGray](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray.html) theme.

{% tabs %}

{% highlight C# %}

// Office2016DarkGray

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray);

{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016DarkGray)

{%endhighlight %}

{% endtabs %}

![Office2016 dark gray tab style](Styles-Settings_images/Styles-Settings_img13.png)

#### Office2016Black

This option helps to set the [Office2016Black](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black.html) theme.

{% tabs %}

{% highlight C# %}

// Office2016Black

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black);

{% endhighlight %}

{% highlight VB %}

'Office2016Black

Me.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Black)

{%endhighlight %}

{% endtabs %}

![Office2016 black tab style](Styles-Settings_images/Styles-Settings_img14.png)

## Custom color schemes

Custom colors can also be applied to the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html). 

{% tabs %}

{% highlight C# %}

//Set the below code for applying the managed color scheme.

this.FormTabControl.TabStyle = typeof(TabRendererOffice2007);

this.FormTabControl.Office2007ColorScheme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Green);

{% endhighlight %}

{% highlight VB %}


'Set the below code for applying the managed color scheme.

Me.FormTabControl.TabStyle = GetType(TabRendererOffice2007)

Me.FormTabControl.Office2007ColorScheme = Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.Green)

{% endhighlight %}

{% endtabs %}

![Custom color](Styles-Settings_images/Styles-Settings_img9.jpeg)


## SizeMode

The [SizeMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_SizeMode) of the TabStrip allows to position the TabItems according to the selected options.


* In Normal mode, the size of each tab depends on the text and image settings of the tab.
* In Fixed mode, the size of each tab is the same as the value specified in the ItemSize property.
* In ShrinkToFit mode, the width of each tab is shrunk so that all the tabs are visible (this is only applicable to the TabControlAdv in single-line mode). 
* In FillToRight mode, the width of each tab is sized so that each row of tabs occupies the entire width of the ContainerControl (this is only applicable to TabControlAdv with more than one row).

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Normal;

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Fixed;

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.ShrinkToFit;

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.FillToRight;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Normal

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Fixed

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.ShrinkToFit

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.FillToRight

{% endhighlight %}

{% endtabs %}

![Size modes](Styles-Settings_images/Styles-Settings_img6.jpeg)

