---
layout: post
title: How-to-customize-the-fonts-of-Active-and-Inactive-Tabs
description: how to customize the fonts of active and inactive tabs
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# How to customize the fonts of Active and Inactive tabs

Using the TabControlAdded event, the fonts of active and inactive tabs can be customized.

{% highlight c# %}



// Handle the TabbedMDIManager's TabControlAdded event to get hold of 

// the TabControlAdv associated with it.

this.tabbedMdiManager.TabControlAdded += new TabbedMDITabControlEventHandler(TabbedMDITabControl_Added);

private void TabbedMDITabControl_Added(object sender, TabbedMDITabControlEventArgs args)

{

args.TabControl.ActiveTabFont = new Font ("Comic Sans MS", 11);

args.TabControl.Font = new Font ("Garamond", 12);

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the TabbedMDIManager's TabControlAdded event to get hold of 

' the TabControlAdv associated with it.

Me.tabbedMdiManager.TabControlAdded += New TabbedMDITabControlEventHandler(TabbedMDITabControl_Added)

Private Sub TabbedMDITabControl_Added(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

args.TabControl.ActiveTabFont = New Font("Comic Sans MS", 11)

args.TabControl.Font = New Font("Garamond", 12)

End Sub

{% endhighlight %}

