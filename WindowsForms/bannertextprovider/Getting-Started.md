---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: BannerTextProvider
documentation: ug
---

# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **BannerTextProvider** with it’s basic functionalities.


## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#bannertextprovider) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details on how to install nuget packages in Windows Forms application.

## Adding a BannerTextProvider control via designer

1) The **BannerTextProvider** control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically.

* Syncfusion.Shared.Base

 ![Drag and drop BannerTextProvider from toolbox](Overview_images/Banner_toolbox.png) 

2) Drag one component from toolbox and add to the form. For example, we can choose **TextBoxExt** control and gets an extender provider property as shown in the following image. 

 ![Windows Forms BannerTextProvider showing set the banner text to TextBoxExt control](Overview_images/Banner_addtext.png) 

## Adding a BannerTextProvider control via code

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly reference to the project.

* Syncfusion.Shared.Base

3) Include required namespace.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms

{% endhighlight vb %}

{% endtabs %}

4) Create an instance of **BannerTextProvider** control.

{% tabs %}

{% highlight C# %}

private BannerTextProvider bannerTextProvider;
this.bannerTextProvider = new Syncfusion.Windows.Forms.BannerTextProvider(this.components);

{% endhighlight %}

{% highlight vb %}

Private bannerTextProvider As BannerTextProvider
Me.bannerTextProvider = New Syncfusion.Windows.Forms.BannerTextProvider(Me.components)

{% endhighlight %}

{% endtabs %}


## Customizing the Banner Text

Extender properties allow you to customize the Banner text. They are as follows.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Visible</td><td>
Indicates whether the banner text should be visible or not.</td></tr>
<tr>
<td>
Text</td><td>
Sets the banner text.</td></tr>
<tr>
<td>
Color</td><td>
Sets the banner text color.</td></tr>
<tr>
<td>
Font</td><td>
Sets the font style for the banner text.</td></tr>
<tr>
<td>
Mode</td><td>
Specifies the rendering mode of the banner text. The modes are,<br/>
1. FocusMode - The banner text disappears when the control gets focus.<br/>
2. EditMode - The banner text disappears only when the control is in Edit Mode or when the associated textbox is not empty.</td></tr>
</table>

## Assign Banner Text to a Control

1) First, Add one control to the form. For Example, we can choose **TextBoxExt** control. Create an instance of **TextBoxExt** and add it to the form.

{% tabs %}

{% highlight c# %}

private TextBoxExt textBoxExt;
this.textBoxExt = new Syncfusion.Windows.Forms.Tools.TextBoxExt();
this.Controls.Add(this.textBoxExt);

{% endhighlight %}

{% highlight vb %}

Private textBoxExt As TextBoxExt
Me.textBoxExt = New Syncfusion.Windows.Forms.Tools.TextBoxExt()
Me.Controls.Add(Me.textBoxExt)

{% endhighlight vb %}

{% endtabs %}

2) Assign the banner text to the control.

{% tabs %}
{% highlight C# %}

BannerTextInfo info = bannerTextProvider1.GetBannerText(this.textBoxExt); // textbox is the control used for example
info.Text = "New Banner Text";

{% endhighlight %}

{% highlight vb %}

Dim info As BannerTextInfo = bannerTextProvider1.GetBannerText(Me.textBoxExt) ' textbox is the control used for example.
info.Text = "New Banner Text"

{% endhighlight %}
{% endtabs %}

N> Make sure you clear the default value of the Text property of the controls before setting the banner text.

{% tabs %}
{% highlight c# %}

this.bannerTextProvider1.SetBannerText(this.textBoxExt, new Syncfusion.Windows.Forms.BannerTextInfo("Type Here...", true, new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic), System.Drawing.Color.RoyalBlue, Syncfusion.Windows.Forms.BannerTextMode.EditMode));

{% endhighlight %}

{% highlight vb %}

Me.bannerTextProvider1.SetBannerText(Me.textBoxExt, New Syncfusion.Windows.Forms.BannerTextInfo("Type Here...", True, New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic), System.Drawing.Color.RoyalBlue, Syncfusion.Windows.Forms.BannerTextMode.EditMode))

{% endhighlight %}
{% endtabs %}
 
 ![Windows Forms BannerTextProvider showing bannertext to TextBoxExt control](Overview_images/Banner_textbox.png) 

N> BannerText feature can be made available for the following controls only.

* [TextBoxBarItem](/windowsforms/popupmenu/popup-menucontext-menuxpmenu-bars#bar-items) (XPMenus)
* [ComboBoxBarItem](/windowsforms/popupmenu/popup-menucontext-menuxpmenu-bars#bar-items) (XPMenus)
* [TextBox](http://help.syncfusion.com/windowsforms/ribboncontroladv/ribbon-textbox) (ToolStripEx)
* [ComboBox](http://help.syncfusion.com/windowsforms/ribboncontroladv/ribbon-combobox ) (ToolStripEx)
* [ComboBoxEx](http://help.syncfusion.com/windowsforms/ribboncontroladv/ribbon-comboboxex)(ToolStripEx)
* [TextBoxExt](http://help.syncfusion.com/windowsforms/textboxext) (Editor Control)
* [CurrencyTextBox](http://help.syncfusion.com/windowsforms/currencytextbox)(Editor Control)
* [ComboBoxAdv](http://help.syncfusion.com/windowsforms/ComboBoxAdv)(Editor Control)
* [ComboDropDown](http://help.syncfusion.com/windowsforms/ComboDropDown ) (Editor Control)
* [ComboBoxAutoComplete](http://help.syncfusion.com/windowsforms/comboboxautocomplete) (Editor Control)
* [Integer TextBox](http://help.syncfusion.com/windowsforms/integertextbox)(Editor Control)
* [Double TextBox](http://help.syncfusion.com/windowsforms/doubletextbox) (Editor Control)
* [Percent TextBox](http://help.syncfusion.com/windowsforms/percenttextbox)(Editor Control)
* Other Microsoft Editor Controls

