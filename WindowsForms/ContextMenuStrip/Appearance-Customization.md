---
layout: post
title: Customize appearance in Windows Forms ContextMenuStrip | Syncfusion®
description: Learn here all about appearance customization feature of Syncfusion® Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: windowsforms
control: ContextMenuStripEx
documentation: ug
---

# Customize appearance in WinForms Context Menu Strip

## Background Color

The [`BackColor`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.backcolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_BackColor) property is to set the background color of WinForms Context Menu Strip. Background color is used to improve the visual appearance of the WinForms Context Menu Strip.


The below code snippet will explain how to set background color of WinForms Context Menu Strip.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.BackColor = System.Drawing.Color.SkyBlue;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.BackColor = System.Drawing.Color.SkyBlue

{% endhighlight %}
{% endtabs %}

![Background Color](Appearance_Images/BackColor.png)

## Font

The [`Font`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.font?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_Font) property is to set the "FontFamily" and "FontStyle" of WinForms Context Menu Strip.


The below code snippet will explain the procedure to set font for menu items.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Strikeout);

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.Font = New System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Strikeout)

{% endhighlight %}
{% endtabs %}

![Font](Appearance_Images/Font.png)

## Foreground Color

The [`ForeColor`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.forecolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_ForeColor) property is to set foreground color for menu items. 

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.ForeColor = System.Drawing.Color.Red;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.ForeColor = System.Drawing.Color.Red

{% endhighlight %}
{% endtabs %}

![Foreground](Appearance_Images/ForeColor.png)

## Size

The [`Size`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.size?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Size) property is to set the height and width of context menu items.

>**NOTE**:
In-order to set size for context menu, set [`AutoSize`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.autosize?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_AutoSize) property to false.


The below code snippet is to set the size of context menu.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.AutoSize = false;
this.contextMenuStripEx.Size = new System.Drawing.Size(200, 250);

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.AutoSize = False
Me.contextMenuStripEx.Size = New System.Drawing.Size(200, 250)

{% endhighlight %}
{% endtabs %}

![Size](Appearance_Images/Size.png)

## Text

The [`Text`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.text?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Text) property is used to set the caption of WinForms Context Menu Strip.


The below code snippet will explain how to set text for WinForms Context Menu Strip.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.Text = "Context Menu";

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.Text = "Context Menu"

{% endhighlight %}
{% endtabs %}

![Text](Appearance_Images/Text.png)

## Background Image

The [`BackgroundImage`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimage?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImage) property is to set the background image of WinForms Context Menu Strip.


The below code snippet is to set the background image of WinForms Context Menu Strip.

{% tabs %}
{% highlight c# %}

 this.contextMenuStripEx.BackgroundImage = System.Drawing.Image.FromFile(@"..\..\..\cut.png");

{% endhighlight %}

{% highlight vb %}

 Me.contextMenuStripEx.BackgroundImage = System.Drawing.Image.FromFile("..\..\..\cut.png")

{% endhighlight %}
{% endtabs %}

![Background Image](Appearance_Images/BackgroundImage.png)



