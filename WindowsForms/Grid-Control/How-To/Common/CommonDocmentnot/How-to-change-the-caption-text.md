---
layout: post
title: How to change the caption text | Windows Forms | Syncfusion
description: How to change the caption text
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to change the caption text

This can be done using the code below.

 
{% highlight c# %}

// Sets the caption text.
// {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name
//{CategoryName} - Displays the CaptionSection.ParentGroup.Name
//{Category} - Displays the CaptionSection.ParentGroup.Category
//{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()
this.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Table name is {TableName} : {Category} : {RecordCount}";

{% endhighlight  %}

{% highlight vb %}

'Sets the caption text.
' {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name
'{CategoryName} - Displays the CaptionSection.ParentGroup.Name
'{Category} - Displays the CaptionSection.ParentGroup.Category
'{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()
Me.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Table name is {TableName} : {Category} : {RecordCount}"
{% endhighlight  %}