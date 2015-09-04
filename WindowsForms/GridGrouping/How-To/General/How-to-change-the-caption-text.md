---
layout: post
title: How-to-change-the-caption-text
description: how to change the caption text
platform: windowsforms
control: How To
documentation: ug
---

# How to change the caption text

This can be done using the code below.


{% highlight C# %}




// Sets the caption text.

// {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

//{CategoryName} - Displays the CaptionSection.ParentGroup.Name

//{Category} - Displays the CaptionSection.ParentGroup.Category

//{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()

this.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Tablename is {TableName} : {Category} : {RecordCount}";

{% endhighlight %}



{% highlight vbnet %}


'Sets the caption text.

' {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

'{CategoryName} - Displays the CaptionSection.ParentGroup.Name

'{Category} - Displays the CaptionSection.ParentGroup.Category

'{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()

Me.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Tablename is {TableName} : {Category} : {RecordCount}"

{% endhighlight %}

