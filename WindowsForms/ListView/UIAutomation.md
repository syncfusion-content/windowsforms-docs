---
layout: post
title: UI Automation with SfListView for Syncfusion Essential WindowsForms
description: Learn here all about UI Automation feature of Syncfusion Windows Forms ListView (SfListView) control and more.
platform: WindowsForms
control: SfListView
documentation: ug
---

# UI Automation in Windows Forms ListView (SfListView)

Microsoft UI automation is a new accessibility Framework for Microsoft Windows available on all the operating systems that support Windows Forms. UI automation provides accessibility to most of the UI elements and provides information about the UI element to the end user. You can interact with UI by using automated test scripts. To learn more about UI Automation, refer to the [MSDN page](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-overview).

SfListView supports the following types of UI automations:

1. Coded UI test
2. Quick Test Professional

## Coded UI test

Automated tests that drive your application through its user interface (UI) are known as Coded UI Tests (CUITs). These tests include functional testing of the UI controls. SfListView supports CUITs Coded UI automation to create automated tests for the inner elements and records the sequence of actions. When dragging the crosshair shown in CodedUITestBuilder on UI elements, it shows the properties of the respective UI elements. The assertion can also be added for each properties of SfListView.

SfListView supports the following two levels of CUIT automations.

<table>
<tr>
<td>
{{ '**Levels**' | markdownify }}</td>
<td>
{{ '**Description**' | markdownify }}</td></tr>
<tr>
<td>
{{'**Level 1**' | markdownify }}</td>
<td>
Record and playback: Recorder identifies the elements involved in an action. Playback is processed based on the generated code via Microsoft Active Accessibility.
</td>
</tr>
<tr>
<td>
{{ '**Level 2**' | markdownify }}</td>
<td>
Property validation: A set of default properties are defined based on the MSAA control type for each control where users can add assertions.
</td>
</tr>
</table>

### Requirements and configuration

Coded UI provides support only in Visual Studio Ultimate and Premium. For more information about the platforms and configurations supported by Coded UI tests, refer to this [page](https://learn.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2015/test/supported-configurations-and-platforms-for-coded-ui-tests-and-action-recordings?view=vs-2015).

### Enable assertion

The Coded UI support for SfListView can be enabled using the `AccessibilityEnabled` property.

{% tabs %}
{% highlight c# %}
//To enable the accessibility.
 this.SfListView1.AccessibilityEnabled = true;
{% endhighlight %}
{% highlight vb %}
'To enable the accessibility.
Me.SfListView1.AccessibilityEnabled = true
{% endhighlight %}
{% endtabs %}

### Getting started

Follow the steps to create a `CodedUITest project` and test the `SfListView` application:

1. Create a new application or open an existing application with `SfListView`.
2. Create a Coded UI Test Project. A CUIT file will be added automatically.

    ![Create Coded UI Project](CodedUI-Automation-Images/CodedUI_Create.jpg)

3. Then, the Generate Code dialog box appears, choose `Record actions, edit UI map or add assertions`.

    ![choose Record actions](CodedUI-Automation-Images/CodedUI_GenerateCode.jpg)

4. Now, the Coded UI project Visual Studio gets minimized and `CodedUITestBuilder` appears in the bottom right corner of the window. Record the actions by clicking Start Recording icon in `CodedUITestBuilder`.

    ![CodedUITestBuilder in bottom right corner](CodedUI-Automation-Images/UITestBuilder.jpg)

5. You can also open the `CodedUITestBuilder` from the existing Coded UI project by right clicking the `CodedUITestMethod1` in CUIT file and clicking the Generate Code for Coded UI Test. The same `CodedUITestBuilder` appears in the bottom right corner of the window.

    ![open the CodedUITestBuilder from existing project](CodedUI-Automation-Images/CodedUI_GenerateMethod.jpg)

6. Drag the Crosshairs on to the UI elements in the `SfListView` application. It shows the available properties of the inner UI elements. 

    ![Available UI elements](CodedUI-Automation-Images/Assert-SfListViewItem.jpg)

7. Record the actions made on the UI elements by clicking the `Record` button on `CodedUITest builder`.

8. Then, click the `GenerateCode` icon in `CodedUITestBuilder` to generate a test method. Close the `CodedUITestBuilder` and see the generated code for the collapse and expand actions.

    [Click GenerateCode](CodedUI-Automation-Images/SfListView-RecordActions.jpg)

9. Create an assertion to check the modified cell value. Drag the crosshair to the modified cell, the `Assertion` window appears. The properties for the control is now listed in the Assertion dialog box. Add the assertion by clicking the Generate Code button in `CodedUITestBuilder`.

    ![Properties listed in Assertion dialog box](CodedUI-Automation-Images/SfListView-properties.jpg)

10. After creating all the tests and assertions, right click the Test method. Click `Run Tests` to run the test.

    ![Click Run Tests](CodedUI-Automation-Images/Run test cases.jpg)

## QTP

Refer to the [UFT/QTP](/windowsforms/testing/uft/supported-controls-and-methods#sflistview) testing to test the UI with SfListView.