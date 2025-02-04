---
layout: post
title: Fonts-of-Active-and-Inactive-Tabs | WindowsForms | Syncfusion®
description: how to customize the fonts of active and inactive tabs
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to customize the fonts of active and inactive tabs

Using the [TabControlAdded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) event, the fonts of active and inactive tabs can be customized.

{% tabs %}

{% highlight C# %}



// Handle the TabbedMDIManager's TabControlAdded event to get hold of 

// the TabControlAdv associated with it.

this.tabbedMdiManager.TabControlAdded += new TabbedMDITabControlEventHandler(TabbedMDITabControl_Added);

private void TabbedMDITabControl_Added(object sender, TabbedMDITabControlEventArgs args)

{

args.TabControl.ActiveTabFont = new Font ("Comic Sans MS", 11);

args.TabControl.Font = new Font ("Italic", 12);

}

{% endhighlight %}

{% highlight VB %}



' Handle the TabbedMDIManager's TabControlAdded event to get hold of 

' the TabControlAdv associated with it.

Me.tabbedMdiManager.TabControlAdded += New TabbedMDITabControlEventHandler(TabbedMDITabControl_Added)

Private Sub TabbedMDITabControl_Added(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

args.TabControl.ActiveTabFont = New Font("Comic Sans MS", 11)

args.TabControl.Font = New Font("Italic", 12)

End Sub

{% endhighlight %}

{% endtabs %}
