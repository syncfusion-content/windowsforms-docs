---
layout: post
title: Clipboard operation in Syncfusion SfSmithChart control
description: This section explains on how to copy the smith chart output in to clipboard.
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# Clipboard Operations 

The SfSmithChart control provides two ways to copy the smith chart output in to clipboard.

* Pressing `Ctrl+C`
* Call `CopyToClipboard()` method

N> In pressing `Ctrl+C` case control is copied when control on focused state.

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

