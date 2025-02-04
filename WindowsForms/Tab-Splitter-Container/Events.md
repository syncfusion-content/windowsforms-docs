---
layout: post
title: Events in Windows Forms Tab Splitter Container control | Syncfusion®
description: Learn about Events support in Syncfusion® Windows Forms Tab Splitter Container control and more details.
platform: windowsforms
control: TabSplitterContainer 
documentation: ug
---

# Events in Windows Forms Tab Splitter Container

This section comprises the below events:

## SelectedIndexChanged event of PrimaryPages

The [SelectedIndexChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterPagesCollection.html) event is handled whenever primary page selection is changed.

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

## SelectedIndexChanged event of SecondaryPages

The [SelectedIndexChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterPagesCollection.html) event is handled whenever secondary page selection is changed.

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

