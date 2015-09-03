---
layout: post
title: How-to-prevent-a-TreeMenuItem-from-being-selected
description: how to prevent a treemenuitem from being selected?
platform: WindowsForms
control: TreeNavigator
documentation: ug
---

# How to prevent a TreeMenuItem from being selected?

You can use the following code examples to prevent an item from selecting a TreeMenuItem.

{% highlight c# %}



void treeNavigator1_SelectionChanging(TreeNavigator sender, SelectionStateChangingEventArgs args)

{

     if (args.NewValue.Text == "Windows Forms")

         args.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub treeNavigator1_SelectionChanging(sender As TreeNavigator, args As SelectionStateChangingEventArgs)

     If (args.NewValue.Text =="Windows Forms")

         args.Cancel = True

     End If

End Sub

{% endhighlight %}



