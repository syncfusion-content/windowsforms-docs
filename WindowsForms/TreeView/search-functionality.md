---
layout: post
title: search-functionality | WindowsForms | Syncfusion
description: search functionality
platform: WindowsForms
control: TreeView 
documentation: ug
---

# Search Functionality
Description

The find and replace feature enables users to search and replace a specific tree node present in the TreeViewAdv control. You can implement the fastest Find and Replace functionality in the TreeViewAdv control by using the TreeViewAdvFindReplaceDialog class. This class provides the methods that are necessary to perform a find and replace operation. 

The value entered in the Search Text field is highlighted in the TreeViewAdv control after the search action is performed. You can switch to each highlighted tree node by clicking the Find Next button. This functionality is available only when there is more than one search result.

Search and Replace Functionalities

Search and replace functionalities can be performed for the entire TreeViewAdv control or specific levels of tree nodes.

Search and replace functionalities can be performed for individual tree nodes by using the Find Next and Replace buttons.

Search and replace functionalities can be performed for all the search results by using the Find All and Replace All buttons.

TreeView Search Options

The available search options are as follows:

Match Case: Matches letter casing while performing a search.

Match Whole Node: Matches the search text with the entire text in a tree node.

TreeViewAdv Search Navigation

Search Up:Specifies whether the search can be performed from the bottom of the control up.

Search Down: Specifies whether the search can be performed from the top down.

Search All: Specifies whether the search can be performed from the bottom up, and then back to the bottom.

TreeViewAdv Search Range

TreeView: Specifies whether the search can be performed in entire TreeViewAdv control.

Root Node: Specifies whether the search can be performed only on the parent node level.

Child Node: Specifies whether the search can be performed only on the child node level.

The find and replace feature can be enabled for the TreeViewAdv control by using the following code:

{% tabs %}
{% highlight c# %}

TreeViewAdvFindReplaceDialog dialog = new TreeViewAdvFindReplaceDialog(this.TreeView);
dialog.Find("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);
dialog.FindAll("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);
dialog.Replace("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);
dialog.ReplaceAll ("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView);

{% endhighlight %}

{% highlight vb %}

Dim dialog As New TreeViewAdvFindReplaceDialog(Me.TreeView)
dialog.Find("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)
dialog.FindAll("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)
dialog.Replace ("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)
dialog.ReplaceAll ("India", TreeViewSearchOption.MatchWholeText, TreeViewSearchRange.TreeView)

{% endhighlight %}
{% endtabs %}

##### Events

OnNodeBeforeFind Event

This event will be triggered before the matching tree nodes are highlighted in the TreeViewAdv control. 

Event Data

TreeNodeAdvBeforeFindArgs contains the following members that provide information specific to this event:

Members Table

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

Void treeViewAdv1_OnNodeBeforeFind(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeFindArgs e)
{

// This will return the matched TreeNodeAdv.
    TreeNodeAdv matchedNode = e.Node;

// This will return the searched string.
    string matchedString = e.SearchText;

// Cancel arguments.
    bool cancelFind = e.Cancel;
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_OnNodeBeforeFind(sender As Object, e As Syncfusion.Windows.Forms.Tools. TreeNodeAdvBeforeFindArgs)

' This will return the matched TreeNodeAdv.
Dim matchedNode As TreeNodeAdv = e.Node

' This will return the searched string.
Dim matchedString As string = e.SearchText

' Cancel arguments.
Dim cancelFind As Boolean = e.Cancel

End Sub

{% endhighlight %}
{% endtabs %}

OnNodeAfterFound Event

This event will be triggered after the matching TreeNodeAdv is highlighted in the TreeViewAdv control. 

Event Data

TreeNodeAdvAfterFindArgs contains the following members that provide information specific to this event:

Members Table

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

void treeViewAdv1_OnNodeAfterFound(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvAfterFindArgs e)
{

// This will return matched TreeNodeAdv.
    TreeNodeAdv matchedNode = e.Node;

// This will return the searched string.
    string searchedString = e.SearchText;
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_OnNodeAfterFound(sender As Object, e As Syncfusion.Windows.Forms.Tools. TreeNodeAdvAfterFindArgs)

' This will return the matched TreeNodeAdv.
Dim matchedNode As TreeNodeAdv = e.Node

' This will return the searched string.
Dim searchedString As string = e.SearchText
End Sub

{% endhighlight %}
{% endtabs %}

OnNodeReplacing Event

This event will be triggered before replacing the matched tree node text in the TreeViewAdv control. 

Event Data

TreeNodeAdvOnReplacingArgs contains the following members that provide information specific to this event:

Members Table

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

void treeViewAdv1_OnNodeReplacing(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvOnReplacingArgs e)
{

// This will return the replaced TreeNodeAdv.
    TreeNodeAdv replaceNode = e.Node;

// This will return the searched string.
    string matchedString = e.SearchText;

// This will return the replaced string.
    string ReplacedString = e.ReplaceText;

// TreeViewAdv search options.
    TreeViewSearchOption searchOption = e.TreeViewSearchOption;

// This will return the TreeViewAdv search range.
    TreeViewSearchRange searchRange = e.TreeViewSearchRange;

// Cancel arguments.
    bool cancelReplace = e.Cancel;
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_OnNodeReplacing(sender As Object, e As Syncfusion.Windows.Forms.Tools. TreeNodeAdvOnReplacingArgs)

' This will return the replaced TreeNodeAdv.
Dim replaceNode As TreeNodeAdv = e.Node

' This will return the searched string.
Dim matchedString As string = e.SearchText

' This will return the replaced string.
Dim ReplacedString As string = e.ReplaceText

' TreeViewAdv search options.
Dim searchOption As TreeViewSearchOption = e.TreeViewSearchOption

' This will return the TreeViewAdv search range.
Dim searchRange As TreeViewSearchRange = e.TreeViewSearchRange

' Cancel arguments.
Dim cancelReplace As Boolean = e.Cancel
End Sub

{% endhighlight %}
{% endtabs %}

OnNodeReplaced Event

This event will be triggered after the matched TreeNodeAdv text is replaced in the TreeViewAdv control. 

Event Data

The TreeViewOnReplacedArgs contains the following members that provide information specific to this event:

Members Table

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

void treeViewAdv1_OnNodeReplaced(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvOnReplacedArgs e)
{

// This will return the replaced TreeNodeAdv.
    TreeNodeAdv replacedNode = e.Node;

// This will return the searched string.
    string matchedString = e.SearchText;

// This will return the replaced string.
    string ReplacedString = e.ReplaceText;
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_OnNodeReplaced(sender As Object, e As Syncfusion.Windows.Forms.Tools. TreeNodeAdvOnReplacedArgs)

' This will return Replaced TreeNodeAdv
Dim replacedNode As TreeNodeAdv = e.Node

' This will return Searched String
Dim matchedString As String = e.SearchText

' This will return Replaced String
Dim ReplacedString As String = e.ReplaceText
End Sub

{% endhighlight %}
{% endtabs %}

![](Concepts-and--Features_images/Concepts-and--Features_img63.png)