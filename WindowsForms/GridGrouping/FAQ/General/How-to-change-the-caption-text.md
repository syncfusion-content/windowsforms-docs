---
layout: post
title: Change Caption Text in Windows Forms GridGroupingControl | Syncfusion®
description: Change caption text in Syncfusion® Windows Forms GridGroupingControl, its group captions, caption formatting, display values, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to change caption text in Windows Forms GridGroupingControl

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
