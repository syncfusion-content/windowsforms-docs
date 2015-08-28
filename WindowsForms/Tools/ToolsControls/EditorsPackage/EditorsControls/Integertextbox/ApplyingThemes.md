---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---

# Applying Themes

Themes can be applied to the IntegerTextBox control using the property given below.

_Table_ _279__: Property Table_

<table>
<tr>
<th>
IntegerTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether or not to use XP themes, when BorderStyle property is set to 'Fixed3D'.</td></tr>
</table>


 _Note: Refer_ [Border Settings](http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/BorderSettings13.html) _topic to know about the BorderStyle property._


{%highlight c#%}



this.integerTextBox1.ThemesEnabled = true;

{%endhighlight%}


{%highlight vbnet%}


Me.integerTextBox1.ThemesEnabled = true

{%endhighlight%}



![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/Editor_IntegerTB_Features14.png](Overview_images/Overview_img460.png) 


A sample which demonstrates the ThemesEnabled property of the IntegerTextBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
