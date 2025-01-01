---
layout: post
title: Add a picture to the chart area | Windows Forms | Chart | Syncfusion
description: This section explains how to enhance a chart by adding a picture or image (such as a business logo) anywhere on the chart area.
platform: windowsforms
control: chart
documentation: ug
---

# How to add an image on Chart area

By using the [ChartDockControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDockControl.html) with adding image on the dock control with position changes, you can add an image anywhere on the chart area to represent the details with pictorial format. 

{% tabs %}

{% highlight c# %}
ChartDockControl dockControl;
ChartControl chartControl;
ChartSeries chartSeries;
...
    this.chartControl = new ChartControl();
    this.chartControl.Location = new System.Drawing.Point(200, 55);
    this.chartControl.Palette = ChartColorPalette.GreenYellowStyle;
    this.chartControl.Size = new System.Drawing.Size(452, 400);
    this.chartControl.TabIndex = 2;
    this.chartControl.ShowLegend = false;
    this.chartControl.PrimaryXAxis.DrawMinorGrid = false;
    this.chartControl.PrimaryXAxis.DrawGrid = false;
    this.chartControl.PrimaryXAxis.EdgeLabelsDrawingMode = ChartAxisEdgeLabelsDrawingMode.Shift;
    this.chartControl.PrimaryYAxis.DrawMinorGrid = false;
    this.chartControl.PrimaryYAxis.DrawGrid = false;
    this.chartControl.PrimaryYAxis.EdgeLabelsDrawingMode = ChartAxisEdgeLabelsDrawingMode.Shift;
    this.chartControl.Paint += ChartControl_Paint;

    PictureBox picture = new PictureBox();
    picture.Image = Image.FromFile(@"..\..\peek.png");
    picture.SizeMode = PictureBoxSizeMode.StretchImage;
    picture.Size = new Size(38, 38);

    dockControl = new ChartDockControl(picture);
    dockControl.Size = new Size(38, 38);
    dockControl.Position = ChartDock.Floating;
    dockControl.Alignment = ChartAlignment.Center;
    dockControl.Controls.Add(picture);

    dockControl.BringToFront();
    this.chartControl.Controls.Add(dockControl);
    chartSeries = new ChartSeries();
    chartSeries.Type = ChartSeriesType.Line;
    chartSeries.Points.Add(new ChartPoint(2001, 12));
    chartSeries.Points.Add(new ChartPoint(2002, 14));
    chartSeries.Points.Add(new ChartPoint(2002, 14));
    chartSeries.Points.Add(new ChartPoint(2004, 24));
    chartSeries.Points.Add(new ChartPoint(2005, 40));
    chartSeries.Points.Add(new ChartPoint(2005, 40));
    chartSeries.Points.Add(new ChartPoint(2007, 20));
    chartSeries.Points.Add(new ChartPoint(2008, 30));
    this.chartControl.Series.Add(chartSeries);
    this.Controls.Add(this.chartControl);
    ...
    
    private void ChartControl_Paint(object sender, PaintEventArgs e)
    {
    var position = this.chartControl.ChartArea.GetPointByValue(this.chartControl.Series[0].Points[5]);
    //Position the dock control
     dockControl.Location = new Point(position.X-(dockControl.Height-20),position.Y - dockControl.Height);
    }
    ...
    
{% endhighlight %}

{% highlight vb %}
  Private chartControl As Syncfusion.Windows.Forms.Chart.ChartControl
        Private dockControl As ChartDockControl
        Private pictureBox As PictureBox
        Private chartSeries As ChartSeries
        Private xPosition As Point
        ...

         Private Sub InitializeComponent()
            Me.ClientSize = New System.Drawing.Size(800, 450)
            Me.chartControl = New ChartControl()
            Me.SuspendLayout()
            Me.chartControl.Location = New System.Drawing.Point(200, 55)
            Me.chartControl.Palette = ChartColorPalette.GreenYellowStyle
            Me.chartControl.Size = New System.Drawing.Size(452, 400)
            Me.chartControl.TabIndex = 2
            Me.chartControl.ShowLegend = False
            Me.chartControl.PrimaryXAxis.DrawMinorGrid = False
            Me.chartControl.PrimaryXAxis.DrawGrid = False
            Me.chartControl.PrimaryXAxis.EdgeLabelsDrawingMode = ChartAxisEdgeLabelsDrawingMode.Shift
            Me.chartControl.PrimaryYAxis.DrawMinorGrid = False
            Me.chartControl.PrimaryYAxis.DrawGrid = False
            Me.chartControl.PrimaryYAxis.EdgeLabelsDrawingMode = ChartAxisEdgeLabelsDrawingMode.Shift
            AddHandler Me.chartControl.Paint, AddressOf Me.chartControl1_Paint
            Dim img As Image = Image.FromStream(New MemoryStream(File.ReadAllBytes("peek.png")))
            pictureBox = New PictureBox()
            pictureBox.Image = img
            pictureBox.SizeMode = PictureBoxSizeMode.StretchImage
            pictureBox.Size = New Size(38, 38)

            dockControl = New ChartDockControl(pictureBox)
            dockControl.Size = New Size(38, 38)
            dockControl.Position = ChartDock.Floating
            dockControl.Alignment = ChartAlignment.Center
            dockControl.Controls.Add(pictureBox)

            dockControl.BringToFront()
            Me.chartControl.Controls.Add(dockControl)

            chartSeries = New ChartSeries()
            chartSeries.Type = ChartSeriesType.Line
            chartSeries.Points.Add(New ChartPoint(2001, 12))
            chartSeries.Points.Add(New ChartPoint(2002, 14))
            chartSeries.Points.Add(New ChartPoint(2002, 14))
            chartSeries.Points.Add(New ChartPoint(2004, 24))
            chartSeries.Points.Add(New ChartPoint(2005, 40))
            chartSeries.Points.Add(New ChartPoint(2005, 40))
            chartSeries.Points.Add(New ChartPoint(2007, 20))
            chartSeries.Points.Add(New ChartPoint(2008, 30))
            Me.chartControl.Series.Add(chartSeries)

            Me.Controls.Add(chartControl)
            Me.Name = "Form1"
            Me.Text = "Form1"
            Me.ResumeLayout(False)
        End Sub
        Private Sub chartControl1_Paint(ByVal sender As Object, ByVal e As PaintEventArgs)
            xPosition = Me.chartControl.ChartArea.GetPointByValue(Me.chartControl.Series(0).Points(5))
            dockControl.Location = New Point(xPosition.X - 20, xPosition.Y - dockControl.Height)
        End Sub
        
{% endhighlight %}

{% endtabs %}	

![Adding an image on chart area in WindowsForms application](how-to-add-image-on-chart-area/adding-image-on-windowsforms-chart-area.png)