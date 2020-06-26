---
layout: post
title: Exporting the syncfusion `SfSmithChart` control as an image.
description: This section explains how to exporting the syncfusion `SfSmithChart` control as an image file in different formats.
platform: windowsforms
control: SfSmithChart
documentation: ug
---

# Exporting the smith chart control

The `SfSmithChart` control provides two ways to export the output view.

* Exporting as an Image
* Copy to clipboard

## Exporting as an Image

The `SfSmithChart` control provides a support for exporting the smith chart as an image in the different image formats. 

SfSmithChart has built-in support to save the image in the following formats:

<table>
<tr>
<th>
File Extension</th><th>
File Type</th></tr>
<tr>
<td>
.bmp</td><td>
BMP</td></tr>
<tr>
<td>
.jpg</td><td>
JPEG</td></tr>
<tr>
<td>
.jpeg</td><td>
JPEG</td></tr>
<tr>
<td>
.gif</td><td>
GIF</td></tr>
<tr>
<td>
.tiff</td><td>
TIFF</td></tr>
<tr>
<td>
.Wmf</td><td>
WMF</td></tr>
<tr>
<td>
.emf</td><td>
EMF</td></tr>
<tr>
<td>
.png</td><td>
PNG</td></tr>
<tr>
</table>

The `SfSmithChart` control provides two ways to call `SaveImage()` method.

* Call the method with argument.
* Call the method without argument.

### Call the method with argument

In this case, pass the argument as method paramenter for exporting an image in the specified image format and saved in the given file path location.

{% tabs %}

