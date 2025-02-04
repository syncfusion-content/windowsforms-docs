---
layout: post
title: Add new items to the list | WindowsForms | Syncfusion®
description: how to add new items to the list when enter key is pressed
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# How to Add New Items to the List when Enter Key is Pressed

To add the new items which are entered by the user at runtime after the user had pressed the enter key, we need to catch the [KeyDown](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.keydown?redirectedfrom=MSDN&view=netframework-4.7.2) event.

{% tabs %}
{% highlight c# %}

private voiddomainUpDownExt1_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
{
// Add new items when user press the Enter key.
    if(e.KeyCode==Keys.Enter)
    if(!domainUpDownExt1.Items.Contains ( domainUpDownExt1.Text )) domainUpDownExt1.Items.Add(domainUpDownExt1.Text);
}

{% endhighlight  %}

{% highlight vb %}

Private SubdomainUpDownExt1_KeyDown(ByValsenderAs Object,ByValeAsSystem.Windows.Forms.KeyEventArgs)

' Add new items when user press the Enter key.
Ife.KeyCode = Keys.EnterThen
If NotdomainUpDownExt1.Items.Contains(domainUpDownExt1.Text)Then
domainUpDownExt1.Items.Add(domainUpDownExt1.Text)
End If
End If
End Sub
{% endhighlight  %}
{% endtabs %}
