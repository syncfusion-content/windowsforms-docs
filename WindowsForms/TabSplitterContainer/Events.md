---
layout: post
title: Events
description: events
platform: WindowsForms
control: TabSplitterContainer 
documentation: ug
---

# Events

This section comprises the below events:

## PrimaryPages.SelectedIndexChanged Event

This event is handled whenever primary page selection is changed.

{% highlight c# %}



this.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1;



private void PrimaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show(" Primary page is changed");

}

{% endhighlight %}

{% highlight vbnet %}



Me.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1



Private Sub PrimaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show(" Primary page is changed")

End Sub

{% endhighlight %}

## SecondaryPages.SelectedIndexChanged Event

This event is handled whenever secondary page selection is changed.

{% highlight c# %}



this.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3;



private void SecondaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show("Secondary Page is Changed");

}

{% endhighlight %}

{% highlight vbnet %}



Me.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3



Private Sub SecondaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Secondary Page is Changed")

End Sub

{% endhighlight %}

