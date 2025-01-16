---
layout: post
title: Find and Replace in Windows Forms MultiColumn TreeView | Syncfusion
description: Learn about Find and Replace support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Find and Replace in Windows Forms MultiColumn TreeView

## TreeViewFindReplaceDialog

The find and replace feature enables users to search and replace a specific tree node present in the MultiColumnTreeView control. You can implement the fastest Find and Replace functionality in the MultiColumnTreeView control by using the TreeViewFindReplaceDialog class. This class provides the methods that are necessary to perform a find and replace operation.

The value entered in the Search Text field is highlighted in the MultiColumnTreeView control after the search action is performed. You can switch to each highlighted tree node by clicking the Find Next button. This functionality is available only when there is more than one search result.

*	Search and replace functionalities can be performed for the entire MultiColumnTreeView control or specific levels of tree nodes.

*	Search and replace functionalities can be performed for individual tree nodes by using the Find Next and Replace buttons.

*	Search and replace functionalities can be performed for all the search results by using the Find All and Replace All buttons.

## MultiColumnTreeView Search Options

The available search options are as follows:

1.	**Match Case** : Matches letter casing while performing a search.

2.	**Match Whole Node** : Matches the search text with the entire text in a tree node.

## MultiColumnTreeView Search Navigation

1.	**Search Up** : Specifies whether the search can be performed from the bottom of the control up.

2.	**Search Down** : Specifies whether the search can be performed from the top down.

3.	**Search All** : Specifies whether the search can be performed from the bottom up, and then back to the bottom.

## MultiColumnTreeView Search Range

1.	**TreeView** : Specifies whether the search can be performed in entire TreeViewAdv control.

2.	**Root Node** : Specifies whether the search can be performed only on the parent node level.

3.	**Child Node** : Specifies whether the search can be performed only on the child node level.

Find and Replace can be enabled by using the below code

{% tabs %}

