---
layout: post
title: Selection in Windows Forms Tree Navigator control | Syncfusion
description: Learn about Selection support in Syncfusion Windows Forms Tree Navigator control, its elements and more details.
platform: WindowsForms
control: TreeNavigator 
documentation: ug
---

# Selection in Windows Forms Tree Navigator

The selected item of the current hierarchy level is get/set through SelectedItem property.

The following code examples allow you to set the SelectedItem.

{% tabs %}

{% highlight c# %}

//To set the selected item in the Tree navigator.

this.treeNavigator1.SelectedItem = treeMenuItem3;

{% endhighlight %}

{% highlight vb %}

‘To set the selected item in the Tree navigator.

Me.treeNavigator1.SelectedItem = treeMenuItem3

{% endhighlight %}

{% endtabs %}


![SelectedItem](Concept-and-Features_images/SelectedItem.png)

## SelectionChanging Event
This event is triggered before the selection of the tree menu item changes.

### Event Data

SelectionStateChangingEventArgs contains the following members that provide information specific to this event.          

<table>
<tr>
<th>
Members<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
NewValue<br/><br/></td><td>
This property returns the newly selected item.<br/><br/></td></tr>
<tr>
<td>
OldValue<br/><br/></td><td>
This property returns the previously selected item.<br/><br/></td></tr>
<tr>
<td>
Extended<br/><br/></td><td>
This property returns true when the selected item is expanded.<br/><br/></td></tr>
<tr>
<td>
Cancel<br/><br/></td><td>
This property enables you to avoid particular item from Selection.<br/><br/></td></tr>
</table>

{% tabs %}

{% highlight c# %}

void treeNavigator1_SelectionChanging(TreeNavigator sender, SelectionStateChangingEventArgs args)
   {
       args.Cancel = true;
       TreeMenuItem item = args.NewValue;
        TreeMenuItem OldItem = args.OldValue;
       bool temp = args.Expanded;
   }

{% endhighlight %}

{% highlight vb %}

Private Sub treeNavigator1_SelectionChanging(sender As TreeNavigator, args As SelectionStateChangingEventArgs)
        args.Cancel = True
        Dim item As TreeMenuItem = args.NewValue
        Dim OldItem As TreeMenuItem = args.OldValue
        Dim temp As Boolean = args.Expanded
End Sub

{% endhighlight %}


{% endtabs %}

## SelectionChanged Event
This event is triggered after the selection of the tree menu item changes.

###  Event Data
SelectionStateChangedEventArgs contains the following members that provide information specific to this event.

<table>
<tr>
<th>
Members<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
SelectedItem<br/><br/></td><td>
This property returns the currently selected item.<br/><br/></td></tr>
<tr>
<td>
Expanded<br/><br/></td><td>
This property returns true when the selected item is expanded.<br/><br/></td></tr>
<tr>
<td>
</table>

{% tabs %}

{% highlight c# %}

void treeNavigator1_SelectionChanged(TreeNavigator sender, SelectionStateChangedEventArgs e)
    {
        TreeMenuItem menu = e.SelectedItem;
        bool temp = e.Expanded;
    }


{% endhighlight %}

{% highlight vb %}

Private Sub treeNavigator1_SelectionChanged(sender As TreeNavigator, e As SelectionStateChangedEventArgs)
   Dim menu As TreeMenuItem = e.SelectedItem
   Dim temp As Boolean = e.Expanded
End Sub

{% endhighlight %}

{% endtabs %}

## Selection in Windows Forms Tree Navigator
Scrolling can be customized by using Touch scroll. When you mouse over or touch near scroll bar area, the scroll bar will be visible and by default, the scroll will not be visible. This can be enabled by setting UseTouchScrollBehavior property to true.

The following code examples allow you to enable touch scroll.

{% tabs %}

{% highlight c# %}

this.treeNavigator1.UseTouchScrollBehavior = true;

{% endhighlight %}

{% highlight vb %}

Me.treeNavigator1.UseTouchScrollBehavior = True

{% endhighlight %}

{% endtabs %}


![UseScroll1](Concept-and-Features_images/UseScroll1.png)
