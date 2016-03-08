---
layout: post
title: How-to-assign-task-for-ToolStrip-item-when-it-is-c | Windows Forms | Syncfusion
description: how to assign task for toolstrip item when it is clicked?
platform: windowsforms
control: Frequently Asked Questions
documentation: ug
---

# How to assign task for ToolStrip item when it is clicked?

This can be done by handling the ItemClicked event and assigning value for ClickedItem property.

{% highlight c# %}

private void toolStripEx1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)

{

    switch (e.ClickedItem.Text as string)

    {

        case "toolStripLabel1":

            e.ClickedItem.ForeColor = Color.Red;

            break;



        case "toolStripSplitButton1":



            e.ClickedItem.DisplayStyle = ToolStripItemDisplayStyle.ImageAndText;

            break;

    }

} 

{% endhighlight  %}

{% highlight vbnet %}

Private Sub toolStripEx1_ItemClicked(ByVal sender As Object, ByVal e As ToolStripItemClickedEventArgs)

    Select Case CType(ConversionHelpers.AsWorkaround(e.ClickedItem.Text, GetType(String)), String)



        Case "toolStripLabel1"

            e.ClickedItem.ForeColor = Color.Red

            ' break 

        Case "toolStripSplitButton1"

            e.ClickedItem.DisplayStyle = ToolStripItemDisplayStyle.ImageAndText

            ' break 

    End Select

End Sub

{% endhighlight  %}

