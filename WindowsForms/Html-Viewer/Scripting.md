---
layout: post
title: Scripting in Windows Forms Html Viewer control | Syncfusion®
description: Learn about Scripting support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTML UI
documentation: ug
---

#  Scripting in Windows Forms Html Viewer control

Essential<sup>®</sup> HTMLUI has extensive support to Scripts. Scripting involves creating self-contained documents. The concept behind this is to make the interface easier just by loading different HTML documents that contain the logic in themselves.

{% tabs %}

{% highlight HTML %}



<html>

<body bgColor="#edf0f7">

<p>

<input type="text" id="txt"></input>

</p>

<script language="C#">

using System;

using System.IO;

using System.Xml;

using System.Windows.Forms;

using System.Drawing;

using System.Collections;

using Syncfusion.Windows.Forms.HTMLUI;



namespace Syncfusion

{

public class Script

{

INPUTElementImpl script;

Hashtable tab = new Hashtable();



/* Initializes script.*/

public static Script OnScriptStart()

{

return new Script();

}



public Script()

{

tab = Global.Document.GetElementsByUserIdHash();

script = tab["txt"] as INPUTElementImpl;



// User control property sets the user control instance for the particular input element declared by the user

script.UserControl.CustomControl.Text = "This is a sample for scripting";

}

}

}

</script><br/>

</body>

</html>

{% endhighlight %}

{% endtabs %}

## HTMLUIScripting sample

This sample illustrates the support of self-contained HTML documents in HTMLUI.

![Scripting_img1](Scripting_images/Scripting_img1.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



