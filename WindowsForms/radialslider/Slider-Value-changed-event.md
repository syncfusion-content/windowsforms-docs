---
layout: post
title: Slider-Value-changed-event | WindowsForms | Syncfusion
description: slider value changed event
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider Value changed event

## Slider current value

We can get the current slider value by using the value changed event.

{% tabs %}

{% highlight C# %}

    this.radialSlider1.ValueChanged += new Syncfusion.Windows.Forms.Tools.RadialSlider.ValueChangedEventHandler(radialSlider1_ValueChanged);



     private void radialSlider1_ValueChanged(object sender, Syncfusion.Windows.Forms.Tools.RadialSlider.ValueChangedEventArgs args)

        {



      this.richTextBox1.SelectionFont = new System.Drawing.Font(Font.Name, (float)this.radialSlider1.Value);

                this.Refresh();

               }

{% endhighlight %}

{% highlight VB %}

    AddHandler Me.radialSlider1.ValueChanged, AddressOf Me.radialSlider1_ValueChanged

    Private Sub radialSlider1_ValueChanged(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.RadialSlider.ValueChangedEventArgs)
        Me.richTextBox1.SelectionFont = New System.Drawing.Font(Font.Name, CType(Me.radialSlider1.Value,Single))
        Me.Refresh
    End Sub

{% endhighlight %}

{% endtabs %}

