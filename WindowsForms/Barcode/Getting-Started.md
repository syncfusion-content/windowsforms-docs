---
layout: post
title: Getting Started with Windows Forms Barcode control | Syncfusion
description: Learn here about getting started with Syncfusion Essential Studio Windows Forms Barcode control and more.
platform: windowsforms
control: SfBarcode
documentation: ug
---
# Getting Started with Windows Forms Barcode
This section provides a quick overview for working with the barcode for WinForms.

## Assembly deployment
The following assembly reference is required for deploying Barcode.

{% highlight c# %}

Namespace: Syncfusion.Windows.Forms.Barcode

Assembly: Syncfusion.SfBarcode.Windows

{% endhighlight  %}

## Creating application with SfBarcode
In this walk through, users will create WinForms application that contains SfBarcode control.

### Creating the project
Create new Windows Forms Project in Visual Studio to display SfBarcode.

### Adding control via Designer
SfBarcode control can be added to the application by dragging it from Toolbox and dropping it in Designer. The required assembly references will be added automatically.
![Getting-Started_img1](Getting-Started_images/Getting-Started_img1.png)

### Adding control in Code
In order to add control manually, do the below steps,

1. Add the below required assembly references to the project,

    *  Syncfusion.SfBarcode.Windows

2. Create the SfBarcode control instance and add it to the Form

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
using Syncfusion.Windows.Forms.Barcode;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            SfBarcode sfDataGrid1 = new SfBarcode();
            sfBarcode1.Text = "http://www.google.com";
            this.Controls.Add(this.sfBarcode1);
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Imports Syncfusion.Windows.Forms.Barcode

Namespace WindowsFormsApplication1
	Partial Public Class Form1
		Inherits Form
		Public Sub New()
			InitializeComponent()
			Dim sfBarcode1 As New SfBarcode()
			sfBarcode1.Text = "http://www.google.com"
			Me.Controls.Add(Me.SfBarcode1)
		End Sub
	End Class
End Namespace
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}
