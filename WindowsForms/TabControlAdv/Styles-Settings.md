---
layout: post
title: Styles-Settings | Windows Forms | Syncfusion
description: styles settings
platform: windowsforms
control: TabControlAdv
documentation: ug
---

# Style Settings

This section discusses the various Style Settings available in TabControlAdv.

## TabStyles

TabControlAdv provides options to customize the TabStyle settings. Styles can be set through `TabStyle` property.

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
TabStyle</td><td>
Specifies the look and feel of the TabcontrolAdv. The options include,2D,3D,Workbook,InternetExplorer7Style,OneNoteStyle,VS2005DockingStyle,Office2007Style,VS2005Style,VS2005DockingStyleBeta,Office2003Style, VS2008Style and Metro.</td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.tabControlAdv1.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode);

{% endhighlight %}

{% highlight vb %}


Me.tabControlAdv1.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererWorkbookMode)

{% endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img7.png)


## Custom Color Schemes

Custom colors can also be applied to the TabControlAdv. 

{% tabs %}

{% highlight c# %}

//Set the below code for applying the managed color scheme.

this.FormTabControl.TabStyle = typeof(TabRendererOffice2007);

this.FormTabControl.Office2007ColorScheme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Green);

{% endhighlight %}

{% highlight vb %}


'Set the below code for applying the managed color scheme.

Me.FormTabControl.TabStyle = GetType(TabRendererOffice2007)

Me.FormTabControl.Office2007ColorScheme = Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.Green)

{% endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img9.jpeg)


## SizeMode

The `SizeMode` of the TabStrip allows to position the TabItems according to the selected options.

<table>
<tr>
<th>
TabControlAdv property</th><th>
Description</th></tr>
<tr>
<td>
SizeMode</td><td>
Specifies how the tabs should be sized and aligned. The options include:Normal,Fixed,FillToRight,ShrinkToFit.</td></tr>
</table>


* In Normal mode, the size of each tab depends on the text and image settings of the tab.
* In Fixed mode, the size of each tab is the same as the value specified in the ItemSize property.
* In ShrinkToFit mode, the width of each tab is shrunk so that all the tabs are visible (this is only applicable to the TabControlAdv in single-line mode). 
* In FillToRight mode, the width of each tab is sized so that each row of tabs occupies the entire width of the ContainerControl (this is only applicable to TabControlAdv with more than one row).

{% tabs %}

{% highlight c# %}

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Normal;

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Fixed;

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.ShrinkToFit;

this.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.FillToRight;

{% endhighlight %}

{% highlight vb %}

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Normal

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.Fixed

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.ShrinkToFit

Me.tabControlAdv1.SizeMode = Syncfusion.Windows.Forms.Tools.TabSizeMode.FillToRight

{% endhighlight %}

{% endtabs %}

![](Styles-Settings_images/Styles-Settings_img6.jpeg)