{% highlight c# %}

    public partial class SaveImage : Form
    {
        SfSmithChart smithchart = new SfSmithChart();

        public SaveImage()
        {
            InitializeComponent();
            smithchart.Text = "Impedance Transmission";
            smithchart.Height = 400;
            smithchart.Width = 1000;
            smithchart.HorizontalAxis.MinorGridlinesVisible = true;
            smithchart.RadialAxis.MinorGridlinesVisible = true;
            smithchart.Location = new Point(0, 0);
            this.Controls.Add(smithchart);
            Button button = new Button();
            button.Height = 50;
            button.Width = 350;
            button.Click += Button_Click;
            button.DialogResult = DialogResult.OK;
            button.Text = "Call save image method";
            button.Location = new Point(1100, 200);
            this.Controls.Add(button);
        }
        private void Button_Click(object sender, EventArgs e)
        {
               smithchart.SaveImage(@"D:\\Downloads\\smithChart.jpg");
        }
    }

{% endhighlight %}

{% highlight vb.net %}

Public Partial Class SaveImage
    Inherits Form

    Private smithchart As SfSmithChart = New SfSmithChart()
    Public Sub New()
        InitializeComponent()
        smithchart.Text = "Impedance Transmission"
        smithchart.Height = 400
        smithchart.Width = 1000
        smithchart.HorizontalAxis.MinorGridlinesVisible = True
        smithchart.RadialAxis.MinorGridlinesVisible = True
        smithchart.Location = New Point(0, 0)
        Me.Controls.Add(smithchart)
        Dim button As Button = New Button()
        button.Height = 50
        button.Width = 350
        button.Click += AddressOf Button_Click
        button.DialogResult = DialogResult.OK
        button.Text = "Call save image method"
        button.Location = New Point(1100, 200)
        Me.Controls.Add(button)
    End Sub

    Private Sub Button_Click(ByVal sender As Object, ByVal e As EventArgs)
        smithchart.SaveImage("D:\\Downloads\\smithChart.jpg")
    End Sub
End Class

{% endhighlight %}

{% endtabs %}

### Call the method without argument

In this case, the image will be saved as .png image format in application bin folder and the image name is SmithChartImage. 

{% tabs %}

{% highlight c# %}

    public partial class SaveImage : Form
    {
        SfSmithChart smithchart = new SfSmithChart();

        public SaveImage()
        {
            InitializeComponent();
            smithchart.Text = "Impedance Transmission";
            smithchart.Height = 400;
            smithchart.Width = 1000;
            smithchart.HorizontalAxis.MinorGridlinesVisible = true;
            smithchart.RadialAxis.MinorGridlinesVisible = true;
            smithchart.Location = new Point(0, 0);
            this.Controls.Add(smithchart);
            Button button = new Button();
            button.Height = 50;
            button.Width = 350;
            button.Click += Button_Click;
            button.DialogResult = DialogResult.OK;
            button.Text = "Call save image method";
            button.Location = new Point(1100, 200);
            this.Controls.Add(button);
        }
        private void Button_Click(object sender, EventArgs e)
        {
            smithchart.SaveImage();
        }
    }

{% endhighlight %}

{% highlight vb.net %}

Public Partial Class SaveImage
    Inherits Form

    Private smithchart As SfSmithChart = New SfSmithChart()
    Public Sub New()
        InitializeComponent()
        smithchart.Text = "Impedance Transmission"
        smithchart.Height = 400
        smithchart.Width = 1000
        smithchart.HorizontalAxis.MinorGridlinesVisible = True
        smithchart.RadialAxis.MinorGridlinesVisible = True
        smithchart.Location = New Point(0, 0)
        Me.Controls.Add(smithchart)
        Dim button As Button = New Button()
        button.Height = 50
        button.Width = 350
        button.Click += AddressOf Button_Click
        button.DialogResult = DialogResult.OK
        button.Text = "Call save image method"
        button.Location = New Point(1100, 200)
        Me.Controls.Add(button)
    End Sub

    Private Sub Button_Click(ByVal sender As Object, ByVal e As EventArgs)
        smithchart.SaveImage()
    End Sub
End Class

{% endhighlight %}

{% endtabs %}

## Copy to clipboard

The SfSmithChart control provides two ways to copy the smith chart output into clipboard.

* Pressing `Ctrl+C` key.
* Call `CopyToClipboard()` method.

N> By pressing `Ctrl+C`, control should be in focused state when using the keyboard to copy the output into clipboard

{% tabs %}

{% highlight c# %}

    public partial class CopyToClipboard : Form
    {
        SfSmithChart smithchart = new SfSmithChart();

        public CopyToClipboard()
        {
            InitializeComponent();
            smithchart.Text = "Impedance Transmission";
            smithchart.Height = 400;
            smithchart.Width = 1000;
            smithchart.HorizontalAxis.MinorGridlinesVisible = true;
            smithchart.RadialAxis.MinorGridlinesVisible = true;
            smithchart.Location = new Point(0, 0);
            this.Controls.Add(smithchart);
            Button button = new Button();
            button.Height = 50;
            button.Width = 350;
            button.Click += Button_Click;
            button.DialogResult = DialogResult.OK;
            button.Text = "Call copy to clipboard method";
            button.Location = new Point(1100, 200);
            this.Controls.Add(button);
        }
        private void Button_Click(object sender, EventArgs e)
        {
            smithchart.CopyToClipboard();
        }
    }

{% endhighlight %}

{% highlight vb.net %}

Public Partial Class CopyToClipboard
    Inherits Form

    Private smithchart As SfSmithChart = New SfSmithChart()

    Public Sub New()
        InitializeComponent()
        smithchart.Text = "Impedance Transmission"
        smithchart.Height = 400
        smithchart.Width = 1000
        smithchart.HorizontalAxis.MinorGridlinesVisible = True
        smithchart.RadialAxis.MinorGridlinesVisible = True
        smithchart.Location = New Point(0, 0)
        Me.Controls.Add(smithchart)
        Dim button As Button = New Button()
        button.Height = 50
        button.Width = 350
        button.Click += AddressOf Button_Click
        button.DialogResult = DialogResult.OK
        button.Text = "Call copy to clipboard method"
        button.Location = New Point(1100, 200)
        Me.Controls.Add(button)
    End Sub

    Private Sub Button_Click(ByVal sender As Object, ByVal e As EventArgs)
        smithchart.CopyToClipboard()
    End Sub
End Class

{% endhighlight %}

{% endtabs %}



