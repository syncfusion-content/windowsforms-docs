---
layout: post
title: Getting Started with Windows Forms MessageBoxAdv | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms MessageBoxAdv control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Getting Started with Windows Forms MessageBoxAdv

This section explains how to use [MessageBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MessageBoxAdv.html) in a Windows Forms application. `MessageBoxAdv` is a static helper class that displays a styled message box from your code; it does not appear as a draggable item in the Visual Studio **Toolbox**.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#messageboxadv) section to get the list of assemblies or NuGet packages that need to be added as references to use the control in any application.

Please find more details regarding how to install the NuGet packages in a Windows Forms application in the below link:
 
[How to install NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

To install via the NuGet Package Manager Console, run:

```
Install-Package Syncfusion.Shared.Base
```

## Adding MessageBoxAdv via designer

`MessageBoxAdv` is a static helper class and is not present in the Visual Studio **Toolbox**. The designer is used only to add a trigger control (for example, a **Button**) and generate its `Click` event handler; the `MessageBoxAdv.Show` call must still be written in code.

The following dependent assembly is required to invoke `MessageBoxAdv`:

   * Syncfusion.Shared.Base

1. Create a new Windows Forms project in Visual Studio.

2. Open the **Toolbox** in Visual Studio and drag a **Button** control (for example, named `btnShow`) onto the form.

3. Double-click the button to generate its `Click` event handler, then add the following code inside the handler to display the `MessageBoxAdv`.

{% tabs %}
{% highlight C# %}

private void btnShow_Click(object sender, EventArgs e)
{
    // Display the MessageBox using MessageBoxAdv.Show.
    MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro;
    MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
}

{% endhighlight %}
{% highlight VB %}

Private Sub btnShow_Click(sender As Object, e As EventArgs)
    ' Display the MessageBox using MessageBoxAdv.Show.
    MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro
    MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
End Sub

{% endhighlight %}
{% endtabs %}

## Adding MessageBoxAdv via code

To add the control manually, follow these steps:

1. Add the required assembly reference to the project:

    * Syncfusion.Shared.Base

2. Include the required namespaces (`Syncfusion.Windows.Forms`), then call `MessageBoxAdv.Show` from inside the `Form` constructor as shown below.

{% tabs %}
{% highlight C# %}

using System.Windows.Forms;
using Syncfusion.Windows.Forms;

namespace MessageBoxAdvDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            // Display the MessageBox using MessageBoxAdv.Show.
            MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro;
            MessageBoxAdv.Show(this, "Save changes?", "File Modified", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        }
    }
}

{% endhighlight %}
{% highlight VB %}

Imports System.Windows.Forms
Imports Syncfusion.Windows.Forms

Public Class Form1
    Inherits Form

    Public Sub New()
        InitializeComponent()
        ' Display the MessageBox using MessageBoxAdv.Show.
        MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro
        MessageBoxAdv.Show(Me, "Save changes?", "File Modified", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
    End Sub
End Class

{% endhighlight %}
{% endtabs %}

Display the MessageBox using `MessageBoxAdv.Show`:

![MessageBoxAdv in windows forms messagebox](MessageBoxAdv_images/MessageBoxAdv_img32.png)

## Appearance of MessageBoxAdv

The appearance of `MessageBoxAdv` can be customized by using the following properties of the `MetroStyleColorTable`. Set `MessageBoxAdv.MessageBoxStyle` to a Metro-compatible style (for example, `Style.Metro`) for the color table to take effect.

### Button colors

* AbortButtonBackColor
* CancelButtonBackColor
* IgnoreButtonBackColor
* NoButtonBackColor
* OKButtonBackColor
* RetryButtonBackColor
* YesButtonBackColor

### Caption and background

* CaptionBarColor
* CaptionForeColor
* ForeColor
* BackColor
* BorderColor

{% tabs %}
{% highlight C# %}

using System.Drawing;
using Syncfusion.Windows.Forms;

// MetroStyleColorTable for MessageBoxAdv
MetroStyleColorTable metroColorTable = new MetroStyleColorTable();
// Sets the NoButton BackColor
metroColorTable.NoButtonBackColor = Color.Red;
// Sets the YesButton BackColor
metroColorTable.YesButtonBackColor = Color.SkyBlue;
// Sets the OK Button BackColor
metroColorTable.OKButtonBackColor = Color.Green;
// Applies the MetroStyleColorTable to MessageBoxAdv
MessageBoxAdv.MetroColorTable = metroColorTable;
// Sets the MessageBoxStyle as Metro
MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro;

{% endhighlight %}

{% highlight VB %}

Imports System.Drawing
Imports Syncfusion.Windows.Forms

' MetroStyleColorTable for MessageBoxAdv
Dim metroColorTable As New MetroStyleColorTable()
' Sets the NoButton BackColor
metroColorTable.NoButtonBackColor = Color.Red
' Sets the YesButton BackColor
metroColorTable.YesButtonBackColor = Color.SkyBlue
' Sets the OK Button BackColor
metroColorTable.OKButtonBackColor = Color.Green
' Applies the MetroStyleColorTable to MessageBoxAdv
MessageBoxAdv.MetroColorTable = metroColorTable
' Sets the MessageBoxStyle as Metro
MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro

{% endhighlight %}
{% endtabs %}

![WindowsForms MessageBoxAdv Appearance](MessageBoxAdv_images/MessageBoxAdv_appearance.png) 