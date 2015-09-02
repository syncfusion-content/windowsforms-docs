---
layout: post
title: MessageBoxAdv
description: messageboxadv
platform: WindowsForms
control: RibbonControlAdv
documentation: ug
---

# MessageBoxAdv

## Overview

Syncfusion MessageBoxAdv supports an application-defined message and title, plus any combination of predefined icons and buttons.

## Style

MessageBoxAdv supports styles such as Default and Metro.

### Default

Office2007 Style Message Box is available in Tools Windows. You can replace the .NET MessageBox with new MessageBoxAdv that supports standard color schemes and custom color schemes in Office 2007 style, for consistent look and feel. Custom Icons support is also included in MessageBoxAdv. To display the Message Box, call MessageBoxAdv.Show method.

{% highlight c# %}

MessageBoxAdv.Office2007Theme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Red);

MessageBoxAdv.Show(" Office 2007 Style with Black Color Scheme  ", "MessageBox Adv", MessageBoxButtons.OK);

{% endhighlight %}

{% highlight vbnet %}

MessageBoxAdv.Office2007Theme = Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.Red)

MessageBoxAdv.Show(" Office 2007 Style with Black Color Scheme  ", "MessageBox Adv", MessageBoxButtons.OK)

{% endhighlight %}

![](MessageBoxAdv_images/MessageBoxAdv_img1.jpeg)

### Metro

In MessageBoxAdv, MetroColorTable is implemented for color customization of buttons and caption of metro form. 


#### MetroStyleColorTable

The MetroStyleColortable helps to customize the buttons, captions and text color in MessageBoxAdv. MessageBoxAdv can be customized by using the following properties.

_Table_ _803_: _Property Table_

<table>
<tr>
<th>
MetroStyleColorTable Property</th><th>
Description</th></tr>
<tr>
<td>
ForeColor</td><td>
Gets or sets the forecolor of MessageBoxAdv.</td></tr>
<tr>
<td>
BackColor</td><td>
Gets or sets the backcolor of MessageBoxAdv.</td></tr>
<tr>
<td>
BorderColor</td><td>
Gets or sets the bordercolor of MessageBoxAdv.</td></tr>
<tr>
<td>
CancelButtonBackColor</td><td>
Gets or sets the CancelButtonBackColor of MessageBoxAdv.</td></tr>
<tr>
<td>
CaptionBarColor</td><td>
Gets or sets the captionbarcolor of MessageBoxAdv.</td></tr>
<tr>
<td>
CaptionForeColor</td><td>
Gets or sets the captionforecolor of MessageBoxAdv.</td></tr>
<tr>
<td>
CloseButtonColor</td><td>
Gets or sets the CloseButton back color of MessageBoxAdv.</td></tr>
<tr>
<td>
CloseButtonHoverColor</td><td>
Gets or sets the CloseButton hover color of MessageBoxAdv.</td></tr>
<tr>
<td>
AbortButtonBackColor</td><td>
Gets or sets the AbortButtonBackColor of MessageBoxAdv.</td></tr>
<tr>
<td>
IgnoreButtonBackColor</td><td>
Gets or sets the IgnoreButtonBackColor of MessageBoxAdv.</td></tr>
<tr>
<td>
NoButtonBackColor</td><td>
Gets or sets the NoButtonBackColor of MessageBoxAdv.</td></tr>
<tr>
<td>
OKButtonBackColor</td><td>
Gets or sets the OKButtonBackColor of MessageBoxAdv.</td></tr>
<tr>
<td>
RetryButtonBackColor</td><td>
Gets or sets the RetryButtonBackColor of MessageBoxAdv.</td></tr>
<tr>
<td>
YesButtonBackColor</td><td>
Gets or sets the YesButtonBackColor of MessageBoxAdv.</td></tr>
</table>


You can achieve this by using the following code example.

{% highlight c# %}

 MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro;

 MessageBoxAdv.MetroColorTable.NoButtonBackColor = Color.FromArgb(22, 165, 220);

 MessageBoxAdv.MetroColorTable.YesButtonBackColor = Color.FromArgb(22, 165, 220);

 MessageBoxAdv.MetroColorTable.CancelButtonBackColor = Color.FromArgb(22, 165, 220);

 MessageBoxAdv.MetroColorTable.BackColor = Color.White;

 MessageBoxAdv.MetroColorTable.BorderColor = Color.FromArgb(22, 165, 220);

 MessageBoxAdv.MetroColorTable.CaptionBarColor = Color.FromArgb(22, 165, 220);

 MessageBoxAdv.MetroColorTable.CaptionForeColor = Color.Black;

 MessageBoxAdv.MetroColorTable.ForeColor = Color.Black;

{% endhighlight %}

{% highlight vbnet %}

MessageBoxAdv.MessageBoxStyle = MessageBoxAdv.Style.Metro

 MessageBoxAdv.MetroColorTable.NoButtonBackColor = Color.FromArgb(22, 165, 220)

 MessageBoxAdv.MetroColorTable.YesButtonBackColor = Color.FromArgb(22, 165, 220

 MessageBoxAdv.MetroColorTable.CancelButtonBackColor = Color.FromArgb(22, 165, 220)

 MessageBoxAdv.MetroColorTable.BackColor = Color.White

 MessageBoxAdv.MetroColorTable.BorderColor = Color.FromArgb(22, 165, 220)

 MessageBoxAdv.MetroColorTable.CaptionBarColor = Color.FromArgb(22, 165, 220)

 MessageBoxAdv.MetroColorTable.CaptionForeColor = Color.Black

 MessageBoxAdv.MetroColorTable.ForeColor = Color.Black 

 MessageBoxAdv.MetroColorTable.OKButtonBackColor = Color.Red

{% endhighlight %}

![](MessageBoxAdv_images/MessageBoxAdv_img2.png) 