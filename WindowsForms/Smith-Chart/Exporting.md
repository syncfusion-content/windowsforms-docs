---
layout: post
title: Exporting the Syncfusion SfSmithChart control as a image.
description: This section explains on how to export SfSmithChart control as an image file in different format.
platform: windowsforms
control: SfSmithChart
documentation: ug
---

# Exporting as an Image

SfSmithChart control provide a support for exporting the smithchart control as an image in the different image format. 

Based on the filename extension the SfSmithChart has built-in support to save the image in the following formats.

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

SfSmithChart control provide two ways to call `SaveImage()` method.

* Call the method with argument
* Call the method without argument

## Call the method with argument

In this case exporting  the smithchart control as an image in the specified image format and saved in the given file path location.

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

## Call the method without argument

In this case the image will be saved in application bin folder with .png image format and the image name is SmithChartImage. 

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

