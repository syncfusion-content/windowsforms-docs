---
layout: post
title: Getting-Started
description: Getting Started
platform: windowsforms
control: BannerTextProviderComponent
documentation: ug
---

# Getting Started


Syncfusion introduces BannerTextProvider class which provides the ability to show banner text in the textbox. 

 ![](Overview_images/Overview_img2.jpeg) 



* BannerTextProvider component is available in the Toolbox under Syncfusion tab. 

 ![](Overview_images/Overview_img3.jpeg) 



* Drag the component onto the form. The control in the form, for ex, ComboBoxBarItem will get an extender provider property as in the image below. 

 ![](Overview_images/Overview_img4.jpeg) 



## Customizing the Banner Text

Extender properties which lets you customize the Banner text are as follows.

Table 5: Property Table

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
Specifies the rendering mode of the banner text. The modes are,* {{ 'FocusMode' | markdownify }} - The banner text disappears when the control gets focus.* {{ 'EditMode' | markdownify }} - The banner text will only disappears when the control is in Edit Mode or the associated textbox is not empty.</td></tr>
</table>


## How to change the text for already assigned banner text of a control?

This is done using the below code. 

{% highlight C# %}





BannerTextInfo info = bannerTextProvider1.GetBannerText(comboBoxAutoComplete1); // textbox is the control used for example

info.Text = "New Banner Text";
{% endhighlight %}


{% highlight vbnet %}



Dim info As BannerTextInfo = bannerTextProvider1.GetBannerText(comboBoxAutoComplete1) ' textbox is the control used for example



info.Text = "New Banner Text"
{% endhighlight %}

  



N> Make sure you clear the default value of the Text property of the controls before setting the banner text.

{% highlight c# %}

this.bannerTextProvider1.SetBannerText(this.comboBoxBarItem1, new Syncfusion.Windows.Forms.BannerTextInfo("Enter Your Country", true, new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic), System.Drawing.Color.RoyalBlue, Syncfusion.Windows.Forms.BannerTextMode.FocusMode));

{% endhighlight %}

{% highlight vbnet %}




Me.bannerTextProvider1.SetBannerText(Me.comboBoxBarItem1, New Syncfusion.Windows.Forms.BannerTextInfo("Enter Your Country", True, New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic), System.Drawing.Color.RoyalBlue, Syncfusion.Windows.Forms.BannerTextMode.FocusMode)) 

{% endhighlight %}

 
 ![](Overview_images/Overview_img5.jpeg) 





N> BannerText feature can be made available for the below controls only.


* [TextBoxBarItem](/windowsforms/popup-menu/popup-menucontext-menuxpmenu-bars#textboxbarItem) (XPMenus)
* [ComboBoxBarItem](/windowsforms/popup-menu/popup-menucontext-menuxpmenu-bars#comboboxbarItem) (XPMenus)
* [TextBox](/windowsforms/ribbonadv/ribbon-control-items#toolstripex) (ToolStripEx)
* [ComboBox](/windowsforms/ribbonadv/ribbon-control-items#combobox ) (ToolStripEx)
* [ComboBoxEx](/windowsforms/ribbonadv/ribbon-control-items#comboboxex)
* [TextBoxExt](/windowsforms/textboxext) (Editor Control)
* [CurrencyTextBox](/windowsforms/currencytextbox)(Editor Control)
* [ComboBoxAdv](/windowsforms/ComboBoxAdv)(Editor Control)
* [ComboDropDown](/windowsforms/ComboDropDown ) (Editor Control)
* [ComboBoxAutoComplete](/windowsforms/comboboxautocomplete) (Editor Control)
* [Integer TextBox](/windowsforms/integertextbox)(Editor Control)
* [Double TextBox](/windowsforms/doubletextbox) (Editor Control)
* [Percent TextBox](/windowsforms/percenttextbox)(Editor Control)
* Other Microsoft Editor Controls