{% highlight c# %}

TreeViewFindReplaceDialog dialog = new TreeViewFindReplaceDialog(this.multiColumnTreeView1);

dialog.Find("Britain", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);

dialog.FindAll("Britain", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);

dialog.Replace("Britain","United Kingdom", TreeViewSearchOption.MatchWholeText, 
TreeViewSearchRange.TreeView);

dialog.ReplaceAll("Britain", "United Kingdom", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);

{% endhighlight %}

{% highlight vb %}

    Dim dialog As TreeViewFindReplaceDialog = New TreeViewFindReplaceDialog(Me.multiColumnTreeView1)

    dialog.Find("Britain", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)

    dialog.FindAll("Britain", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)

    dialog.Replace("Britain", "United Kingdom", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)

    dialog.ReplaceAll("Britain", "United Kingdom", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)

{% endhighlight %}

{% endtabs %}

![FindAndReplace_img1](Find-and-Replace_Images/FindAndReplace_img1.jpg)

* Image after Find text and replacing with other text.

![FindAndReplace_img2](Find-and-Replace_Images/FindAndReplace_img2.jpg)


## OnNodeBeforeFind Event

This event will be triggered before the matching tree nodes are highlighted in the MultiColumnTreeView control. 

<b>Event Data</b>

TreeNodeAdvBeforeFindArgs contains the following members that provide information specific to this event:

<b>Members Table</b>

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Node</td><td>
This will return the matched TreeNodeAdv based on user input.</td></tr>
<tr>
<td>
SearchText</td><td>
This will return the search string to highlight in the        TreeNodeAdv.</td></tr>
<tr>
<td>
Cancel</td><td>
This enables users to disable highlighting matched TreeNodeAdv.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

private void MultiColumnTreeView1_OnNodeBeforeFind(object sender, TreeNodeAdvBeforeFindArgs e)

{
string SearchedText = e.SearchText;
TreeNodeAdv MatchedNode = e.Node;
}

{% endhighlight %}

{% highlight vb %}

Private Sub MultiColumnTreeView1_OnNodeBeforeFind(ByVal sender As Object, ByVal e As TreeNodeAdvBeforeFindArgs)
    Dim SearchedText As String = e.SearchText
    Dim MatchedNode As TreeNodeAdv = e.Node
End Sub

{% endhighlight %}
{% endtabs %}

## OnNodeAfterFound Event

This event will be triggered after the matching TreeNodeAdv is highlighted in the MultiColumnTreeView control. 

<b>Event Data</b>

TreeNodeAdvAfterFindArgs contains the following members that provide information specific to this event:

<b>Members Table</b>

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Node</td><td>
This will return matched TreeNodeAdv based on user input.</td></tr>
<tr>
<td>
SearchText</td><td>
This will return the search string to be highlighted in TreeNodeAdv.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

private void MultiColumnTreeView1_OnNodeAfterFound(object sender, TreeNodeAdvAfterFindArgs e)

{
string SearchedText = e.SearchText;

TreeNodeAdv MatchedNode = e.Node;
}


{% endhighlight %}

{% highlight vb %}

Private Sub MultiColumnTreeView1_OnNodeAfterFound(ByVal sender As Object, ByVal e As TreeNodeAdvAfterFindArgs)

    Dim SearchedText As String = e.SearchText

    Dim MatchedNode As TreeNodeAdv = e.Node

End Sub

{% endhighlight %}
{% endtabs %}

## OnNodeReplacing Event

This event will be triggered before replacing the matched tree node text in the MultiColumnTreeView control. 

<b>Event Data</b>

TreeNodeAdvOnReplacingArgs contains the following members that provide information specific to this event:

<b>Members Table</b>

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Node</td><td>
This will return the matched TreeNodeAdv based on user input.</td></tr>
<tr>
<td>
SearchText</td><td>
This will return the searched string to be highlighted in TreeNodeAdv.</td></tr>
<tr>
<td>
ReplaceText</td><td>
This will return the TreeNodeAdv text that is to be replaced.</td></tr>
<tr>
<td>
TreeViewSearchOption</td><td>
This will return TreeViewSearchOption to find or replace TreeNodeAdv.</td></tr>
<tr>
<td>
TreeViewSearchRange</td><td>
This will return TreeViewSearchRange level to find or replace TreeNodeAdv.</td></tr>
<tr>
<td>
Cancel</td><td>
This will enable users to disable replacing matched TreeNodeAdv text.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

private void MultiColumnTreeView1_OnNodeReplacing(object sender, TreeNodeAdvOnReplacingArgs e)
{
            string SearchedText = e.SearchText;
            TreeNodeAdv MatchedNode = e.Node;
            string ReplacedText = e.ReplaceText;
            string SearchOption = e.TreeViewSearchOption.ToString();
            string SearchRange = e.TreeViewSearchRange.ToString();
}


{% endhighlight %}

{% highlight vb %}

Private Sub MultiColumnTreeView1_OnNodeReplacing(ByVal sender As Object, ByVal e As TreeNodeAdvOnReplacingArgs)

    Dim SearchedText As String = e.SearchText
    Dim MatchedNode As TreeNodeAdv = e.Node
    Dim ReplacedText As String = e.ReplaceText
    Dim SearchOption As String = e.TreeViewSearchOption.ToString()
    Dim SearchRange As String = e.TreeViewSearchRange.ToString()

End Sub

{% endhighlight %}
{% endtabs %}

## OnNodeReplaced Event

This event will be triggered after the matched TreeNodeAdv text is replaced in the MultiColumnTreeView control. 

<b>Event Data</b>

The TreeViewOnReplacedArgs contains the following members that provide information specific to this event:

<b>Members Table</b>

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Node</td><td>
This will return the TreeNodeAdv whose text will be replaced.</td></tr>
<tr>
<td>
SearchText</td><td>
This will return the search string to highlight in TreeNodeAdv.</td></tr>
<tr>
<td>
ReplaceText</td><td>
This will return TreeNodeAdv text that has been replaced.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

private void MultiColumnTreeView1_OnNodeReplaced(object sender, TreeNodeAdvOnReplacedArgs e)
        {
            string SearchedText = e.SearchText;
            TreeNodeAdv MatchedNode = e.Node;
            string ReplacedText = e.ReplaceText;
            
        }

{% endhighlight %}

{% highlight vb %}

Private Sub MultiColumnTreeView1_OnNodeReplaced(ByVal sender As Object, ByVal e As TreeNodeAdvOnReplacedArgs)

    Dim SearchedText As String = e.SearchText
    Dim MatchedNode As TreeNodeAdv = e.Node
    Dim ReplacedText As String = e.ReplaceText

End Sub

{% endhighlight %}
{% endtabs %}

## Keyboard Search

Setting `AllowKeyboardSearch` property of the MultiColumnTreeView to true, will allow the user to search for a node by typing the name of the node using the keyboard.

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.AllowKeyboardSearch = true;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.AllowKeyboardSearch = True

{% endhighlight %}

{% endtabs %}



