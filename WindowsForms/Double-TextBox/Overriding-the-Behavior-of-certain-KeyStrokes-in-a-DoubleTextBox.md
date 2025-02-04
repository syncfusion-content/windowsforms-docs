---
layout: post
title: Overriding the Behavior in WinForms Double TextBox | Syncfusion®
description: Learn about Overriding the Behavior of certain Keystrokes in a Doubletextbox support in Syncfusion® Windows Forms Double TextBox control and more details.
platform: windowsforms
control: DoubleTextBox
documentation: ug
---
# Overriding the Behavior in a Double text box in Windows Forms

This can be done by overriding the HandleSubtractKey(). Given below is the code snippet which shows an example of how to clear the text when the NegativeSign is changed.

{% tabs %}
{% highlight C# %}  
public class DoubleTextBoxAdv : Syncfusion.Windows.Forms.Tools.DoubleTextBox
{
    public DoubleTextBoxAdv() : base() { }
    private bool deleteonnegative = false;
    public bool DeleteOnNegative
    {
        get
        {
            return deleteonnegative;
        }
        set
        {
            deleteonnegative = value;
        }
    }
    // Overrides the behavior of SubtractKey so that the text is cleared when the NegativeSign is changed.
    protected override Syncfusion.Windows.Forms.Tools.NumberModifyState HandleSubtractKey()
    {
        if (deleteonnegative == true)
        {
            if (this.NegativeSign == "-" && this.Text.StartsWith("-"))
            {
                this.Clear();
            }
        }
        return base.HandleSubtractKey();
    }
}
{% endhighlight %}
{% highlight VB %} 
Public Class DoubleTextBoxAdv
    Inherits Syncfusion.Windows.Forms.Tools.DoubleTextBox
    Public Sub New()
        MyBase.New()
    End Sub
    Private m_deleteonnegative As Boolean = False
    Public Property DeleteOnNegative() As Boolean
        Get
            Return m_deleteonnegative
        End Get
        Set(ByVal value As Boolean)
            m_deleteonnegative = value
        End Set
    End Property
    ' Overrides the behavior of Subtract Key so that the text is cleared when the NegativeSign is changed.
    Protected Overloads Overrides Function HandleSubtractKey() AsSyncfusion.Windows.Forms.Tools.NumberModifyState
        If m_deleteonnegative = True Then
            If Me.NegativeSign = "-" AndAlso Me.Text.StartsWith("-") Then
                Me.Clear()
            End If
        End If
        Return MyBase.HandleSubtractKey()
    End Function
End Class
{% endhighlight %}
{% endtabs %}

![Double text box key strokes](DoubleTextBox-images/DoubleTextBox_img5.png)

