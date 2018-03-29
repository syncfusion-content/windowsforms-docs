---
layout: post
title: How-to-change-the-caption-text | Windows Forms | Syncfusion
description: how to change the caption text
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Change the Caption Text

This can be done using the code below.

{% tabs %}
{% highlight C# %}

// Sets the caption text.

// {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

//{CategoryName} - Displays the CaptionSection.ParentGroup.Name

//{Category} - Displays the CaptionSection.ParentGroup.Category

//{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()
this.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "TableName is {TableName} : {Category} : {RecordCount}";

{% endhighlight %}

{% highlight vb %}

'Sets the caption text.

' {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

'{CategoryName} - Displays the CaptionSection.ParentGroup.Name

'{Category} - Displays the CaptionSection.ParentGroup.Category

'{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()
Me.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "TableName is {TableName} : {Category} : {RecordCount}"

{% endhighlight %}
{% endtabs %}
