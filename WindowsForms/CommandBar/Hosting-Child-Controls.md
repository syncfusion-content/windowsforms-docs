---
layout: post
title: Hosting-Child-Controls | WindowsForms | Syncfusion
description: hosting child controls
platform: WindowsForms
control: CommandBars
documentation: ug
---

# Hosting Child Controls

Child controls can be easily hosted by the CommandBar through designer as well as through code. This can be done by selecting the client controls from the toolbox and dropping it onto the particular CommandBar. The control will be resized to fit the CommandBar's client bounds. 

A CommandBar can host a single control / multiple controls. This can be done as follows.

## Single Control

You can drag-and-drop the single client control onto the CommandBar.

## Multiple Controls

To accommodate multiple controls, place the controls within a Panel control and set it to be the CommandBar's client.




{% highlight C# %}


this.commandBar1.Controls.Add(this.panel1);

{% endhighlight %}



{% highlight vbnet %}

Me.commandBar1.Controls.Add(Me.panel1)
{% endhighlight %}


 ![](Hosting-Child-Controls_images/Hosting-Child-Controls_img1.jpeg) 



The method associated with the above property is given below.


<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
CalcChildControlBounds</td><td>
Calculates the client control bounds for the specified CommandBar size and dock position.</td></tr>
</table>


