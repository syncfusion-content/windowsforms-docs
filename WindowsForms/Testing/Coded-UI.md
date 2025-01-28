---
layout: post
title: Coded UI Testing | Windows Forms | Syncfusion®
description: This section explains the basic steps to test the controls using CodedUI for Syncfusion® Essential Studio® windows forms
platform: windowsforms
control: Coded UI
documentation: ug
---


# Coded UI Testing in Windows Forms Controls

This section demonstrates how to create a simple test with TreeViewAdv. The Coded UI functionality can be tested from VS2010 or above with Ultimate or Premium version. TreeViewAdv supports Coded UI from Syncfusion<sup>®</sup> Essential Studio<sup>®</sup> version v9.1.0.20.


## Creating Coded UI Project

CUIT should contain the Coded UI test project. When the Application does not contain the CUIT project, create a new project.

![Creating the coded ui project](CodedUI_images/CreatingTestApplication.png)

N> The CUIT file is generated automatically, when creating the Coded UI test project. To add another test file, choose shortcut menu of the CUIT project, point to add, and then choose Coded UI test

![Adding coded ui test case in coded ui project](CodedUI_images/AddingCodedUI.png)

## Recording Steps

While generating code for Coded UI Test dialog box, choose the Record actions as shown in the following image.

![Generate code for coded ui test](CodedUI_images/RecordingOption.png)

1. After choosing the option, Coded UI Test Builder UIMap is shown at the BottomRight of the window.

2. Choose the Start recording option from the UI Map to record the testing and it is also possible to pause the recording while testing the application.

![Recording the actions using coded ui test builder](CodedUI_images/RecordingFromUIMap.png)

![Pausing the actions using coded ui test builder](CodedUI_images/PauseRecordingFromUIMap.png)

3. The recorded steps can be viewed by using the UIMap or by pressing “Alt + S” key.

4. To delete actions that was recorded by mistake, choose “Edit” Actions.

5. To generate code that replicates performed actions, choose the Generate Code icon and type a name and description for CUIT method.

![Recorded steps in coded ui test builder](CodedUI_images/RecordedSteps.png)

6. After completion of the testing process, choose the Generate code option from the UI Map to generate the code in the test project. The generated code replicates performed actions.

![Generate code for recorded coded ui test](CodedUI_images/GenerateCodedUIMap.png)

7. Choose the required method and description for code generation.

![Adding method description and name for record coded ui test](CodedUI_images/GenerateCodeWindowForUIMap.png)

## Testing Recorded Steps

The Application can be tested with the generated CUIT Method. 

1. Add a TestMethod named `CodedUITestMethod1`.

{% capture codesnippet1 %}
{% tabs %}

{% highlight c# %}

public void CodedUITestMethod1()
{
    // Generates code for this test. Select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.
    this.UIMap.RecordedMethod1();
}

{% endhighlight %}

{% highlight vb %}

Public Sub CodedUITestMethod1()
	' Generates code for this test. Select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.
	Me.UIMap.RecordedMethod1()
End Sub

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}


2. **Build** and **Run** the application that has already been configured. 

3. Right click the body of the CodedUITestMethod and then select Generate Code for Coded UI Test -> Use CUIT builder as shown in the following screenshots.

![Run the record coded ui test](CodedUI_images/OpeningCodedUITestBuilder.png)

![UIMap coded ui test builder windows](CodedUI_images/CodedUIMap.png)

4. Now CUIT performs Recorded testing process.

![Asset window for treeviewadv](CodedUI_images/AssetWindowForTreeViewAdv.png)


## Supported Controls

The following controls are featured with Coded UI Testing support.

<table>
<tr>
<th>
Supported controls</th><th>
Levels</th></tr>
<tr>
<td>
GridControl</td><td>
4 Levels</td></tr>
<tr>
<td>
GridGroupingControl</td><td>
4 Levels</td></tr>
<tr>
<td>
GridDataBoundGrid</td><td>
4 Levels</td></tr>
<tr>
<td>
TreeViewAdv</td><td>
2 Levels</td></tr>
<tr>
<td>
RibbonControlAdv</td><td>
2 Levels</td></tr>
<tr>
<td>
Carousel</td><td>
2 Levels</td></tr>
<tr>
<td>
RadialMenu</td><td>
2 Levels</td></tr>
<tr>
<td>
TabControlAdv</td><td>
2 Levels</td></tr>
<tr>
<td>
TabSplitterContainer</td><td>
2 Levels</td></tr>
</table>


