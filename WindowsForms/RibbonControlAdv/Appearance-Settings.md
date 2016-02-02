---
layout: post
title: Appearance-Settings | WindowsForms | Syncfusion
description: appearance settings
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---
# Appearance Settings

## Setting Visual Styles

The Ribbon control ships with a number of built-in themes such as Office2007, Office2010, Office2013 and TouchStyle.

The following code example illustrates how to set style for the RibbonControlAdv.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.RibbonStyle = RibbonStyle.Office2007;

{% endhighlight %}

{% highlight vb %}

Me.RibbonControlAdv1.RibbonStyle =RibbonStyle.Office2007

{% endhighlight %}

{% endtabs %}

* Office 2007 Style

![](Appearance-Settings_images/Appearance-Settings_img6.png)

* Office 2010 Style

![](Appearance-Settings_images/Appearance-Settings_img7.png)

* Office 2013 Style

![](Appearance-Settings_images/Appearance-Settings_img8.png)

* TouchStyle

![](Appearance-Settings_images/Appearance-Settings_img9.png)

## OfficeColorSchemes

The Ribbon Control Adv has come up with the same visual style of Office 2007. The users can choose between three colors Blue, Silver and Black which, can be set through the OfficeColorScheme property of the RibbonControlAdv class.

{% highlight c# %}

this.ribbonControlAdv1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.ToolStripEx.ColorScheme.Blue;

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.ToolStripEx.ColorScheme.Blue

{% endhighlight %}

![](Appearance-Settings_images/Appearance-Settings_img1.jpeg)

![](Appearance-Settings_images/Appearance-Settings_img2.jpeg)

![](Appearance-Settings_images/Appearance-Settings_img3.jpeg)

## Custom Color Scheme 

To set custom colors, set the ColorScheme as Managed. Then set the desired color using the  Syncfusion.Windows.Forms.Tools.Office12ColorTable.ApplyManagedColors method. 

{% highlight c# %}

//set the custom color to the form and RibbonControlAdv 

this.ColorScheme = ColorSchemeType.Managed;

this.ribbonControlAdv1.OfficeColorScheme = ToolStripEx.ColorScheme.Managed;

Office12ColorTable.ApplyManagedColors(this, Color.Red); 

{% endhighlight %}

{% highlight vbnet %}

'set the custom color to the form and RibbonControlAdv 

Me.ColorScheme = ColorSchemeType.Managed

Me.ribbonControlAdv1.OfficeColorScheme = ToolStripEx.ColorScheme.Managed

Office12ColorTable.ApplyManagedColors(Me, Color.Red)

{% endhighlight %}

![](Appearance-Settings_images/Appearance-Settings_img4.jpeg)

##	Office 2013 Color Schemes

The RibbonControlAdv includes new color schemes as available in the Office 2013 suite to provide a more personalized experience with the RibbonControlAdv.

RibbonControlAdv now supports three themes: White, LightGray, and DarkGray. These themes can be set through the Office2013ColorScheme property to tone down the bright white background of the ribbon. 

The following code sample illustrates how to set the DarkGray theme for the Office 2013 style RibbonControl.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.Office2013ColorScheme = Office2013ColorScheme.DarkGray;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.Office2013ColorScheme = Office2013ColorScheme.DarkGray
  
{% endhighlight %}

{% endtabs %}

* Dark Gray

![](Appearance-Settings_images/Appearance-Settings_img10.png)

* Light Gray

![](Appearance-Settings_images/Appearance-Settings_img11.png)

* White (Default)

![](Appearance-Settings_images/Appearance-Settings_img12.png)

## TouchStyle ColorTable

RibbonControlAdv can now be fully customized in TouchStyle. This can be achieved by using TouchStyle ColorTable.
The following code demonstrate how to use the TouchStyleColorTable.

{% tabs %}

{% highlight c# %}

//Creates an instance for the TouchStyleColorTable

TouchStyleColorTable _touchColorTable = new TouchStyleColorTable();


//To set forecolor of the Active tab item

_touchColorTable.ToolstripActiveTabItemForeColor = Color.RoyalBlue;
//To set forecolor of the Inactive tab item

_touchColorTable.ToolstripTabItemForeColor = Color.White;
//To set the Button hover color

_touchColorTable.ButtonHoverColor = ColorTranslator.FromHtml("#cde6f7");
//To set the border color

_touchColorTable.ToolStripBorderColor = Color.Blue;

//To set the Menu button arrow color

_touchColorTable.MenuButtonArrowColor = Color.White;

//To set the Menu button hover in RibbonControlAdv

_touchColorTable.MenuButtonHoverArrowColor = Color.Pink;

//To set the header color of the RibbonControlAdv

_touchColorTable.HeaderColor = Color. DarkViolet;

//To set the body color of the dropdown items

_touchColorTable.DropDownBodyColor = Color.White;

//To set the forecolor of the dropdown items

_touchColorTable.DropDownTextForeColor = Color.Black;

//To set the back color of the dropdown items

_touchColorTable.DropDownMenuItemBackground = ColorTranslator.FromHtml("#0272c5");

//To set the body color of the selected dropdown items

_touchColorTable.DropDownSelectedTextForeColor = Color.White;

//To set the border color of the ToolStripTabItem.

_touchColorTable.ToolstripTabItemBorder = ColorTranslator.FromHtml("#0272c5");


//To apply TouchStyleColorTable for RibbonControlAdv

this.ribbonControlAdv1.ApplyTouchStyleColorTable(_touchColorTable);

{% endhighlight %}

{% highlight vb %}

'Creates an instance for the TouchStyleColorTable 

Dim _touchColorTable As New TouchStyleColorTable()


'To set forecolor of the Active tab item

_touchColorTable.ToolstripActiveTabItemForeColor = Color.RoyalBlue

'To set forecolor of the Inactive tab item

_touchColorTable.ToolstripTabItemForeColor = Color.White

'To set the Button hover color

_touchColorTable.ButtonHoverColor = ColorTranslator.FromHtml("#cde6f7")

'To set the border color

_touchColorTable.ToolStripBorderColor = Color.Blue

'To set the Menu button arrow color

_touchColorTable.MenuButtonArrowColor = Color.White

'To set the Menu button hover in RibbonControlAdv

_touchColorTable.MenuButtonHoverArrowColor = Color.Pink

'To set the header color of the RibbonControlAdv

_touchColorTable.HeaderColor = Color. DarkViolet

'To set the body color of the dropdown items

_touchColorTable.DropDownBodyColor = Color.White

'To set the forecolor of the dropdown items

_touchColorTable.DropDownTextForeColor = Color.Black

'To set the back color of the dropdown items

_touchColorTable.DropDownMenuItemBackground = ColorTranslator.FromHtml("#0272c5")

'To set the body color of the selected dropdown items

_touchColorTable.DropDownSelectedTextForeColor = Color.White

'To set the border color of the ToolStripTabItem.

_touchColorTable.ToolstripTabItemBorder = ColorTranslator.FromHtml("#0272c5")

'To apply TouchStyleColorTable for RibbonControlAdv

Me.ribbonControlAdv1.ApplyTouchStyleColorTable(_touchColorTable)

{% endhighlight %}

{% endtabs %}

![](Appearance-Settings_images/Appearance-Settings_img13.png)


