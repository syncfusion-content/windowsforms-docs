---
layout: post
title: How to add new items to the List when enter key is pressed
description: how to add new items to the list when enter key is pressed
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# How to add new items to the List when enter key is pressed

To add the new items which are entered by the user at runtime after the user had pressed the enter key, we need to catch theKeyDownevent.



{% highlight c# %}

private voiddomainUpDownExt1_KeyDown(objectsender, System.Windows.Forms.KeyEventArgs e)

{

// Add new items when user press the Enter key.

if(e.KeyCode==Keys.Enter)

if(!domainUpDownExt1.Items.Contains ( domainUpDownExt1.Text )) domainUpDownExt1.Items.Add(domainUpDownExt1.Text);

}



{% endhighlight  %}
{% highlight vbnet %}


Private SubdomainUpDownExt1_KeyDown(ByValsenderAs Object,ByValeAsSystem.Windows.Forms.KeyEventArgs)
 ' Add new items when user press the Enter key.

Ife.KeyCode = Keys.EnterThen

If NotdomainUpDownExt1.Items.Contains(domainUpDownExt1.Text)Then

domainUpDownExt1.Items.Add(domainUpDownExt1.Text)

End If

End If

End Sub
{% endhighlight  %}