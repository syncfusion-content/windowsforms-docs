---
layout: post
title: How to Add New Items to List in DomainUpdownExt | Syncfusion®
description: Learn how to add new items to the list when the Enter key is pressed in the Syncfusion Windows Forms DomainUpdownExt control using the KeyDown event.
platform: windowsforms
control: DomainUpdownExt
documentation: ug
---

# How to Add New Items to List in WinForms DomainUpDownExt

To add new items that the user enters at runtime after the user has pressed the Enter key, you need to handle the [KeyDown](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.keydown?redirectedfrom=MSDN&view=netframework-4.7.2) event.

{% tabs %}
{% highlight c# %}

private void domainUpDownExt1_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
{
    // Add new items when user presses the Enter key.
    if (e.KeyCode == Keys.Enter)
    {
        if (!domainUpDownExt1.Items.Contains(domainUpDownExt1.Text))
        {
            domainUpDownExt1.Items.Add(domainUpDownExt1.Text);
        }
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub domainUpDownExt1_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs)

    ' Add new items when user presses the Enter key.
    If e.KeyCode = Keys.Enter Then
        If Not domainUpDownExt1.Items.Contains(domainUpDownExt1.Text) Then
            domainUpDownExt1.Items.Add(domainUpDownExt1.Text)
        End If
    End If
End Sub
{% endhighlight %}
{% endtabs %}
