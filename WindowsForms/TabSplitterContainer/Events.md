---
layout: post
title: Events | WindowsForms | Syncfusion
description: events
platform: WindowsForms
control: TabSplitterContainer 
documentation: ug
---

# Events

This section comprises the below events:

## PrimaryPages.SelectedIndexChanged event

This event is handled whenever primary page selection is changed.

{% tabs %}

{% highlight C# %}



this.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1;



private void PrimaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show(" Primary page is changed");

}

{% endhighlight %}

{% highlight VB %}



Me.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1



Private Sub PrimaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show(" Primary page is changed")

End Sub

{% endhighlight %}

{% endtabs %}

## SecondaryPages.SelectedIndexChanged event

This event is handled whenever secondary page selection is changed.

{% tabs %}

{% highlight C# %}



this.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3;



private void SecondaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show("Secondary Page is Changed");

}

{% endhighlight %}

{% highlight VB %}



Me.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3



Private Sub SecondaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Secondary Page is Changed")

End Sub

{% endhighlight %}

{% endtabs %}

