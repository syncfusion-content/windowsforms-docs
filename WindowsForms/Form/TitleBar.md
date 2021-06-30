---
layout: post
title: Title Bar in Windows Forms Form control | Syncfusion
description: Learn about Title Bar support in Syncfusion Windows Forms Form (SfForm) control, its elements and more details.
platform: WindowsForms
control: SfForm
documentation: ug
---

# Title Bar in Windows Forms Form (SfForm)

## Title bar height

Height of the title bar can be changed by using the [Style.TitleBar.Height](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_Height) property.

{% tabs %}
{% highlight c# %}
this.Style.TitleBar.Height = 45;
{% endhighlight %}
{% highlight vb %}
Me.Style.TitleBar.Height = 45
{% endhighlight %}
{% endtabs %}
![Form titlebar shown with custom height](TitleBar_images/TitleBar_Image1.png)

## Text alignment

Text on the title bar can be aligned horizontally and vertically by using the [Style.TitleBar.TextHorizontalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_TextHorizontalAlignment) and [Style.TitleBar.TextVerticalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_TextVerticalAlignment) properties respectively.

{% tabs %}
{% highlight c# %}
this.Style.TitleBar.TextHorizontalAlignment = HorizontalAlignment.Center;
this.Style.TitleBar.TextVerticalAlignment = VerticalAlignment.Top;
{% endhighlight %}
{% highlight vb %}
Me.Style.TitleBar.TextHorizontalAlignment = HorizontalAlignment.Center
Me.Style.TitleBar.TextVerticalAlignment = VerticalAlignment.Top
{% endhighlight %}
{% endtabs %}
![Form titlebar shown with text alignment](TitleBar_images/TitleBar_Image2.png)

## Customization of title bar buttons

Icons on the title bar buttons can be changed by loading any custom icon by using the button image properties in the [Style.TitleBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_TitleBar) such as [CloseButtonImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_CloseButtonImage), [MaximizeButtonImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_MaximizeButtonImage) and [MinimizeButtonImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_MinimizeButtonImage).

By default, the title bar buttons have the following states:

* Normal state
* Hover state
* Pressed state

Icons for the title bar buttons can be changed to normal, hovered, and pressed states by using the image properties of the corresponding state such as [CloseButtonHoverImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_CloseButtonHoverImage) and [MaximizeButtonPressedImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_MaximizeButtonPressedImage).

{% tabs %}
{% highlight c# %}
//Title bar button icons on normal state
this.Style.TitleBar.CloseButtonImage = Image.FromFile("close.ico");
this.Style.TitleBar.MaximizeButtonImage = Image.FromFile("max.ico");
this.Style.TitleBar.MinimizeButtonImage = Image.FromFile("min.ico");

//Title bar button icons on hover state
this.Style.TitleBar.CloseButtonHoverImage = Image.FromFile("hoverClose.ico");
this.Style.TitleBar.MaximizeButtonHoverImage = Image.FromFile("hoverMax.ico");
this.Style.TitleBar.MinimizeButtonHoverImage = Image.FromFile("hoverMin.ico");

//Title bar button icons on pressed state
this.Style.TitleBar.CloseButtonPressedImage = Image.FromFile("pressedClose.ico");
this.Style.TitleBar.MaximizeButtonPressedImage = Image.FromFile("pressedMax.ico");
this.Style.TitleBar.MinimizeButtonPressedImage = Image.FromFile("pressedMin.ico");
{% endhighlight %}
{% highlight vb %}
'Title bar button icons on normal state
Me.Style.TitleBar.CloseButtonImage = Image.FromFile("close.ico")
Me.Style.TitleBar.MaximizeButtonImage = Image.FromFile("max.ico")
Me.Style.TitleBar.MinimizeButtonImage = Image.FromFile("min.ico")

'Title bar button icons on hover state
Me.Style.TitleBar.CloseButtonHoverImage = Image.FromFile("hoverClose.ico")
Me.Style.TitleBar.MaximizeButtonHoverImage = Image.FromFile("hoverMax.ico")
Me.Style.TitleBar.MinimizeButtonHoverImage = Image.FromFile("hoverMin.ico")

'Title bar button icons on pressed state
Me.Style.TitleBar.CloseButtonPressedImage = Image.FromFile("pressedClose.ico")
Me.Style.TitleBar.MaximizeButtonPressedImage = Image.FromFile("pressedMax.ico")
Me.Style.TitleBar.MinimizeButtonPressedImage = Image.FromFile("pressedMin.ico")
{% endhighlight %}
{% endtabs %}

### Hiding the title bar buttons

Buttons in the title bar can be hide by disabling the [MinimizeBox](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.form.minimizebox?view=net-5.0), [MaximizeBox](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.form.maximizebox?view=net-5.0) and [CloseButtonVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfForm.html#Syncfusion_WinForms_Controls_SfForm_CloseButtonVisible) properties.

{% tabs %}
{% highlight c# %}
this.MinimizeBox = false;
this.MaximizeBox = false;
{% endhighlight %}
{% highlight vb %}
Me.MinimizeBox = False
Me.MaximizeBox = False
{% endhighlight %}
{% endtabs %}

![Hiding title bar buttons](TitleBar_images/TitleBar_Image3.png)

## Rich text formatting

Rich text can be displayed inside the title bar by enabling the [Style.TitleBar.AllowRichText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_AllowRichText) property and adding the proper rich text to the [Text](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.form.text?view=net-5.0) property of the form.

{% tabs %}
{% highlight c# %}
//Enabling the rich text support
this.Style.TitleBar.AllowRichText = true;
//Adding rich text
this.Text = "{\\rtf1\\ansi\\deff0{\\colortbl;\\red150\\green0\\blue20;\\red100\\green0\\blue150;}" + "{\\fonttbl{\\f0 Segoe UI;\r\n}}\\qc\\f0\\fs23 {\\cf1 Untitled* \\cf2 - \\b Custom Text Editor}}";
{% endhighlight %}
{% highlight vb %}
'Enabling the rich text support
Me.Style.TitleBar.AllowRichText = True

'Adding rich text 
Me.Text = "{\\rtf1\\ansi\\deff0{\\colortbl;\\red150\\green0\\blue20;\\red100\\green0\\blue150;}" + "{\\fonttbl{\\f0 Segoe UI;\r\n}}\\qc\\f0\\fs23 {\\cf1 Untitled* \\cf2 - \\b Custom Text Editor}}"
{% endhighlight %}
{% endtabs %}
![Rich text formatting in SfForm](TitleBar_images/TitleBar_Image4.png)

N> Adding rich text to the `Text` property will have no effect, if the `AllowRichText` property is `false`.

## Loading user control to the title bar

The SfForm allows you to load any user control into the title bar instead of title bar text by using the [TitleBarTextControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfForm.html#Syncfusion_WinForms_Controls_SfForm_TitleBarTextControl) property. Size of the user control should be set properly to fit the control within the title bar.

{% tabs %}
{% highlight c# %}
FlowLayoutPanel searchPanel = new FlowLayoutPanel();
searchPanel.Size = new Size(190, 25);
Label searchingLabel = new Label();
searchingLabel.Size = new Size(70, 80);
searchingLabel.Text = "Searching";
TextBox searchBox = new TextBox();
searchPanel.Controls.Add(searchingLabel);
searchPanel.Controls.Add(searchBox);

//Loads the searchPanel to the title bar.
this.TitleBarTextControl = searchPanel;
{% endhighlight %}
{% highlight vb %}
Dim searchPanel As New FlowLayoutPanel()
searchPanel.Size = New Size(190, 25)
Dim searchingLabel As New Label()
searchingLabel.Size = New Size(70, 80)
searchingLabel.Text = "Searching"
Dim searchBox As New TextBox()
searchPanel.Controls.Add(searchingLabel)
searchPanel.Controls.Add(searchBox)

'Loads the searchPanel to the title bar.
Me.TitleBarTextControl = searchPanel
{% endhighlight %}
{% endtabs %}

![SfForm shows control in TitleBar](TitleBar_images/TitleBar_Image5.png)

The following sample shows how to load user control to the title bar:

&lt;Installation Location&gt;\Syncfusion\EssentialStudio[Version_ Number]\ Windows\Core.WinForms\Samples\SfForm\TitleBarControl 


## Appearance

Appearance of the title bar can be customized by using the [Style.TitleBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_TitleBar) property that contains all the settings for customizing the title bar appearance.

{% tabs %}
{% highlight c# %}
//Sets the back color and fore color of the title bar.
this.Style.TitleBar.BackColor = Color.Black;
this.Style.TitleBar.ForeColor = Color.White;

//Sets the fore color of the title bar buttons
this.Style.TitleBar.CloseButtonForeColor = Color.White;
this.Style.TitleBar.MinimizeButtonForeColor = Color.White;
this.Style.TitleBar.MaximizeButtonForeColor = Color.White;

//Sets the hover state back color of the title bar buttons
this.Style.TitleBar.CloseButtonHoverBackColor = Color.DarkGray;
this.Style.TitleBar.MinimizeButtonHoverBackColor = Color.DarkGray;
this.Style.TitleBar.MaximizeButtonHoverBackColor = Color.DarkGray;

//Sets the pressed state back color of the title bar buttons
this.Style.TitleBar.CloseButtonPressedBackColor = Color.Gray;
this.Style.TitleBar.MaximizeButtonPressedBackColor = Color.Gray;
this.Style.TitleBar.MinimizeButtonPressedBackColor = Color.Gray;

//Sets the back color of the client area.
this.Style.BackColor = Color.DarkGray;
{% endhighlight %}
{% highlight vb %}
'Sets the back color and fore color of the title bar.
Me.Style.TitleBar.BackColor = Color.Black
Me.Style.TitleBar.ForeColor = Color.White

'Sets the fore color of the title bar buttons
Me.Style.TitleBar.CloseButtonForeColor = Color.White
Me.Style.TitleBar.MinimizeButtonForeColor = Color.White
Me.Style.TitleBar.MaximizeButtonForeColor = Color.White

'Sets the hover state back color of the title bar buttons
Me.Style.TitleBar.CloseButtonHoverBackColor = Color.DarkGray
Me.Style.TitleBar.MinimizeButtonHoverBackColor = Color.DarkGray
Me.Style.TitleBar.MaximizeButtonHoverBackColor = Color.DarkGray

'Sets the pressed state back color of the title bar buttons
Me.Style.TitleBar.CloseButtonPressedBackColor = Color.Gray
Me.Style.TitleBar.MaximizeButtonPressedBackColor = Color.Gray
Me.Style.TitleBar.MinimizeButtonPressedBackColor = Color.Gray

'Sets the back color of the client area.
Me.Style.BackColor = Color.DarkGray
{% endhighlight %}
{% endtabs %}

![Appearance customization in SfFrom](TitleBar_images/TitleBar_Image6.png)

### Icon backcolor

You can customize the back color of the icon in title bar using the [IconBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_IconBackColor) property.

{% tabs %}
{% highlight c# %}

//Sets the icon back color of the title bar.
this.Style.TitleBar.IconBackColor = Color.Olive;

{% endhighlight %}
{% highlight vb %}

'Sets the icon back color of the title bar.
Me.Style.TitleBar.IconBackColor = Color.Olive

{% endhighlight %}
{% endtabs %}

![Back color of icon in title bar is changed for windows forms SfForm](TitleBar_images/TitleBar_Image7.png)

### Caption image

You can change the caption image in title bar by using the [CaptionImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_CaptionImage) property.

{% tabs %}
{% highlight c# %}

//Sets the caption image of the title bar.
this.Style.TitleBar.CaptionImage = SystemIcons.Error.ToBitmap();

{% endhighlight %}
{% highlight vb %}

'Sets the caption image of the title bar.
Me.Style.TitleBar.CaptionImage = SystemIcons.Error.ToBitmap()

{% endhighlight %}
{% endtabs %}

![Caption image in titlebar is changed for windows forms SfFrom](TitleBar_images/TitleBar_Image8.png)

### Caption image location

You can change the location of the caption image in title bar by using the [CaptionImageLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_CaptionImageLocation) property.

{% tabs %}
{% highlight c# %}

//Sets the caption image location of the title bar.
this.Style.TitleBar.CaptionImageLocation = new Point(40, 5);

{% endhighlight %}
{% highlight vb %}

'Sets the caption image location of the title bar.
Me.Style.TitleBar.CaptionImageLocation = New Point(40, 5)

{% endhighlight %}
{% endtabs %}
