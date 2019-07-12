---
layout: post
title: TabPrimitives | TabbedForm | WindowsForms | Syncfusion
description: This section explains about the navigation controls in SfTabbedForm.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Tab Navigation

TabPrimitives is a collection of NavigationControls used to navigate through the [TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~TabPages.html) of `SfTabbedForm`. The tabprimitives can be added to the sftabbedform using the `TabPrimitiveMode` property.
The various tab primitives used to perform navigation through tabs are,
<table>
<tr>
<td>
{{'**TabPrimitives**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
{{'FirstTab'| markdownify }}        
</td>
<td>
Navigate to the first tab.
</td>
</tr>
<tr>
<td>
{{'LastTab'| markdownify }}
</td>
<td>
Navigate to the last tab.
</td>
</tr>
<tr>
<td>
{{'PreviousTab'| markdownify }}
</td>
<td>
Navigate to the Previous tab.
</td>
</tr>
<tr>
<td>
{{'NextTab'| markdownify }}        
</td>
<td>
Navigate to the Next tab.
</td>
</tr>
<tr>
<td>
{{'PreviousPage'| markdownify }}
</td>
<td>
Navigate to the previous page.
</td>
</tr>
<tr>
<td>
{{'NextPage'| markdownify }}
</td>
<td>
Navigate to the next page.
</td>
</tr>
<tr>
<td>
{{'DropDown'| markdownify }}
</td>
<td>
This pops-up a list of the available tab pages in the control from which the user can select the page to be traversed.
</td>
</tr>
</table>

## Adding tabprimitives to sftabbedform

The tabprimitives can be added to the sftabbedform using the `tabbedFormControl.TabPrimitiveMode` property.

{% tabs %}
{% highlight c# %}
tabbedFormControl.TabPrimitiveMode = TabPrimitiveMode.DropDown | TabPrimitiveMode.FirstTab | TabPrimitiveMode.LastTab | TabPrimitiveMode.NextTab | TabPrimitiveMode.PreviousTab;
{% endhighlight %}
{% highlight vb %}
tabbedFormControl.TabPrimitiveMode = TabPrimitiveMode.DropDown Or TabPrimitiveMode.FirstTab Or TabPrimitiveMode.LastTab Or TabPrimitiveMode.NextTab Or TabPrimitiveMode.PreviousTab
{% endhighlight %}
{% endtabs %}  

![tabbed form](TabPrimitives_images/TabPrimitives_images_img1.gif)