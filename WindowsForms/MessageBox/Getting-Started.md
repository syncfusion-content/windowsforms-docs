---
layout: post
title: Getting Started with Windows Forms MessageBox | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms MessageBox control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: MessageBox
documentation: ug
---

# Getting Started with Windows Forms MessageBox

This section explains how to configure [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) control in a Windows Forms application.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#messageboxadv) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

## Creating simple application with MessageBox

You can create the Windows Forms application with MessageBox as follows:

1. [Creating the project](#creating-the-project)
2. [Configure MessageBox](#configure-messageboxadv)

## Creating the project

Create a new Windows Forms project in the Visual Studio to display the MessageBoxAdv.

## Configure MessageBox

To add control manually in C#, follow the given steps:

**Step1:** Add the following required assembly references to the project:

   * Syncfusion.Shared.Base.dll

**Step2:** Include the namespaces **Syncfusion.Windows.Forms**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms

{% endhighlight  %}

{% endtabs %}

**Step3:** Displays the `MessageBoxAdv` by using [MessageBoxAdv.Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function.

{% tabs %}

{% highlight C# %}

// Display the MessageBox using [Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function.

MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro;

MessageBoxAdv.Show(this,"Save changes?", "File Modified", MessageBoxButtons.YesNo,MessageBoxIcon.Question);

{% endhighlight %}

{% highlight VB %}

' Display the MessageBox using [Show](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html#Syncfusion_Windows_Forms_MessageBoxAdv_Show_System_String_) function.

MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro

MessageBoxAdv.Show(this,"Save changes?", "File Modified", MessageBoxButtons.YesNo,MessageBoxIcon.Question)

{% endhighlight %}

{% endtabs %}

![MessageBox in windows forms messagebox](MessageBoxAdv_images/MessageBoxAdv_img32.png)

## Appearance of MessageBox

The appearance of the MessageBox can be customized by using the following properties of the MetroStyleColorTable.

* AbortButtonBackColor
* CancelButtonBackColor
* IgnoreButtonBackColor
* NoButtonBackColor
* OKButtonBackColor
* RetryButtonBackColor
* YesButtonBackColor
* CaptionBarColor
* CaptionForeColor
* ForeColor
* BackColor
* BorderColor

{% tabs %}

{% highlight C# %}

//MetroColor table for MessageBox
MetroStyleColorTable metroColorTable = new MetroStyleColorTable();
//Sets the NoButton backColor
metroColorTable.NoButtonBackColor = Color.Red;
//Sets the YesButton backColor
metroColorTable.YesButtonBackColor = Color.SkyBlue;
//Sets the OK button backcolor
metroColorTable.OKButtonBackColor = Color.Green;
//Applies the MetroStyleColorTable to MessageBoxAdv
MessageBoxAdv.MetroColorTable = metroColorTable;
//Sets the MessageBoxStyle as Metro
MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro;

{% endhighlight %}

{% highlight VB %}

'MetroColor table for MessageBox
Dim metroColorTable As New MetroStyleColorTable()
'Sets the NoButton backColor
metroColorTable.NoButtonBackColor = Color.Red
'Sets the YesButton backColor
metroColorTable.YesButtonBackColor = Color.SkyBlue
'Sets the OK button backcolor
metroColorTable.OKButtonBackColor = Color.Green
'Applies the MetroStyleColorTable to MessageBoxAdv
MessageBoxAdv.MetroColorTable = metroColorTable
'Sets the MessageBoxStyle as Metro
MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro

{% endhighlight %}

{% endtabs %}

![WindowsForms MessageBox Appearance](MessageBoxAdv_images/MessageBoxAdv_appearance.png) 