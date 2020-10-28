---
layout: post
title: Appearance-Settings | WindowsForms | Syncfusion
description: appearance settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Appearance Settings

## Background settings

The Background settings of the NumericUpDownExt control are discussed below.

### Background color

The background color of the control can be set using the properties given below.

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Specifies the background color of the component.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.BackColor = System.Drawing.Color.Aquamarine;

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.BackColor = System.Drawing.Color.Aquamarine

{% endhighlight %}
{% endtabs %}

![](Appearance-Settings_images/Appearance-Settings_img1.png)

## Foreground settings

The foreground settings of the NumericUpDownExt control are discussed below.

### Foreground color

The foreground color of the control can be set using the properties given below.

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
ForeColor</td><td>
Gets / sets the foreground color of the spin box (also known as an up-down control).</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.ForeColor = System.Drawing.Color.DodgerBlue;

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.ForeColor = System.Drawing.Color.DodgerBlue

{% endhighlight %}
{% endtabs %}

![](Appearance-Settings_images/Appearance-Settings_img2.png)

### Applying foreground color to negative values

It is a good behavior in a NumericUpDownExt control to indicate negative values using a separate color. The IntegerTextBox and DoubleTextBox controls also exhibit the same behavior.

![](Appearance-Settings_images/Appearance-Settings_img3.png)

To add this feature to the NumericUpdown control, we need to derive the control. For this, we need to include the below given code snippet in the derived class.

{% tabs %}
{% highlight c# %}

class NumericupdownextDerived : NumericUpDownExt
{
    private IntegerTextBox itb = new IntegerTextBox();
    public NumericupdownextDerived()
    {

// Constructor of the new class.
        foreach(Control c in Controls)
        {
            if(c is TextBox )
            {
                itb.Location=c.Location;
                itb.Size = c.Size;
                itb.Dock = c.Dock;
                itb.Anchor = c.Anchor;
                Controls.Add(itb);
                itb.BringToFront();
                itb.TextChanged += new EventHandler(itb_TextChanged);
            }
        }
    }
    private void itb_TextChanged(object sender,EventArgs e)
    {

// Assigns the IntegerValue.
        Value = itb.IntegerValue;
    }
    public System.Drawing.Color NegativeColor
    {
        get
        {
            return itb.NegativeColor;
        }
        set
        {
            itb.NegativeColor = value;
        }
    }
    protected override void OnValueChanged(EventArgs e)
    {
        itb.Text = Value.ToString();
    }
}

{% endhighlight %}

{% highlight vb %}

Class NumericupdownextDerived Inherits NumericUpDownExt
Private itb As IntegerTextBox = New IntegerTextBox
Public Sub New()
For Each c As Control In Controls
If TypeOf c Is TextBox Then
itb.Location = c.Location
itb.Size = c.Size
itb.Dock = c.Dock
itb.Anchor = c.Anchor
Controls.Add(itb)
itb.BringToFront
AddHandler itb.TextChanged, AddressOf itb_TextChanged
End If
Next
End Sub
Private Sub itb_TextChanged(ByVal sender As Object, ByVal e As EventArgs)

' Assigns the IntegerValue.
Value = itb.IntegerValue
End Sub
Public Property NegativeColor() As System.Drawing.Color
Get
Return itb.NegativeColor
End Get
Set
itb.NegativeColor = value
End Set
End Property
Protected Overloads Overrides Sub OnValueChanged(ByVal e As EventArgs)
itb.Text = Value.ToString
End Sub
End Class

{% endhighlight %}
{% endtabs %}

After deriving the new class, create an object for that class and set the required properties.

{% tabs %}
{% highlight c# %}

NumericupdownextDerived ud = new NumericupdownextDerived();
ud.Location = new Point(200, 200);
ud.Minimum = -100;
ud.NegativeColor = Color.Red;
Controls.Add(ud);

{% endhighlight %}

{% highlight vb %}

Dim ud As NumericupdownextDerived = New NumericupdownextDerived
ud.Location = New Point(200, 200)
ud.Minimum = -100
ud.NegativeColor = Color.Red
Controls.Add(ud)

{% endhighlight %}
{% endtabs %}
