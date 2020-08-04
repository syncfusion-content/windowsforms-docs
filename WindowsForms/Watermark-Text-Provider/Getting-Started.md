---
layout: post
title: Getting started with BannerTextProvider | WindowsForms | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Watermark Text Provider (BannerText) control and more details.
platform: WindowsForms
control: BannerTextProvider
documentation: ug
---

# Getting Started with Watermark Text Provider(BannerText)

This section briefly describes how to create a new Windows Forms project in Visual Studio and add [BannerTextProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextProvider.html) with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#bannertextprovider) section to get the list of assemblies or the details of NuGet package that needs to be added as reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details about installing nuget packages in a Windows Forms application.

## Creating Application with BannerTextProvider
Create new Windows Forms Project in Visual Studio to display watermark for editor controls using [BannerTextProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextProvider.html) control.

## Adding BannerTextProvider control via designer

1) Create a new Windows Forms application using Visual Studio.

2) Add the the [BannerTextProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextProvider.html) control to an application by dragging it from the toolbox to Form designer window. The [dependent assemblies](https://help.syncfusion.com/windowsforms/control-dependencies#bannertextprovider) will be added automatically.

![Drag and drop BannerTextProvider from toolbox](GettingStarted_images/GettingStarted_img1.png) 

3) Drag the required control from toolbox and add to the form. For example, you can choose [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control and get an extender provider property as illustrated in the following sample.

![BannerTextProvider in Properties window of TextBoxExt control](GettingStarted_images/GettingStarted_img3.png) 

![BannerTextProvider added to TextBoxExt control](GettingStarted_images/GettingStarted_img2.png) 

## Adding BannerTextProvider control via code

In order to add [BannerTextProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextProvider.html) control manually, do the below steps,

1) 	Add the required [assembly references](https://help.syncfusion.com/windowsforms/control-dependencies#bannertextprovider) to the project.

2) Add the required namespace and create the [BannerTextProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextProvider.html) control instance then add it to the Form.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms

{% endhighlight vb %}

{% endtabs %}

{% tabs %}

{% highlight C# %}

BannerTextProvider bannerTextProvider1 = new BannerTextProvider(this.components);

{% endhighlight %}

{% highlight vb %}

Dim bannerTextProvider As bannerTextProvider1 = New BannerTextProvider(Me.components)

{% endhighlight %}

{% endtabs %}


## Assigning banner text to a control

1) Add the control to which you want to set BannerText in the form. For example, you can choose [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt.html) and add it to the form.

{% tabs %}

{% highlight c# %}

TextBoxExt textBoxExt = new TextBoxExt()
{
    Size = new Size(150, 50),
    Location = new Point(50, 50)
};

this.Controls.Add(textBoxExt);

{% endhighlight %}

{% highlight vb %}

 Dim textBoxExt As TextBoxExt = New TextBoxExt() With 
{
    .Size = New Size(150, 50),
    .Location = New Point(50, 50)
}

Me.Controls.Add(textBoxExt)

{% endhighlight vb %}

{% endtabs %}

2) Assign the banner text to the control.

{% tabs %}
{% highlight C# %}

 BannerTextInfo bannerTextInfo = new BannerTextInfo()
{
    Text = "Type here...",
    Visible = true,
};

bannerTextProvider1.SetBannerText(textBoxExt, bannerTextInfo);

{% endhighlight %}

{% highlight vb %}

Dim bannerTextInfo As BannerTextInfo = New BannerTextInfo() With 
{
    .Text = "Type here...",
    .Visible = True
}

bannerTextProvider1.SetBannerText(textBoxExt, bannerTextInfo)

{% endhighlight %}
{% endtabs %}

N> Make sure to clear the default value of the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextInfo~Text.html) property of the control before setting the banner text.

The [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextInfo~Visible.html) property allows you to customize visibilty of BannerTextProvider control. [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextInfo~Text.html) and [Color](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextInfo~Color.html) properties allows you to set the watermark text and it's forecolor. The [Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextInfo~Font.html) property allows to customize the Font of watermark.

The rendering mode for disappering the banner text can be customized by using [Mode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextInfo~Mode.html) property using the following values,

* FocusMode - The banner text disappears when the control gets focus.
* EditMode - The banner text disappears only when the control is in Edit mode or when the associated text box is not empty.


{% tabs %}
{% highlight c# %}

bannerTextProvider1.SetBannerText(textBoxExt, new Syncfusion.Windows.Forms.BannerTextInfo("Type here...", true, new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic), System.Drawing.Color.RoyalBlue, Syncfusion.Windows.Forms.BannerTextMode.EditMode));

{% endhighlight %}

{% highlight vb %}

bannerTextProvider1.SetBannerText(textBoxExt, New Syncfusion.Windows.Forms.BannerTextInfo("Type here...", True, New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic), System.Drawing.Color.RoyalBlue, Syncfusion.Windows.Forms.BannerTextMode.EditMode))

{% endhighlight %}
{% endtabs %}
 
 ![Windows Forms BannerTextProvider showing bannertext to TextBoxExt control](Overview_images/Banner_textbox.png) 


## Controls which supports BannerText

 [BannerTextProvider](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.BannerTextProvider.html) feature can only be used for the following controls only.

* [TextBoxBarItem](http://help.syncfusion.com/windowsforms/popupmenu/popup-menucontext-menuxpmenu-bars#bar-items) (XPMenus)
* [ComboBoxBarItem](http://help.syncfusion.com/windowsforms/popupmenu/popup-menucontext-menuxpmenu-bars#bar-items) (XPMenus)
* [TextBox](http://help.syncfusion.com/windowsforms/ribbon/getting-started#add-toolstriptextbox ) (ToolStripEx)
* [ComboBox](http://help.syncfusion.com/windowsforms/ribbon/getting-started#toolstripcombobox ) (ToolStripEx)
* [ComboBoxEx](http://help.syncfusion.com/windowsforms/ribbon/getting-started#toolstripcomboboxex ) (ToolStripEx)
* [TextBoxExt](http://help.syncfusion.com/windowsforms/textbox/overview ) (Editor Control)
* [CurrencyTextBox](http://help.syncfusion.com/windowsforms/currency-textbox/overview ) (Editor Control)
* [ComboBoxAdv](http://help.syncfusion.com/windowsforms/classic/combobox/overview ) (Editor Control)
* [ComboDropDown](http://help.syncfusion.com/windowsforms/combobox-dropdown/overview ) (Editor Control)
* [ComboBoxAutoComplete](http://help.syncfusion.com/windowsforms/classic/autocomplete/overview ) (Editor Control)
* [Integer TextBox](http://help.syncfusion.com/windowsforms/integer-textbox/overview ) (Editor Control)
* [Double TextBox](http://help.syncfusion.com/windowsforms/double-textbox/overview ) (Editor Control)
* [Percent TextBox](http://help.syncfusion.com/windowsforms/percent-textbox/overview )(Editor Control)
* Other Microsoft Editor Controls

