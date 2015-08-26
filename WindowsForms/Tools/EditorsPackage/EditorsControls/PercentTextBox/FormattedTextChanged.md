---
layout: post
title: FormattedTextChanged
description: FormattedTextChanged
platform: windowsforms
control: Editors Package
documentation: ug
---



# FormattedTextChanged

This event occurs when the FormattedText property is changed. The FormattedText property returns the formatted text with the formatting.



The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}





private void percentTextBox1_FormattedTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" FormattedTextChanged event is raised ");

}


{% endhighlight %}


{% highlight vbnet %}



Private Sub percentTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" FormattedTextChanged event is raised ")

End Sub
{% endhighlight %}