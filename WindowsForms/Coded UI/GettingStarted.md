---
layout: post
title: Coded UI | WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: General/Testing
documentation: ug
---

# Coded UI

## Getting Started

This section demonstrates how to create a simple test with TreeViewAdv and CodedUI.

The Essential Tools TreeViewAdv control has basic level of Coded UI automation testing support. The Coded UI functionality can be tested from VS2010 or above with Ultimate or Premium version. TreeViewAdv supports Coded UI from Syncfusion Essential Studio version v9.1.0.20. Refer to the following steps to provide Coded UIsupport in the TreeViewAdv.



__**Create**__ __**a**__ __**Coded**__ __**UI**__ __**test**__ __**project**__**:**

**CUIT** should contain the coded UI test project. When your application does not contain the **CUIT** project, create a new project. In the Solutions Explorer, on the shortcut menu of the solution, choose Add, New Project, and then select either Visual Basic or Visual C#. Next, choose Test, Coded UI Test.

In case, the **Coded** **UI** test project does not appear on Visual Studio, you may be using a version that does not support **CUIT**. To create **CUIT**, you need to use Visual Studio Enterprise edition.



![](GettingStarted_Images/CreatingTestApplication.jpeg)

__**Adding**__ __**Coded**__ __**UI**__ __**test**__ __**file**__**:**

The CUIT file is generated automatically, when creating the Coded UI test project. To add another test file, choose shortcut menu of the CUIT project, point to add, and then choose Coded UI test.


![](GettingStarted_Images/AddingCodedUI.jpeg)

1. In the **Generate** **Code** **for** **Coded** **UI** **Test** dialog box, choose the **Record** **actions** as shown in the following image.





![](GettingStarted_Images/RecordingOption.jpeg)

2. After choosing the option, Coded UI Test Builder **(**UIMap**)** is shown at the BottomRight of the window.
3. Choose the **Start** **recording** option from the **UI** **Map** to record the testing. You can also pause the recording while testing the application.





![](GettingStarted_Images/RecordingFromUIMap.jpeg)





![](GettingStarted_Images/PauseRecordingFromUIMap.jpeg)

4. The recorded steps can be viewed by using the **UIMap** or by pressing Alt + S key.
5. To delete actions that you had recorded by mistake, choose Edit Actions.
6. To generate code that replicates your action, choose the Generate Code icon, type a name, and description for your **CUIT** method.





![](GettingStarted_Images/RecordedSteps.jpeg)

7. After completion of the testing process, choose the Generate code option from the UI Map to generate the code in the test project. The generated code replicates your actions.





![](GettingStarted_Images/GenerateCodedUIMap.jpeg)

8. Choose the required method and description for code generation.





![](GettingStarted_Images/GenerateCodeWindowForUIMap.jpeg)
****

__**Testing**__ __**application**__ __**with**__ __**the**__ __**Generated**__ __**Coded**__ __**UI**__ __**Tests**__**:**

You can test the application with the generated **CUIT** method.

1) Add a **TestMethod** called **CodedUITestMethod1**.



The following code example demonstrates the same.

**C#**

<table>
<tr>
<td>
1<br/><br/>2<br/><br/>3<br/><br/>4<br/><br/>5<br/><br/>6<br/><br/></td><td>
[TestMethod]<br/><br/>public void CodedUITestMethod1()<br/><br/>{<br/><br/>// Generates code for this test. Select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.<br/><br/>this.UIMap.RecordedMethod1();<br/><br/>}<br/><br/></td></tr>
</table>
**VB**

<table>
<tr>
<td>
1<br/><br/>2<br/><br/>3<br/><br/>4<br/><br/>5<br/><br/></td><td>
<TestMethod> _<br/><br/>Public Sub CodedUITestMethod1()<br/><br/>Generates code for this test. Select "Generate Code for Coded UI Test" from the shortcut menu and select one of the menu items.<br/><br/>Me.UIMap.RecordedMethod1()<br/><br/>End Sub<br/><br/></td></tr>
</table>
____

2) Build and run the application that has already been configured. You can also open the **CUIT** builder with the following steps.

3) Right click the body of the **CodedUITestMethod** and then select **Generate** **Code** **for** **Coded** **UI** **Test** -> Use **CUIT** builder as shown in the following screenshot:





![](GettingStarted_Images/OpeningCodedUITestBuilder.jpeg)


![](GettingStarted_Images/CodedUIMap.jpeg)




![](GettingStarted_Images/AssetWindowForTreeViewAdv.jpeg)
### Supported of Controls

The following controls are featured with CodedUI Testing support

<table>
<tr>
<td>
**Supported controls**<br/><br/></td><td>
**Level**<br/><br/></td></tr>
<tr>
<td>
GridGroupingControl<br/><br/></td><td>
3 Level<br/><br/></td></tr>
<tr>
<td>
DataBoundGrid<br/><br/></td><td>
3 Level<br/><br/></td></tr>
<tr>
<td>
TreeViewAdv<br/><br/></td><td>
2 Level<br/><br/></td></tr>
</table>
 

