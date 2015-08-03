---
layout: post
title: Scripting
description:  scripting
platform: WindowsForms
control: HTML UI
documentation: ug
---

#  Scripting

Essential HTMLUI has extensive support to Scripts. Scripting involves creating self-contained documents. The concept behind this is to make the interface easier just by loading different HTML documents that contain the logic in themselves.



{% highlight html %}



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

INPUTElementImpl scripttext;

Hashtable htmlelements = new Hashtable();



/* Initializes script.*/

public static Script OnScriptStart()

{

return new Script();

}



public Script()

{

htmlelements = Global.Document.GetElementsByUserIdHash();

scripttext = htmlelements["txt"] as INPUTElementImpl;



// User control property sets the user control instance for the particular input element declared by the user

scripttext.UserControl.CustomControl.Text = "This is a sample for scripting";

}

}

}

</script><br/>

</body>

</html>

{% endhighlight %}

## HTMLUIScripting Sample

This sample illustrates the support of self-contained HTML documents in HTMLUI.

![](Scripting_images/Scripting_img1.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



