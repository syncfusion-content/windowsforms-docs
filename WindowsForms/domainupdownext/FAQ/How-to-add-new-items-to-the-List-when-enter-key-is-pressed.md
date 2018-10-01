---
layout: post
title: How to add new items to the List when enter key is pressed | WindowsForms | Syncfusion
description: how to add new items to the list when enter key is pressed
platform: WindowsForms
control: DomainUpdownExt 
documentation: ug
---
# How to Add New Items to the List when Enter Key is Pressed

To add the new items which are entered by the user at runtime after the user had pressed the enter key, we need to catch theKeyDown event.

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
