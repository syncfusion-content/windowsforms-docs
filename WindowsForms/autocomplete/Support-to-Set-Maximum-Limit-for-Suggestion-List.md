---
layout: post
title: Support to Set Maximum Limit for Suggestion List  | WindowsForms | Syncfusion
description: Support to Set Maximum Limit for Suggestion List 
platform: WindowsForms
control: AutoComplete
documentation: ug
---



# Support to Set Maximum Limit for Suggestion List 

The AutoComplete control displays a filtered suggestion list from a mapped data source in a drop-down as you type the text into the text box. This feature provides support to set the maximum number for the filtered suggestion. 

## Use Case Scenarios

When you want to narrow down the filtering and get more accurate data, you can use this feature. 

## Properties

Property Table

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
MaxNumber of Suggestion</td><td>
Set the maximum limit for the suggestion list. </td><td>
NA</td><td>
Integer. </td><td>
NA </td></tr>
</table>

## Sample Link

To view a sample:

1. Open Syncfusion Dashboard.
2. Click Windows Forms.
3. Click Run Samples.
4. Navigate to Tools Samples > Editors Package > AutoCompleteDemo. 

## Maximum Number of Suggestion 

You can set the maximum number of suggestions to be displayed in the AutoComplete using the MaxNumberofSuggestion property: The following code illustrates this: 

{% highlight C# %}



this.autoComplete1.MaxNumberofSuggestion = 5; 
{% endhighlight %}



{% highlight vbnet %}


Me.autoComplete1.MaxNumberofSuggestion = 5

{% endhighlight %}