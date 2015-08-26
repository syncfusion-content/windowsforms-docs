---
layout: post
title: NavigationPaneDropDownClick Event
description: NavigationPaneDropDownClick Event
platform: windowsforms
control: Navigation Package
documentation: ug
--- 

## NavigationPaneDropDownClick Event

It occurs when the user clicks on the GroupBar control's Navigation Pane DropDown button. This event is applicable for the 
Stacked GroupBar i.e. the StackedMode property of the GroupBar should be set to True. The event handler receives an argument of 
type NavigationPaneDropDownClickEventArgs containing data related to this event.

The following event property is associated with the NavigationPaneDropDownClickEventArgs.

_Table_ _557__: Member Table_

<table>
<tr>
<td>
Member</td><td>
Description</td></tr>
<tr>
<td>
ContextMenuProvider</td><td>
Returns the menu provider object used by the GroupBar for creating it's context menu.</td></tr>
</table>


{% highlight C# %}  

private void groupBar1_NavigationPaneDropDownClick(object sender, NavigationPaneDropDownClickEventArgs e)

{

  // NavigationPaneDropDownClick Event has a property called ContextMenuProvider which returns the object   

// used for creating the context menu.

Console.Write(" NavigationPaneDropDownClick Event is raised ");

Console.Write("ContextMenuProvider :" + e.ContextMenuProvider.ToString());

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub groupBar1_NavigationPaneDropDownClick(ByVal sender As Object, ByVal e As NavigationPaneDropDownClickEventArgs)

// NavigationPaneDropDownClick Event has a property called ContextMenuProvider which returns the object   

// used for creating the context menu.

Console.Write(" NavigationPaneDropDownClick Event is raised ")

Console.Write("ContextMenuProvider :" + e.ContextMenuProvider.ToString())

End Sub

{% endhighlight %}