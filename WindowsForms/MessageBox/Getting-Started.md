---
layout: post
title: Getting Started with WinForms MessageBox control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms MessageBox (MessageBoxAdv) control, its elements, and more.
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Getting Started with Windows Forms MessageBox (MessageBoxAdv)

This section explains how to configure [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) control in a Windows Forms application.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#messageboxadv) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

## Creating simple application with MessageBoxAdv

You can create the Windows Forms application with MessageBoxAdv as follows:

1. [Creating the project](#creating-the-project)
2. [Configure MessageBoxAdv](#configure-messageboxadv)

## Creating the project

Create a new Windows Forms project in the Visual Studio to display the MessageBoxAdv.


## Configure MessageBoxAdv

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

![MessageBoxAdv in windows forms messagebox](MessageBoxAdv_images/MessageBoxAdv_img32.png)

## Appearance of MessageBoxAdv

The appearance of the MessageBoxAdv can be customized by using the following properties of the MetroStyleColorTable.

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

//MetroColor table for MessageBoxAdv
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

'MetroColor table for MessageBoxAdv
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

![WindowsForms MessageBoxAdv Appearance](MessageBoxAdv_images/MessageBoxAdv_appearance.png) 