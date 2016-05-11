---
layout: post
title: Header Customization Settings | WindowsForms | Syncfusion
description: Header Customization Settings
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Header Customization Settings

## Header Height and Font Settings

The following properties can be used to change the height and font of the header of the GroupBar Items.


<table>
<tr>
<th>
GroupBar Property</th><th>
Description</th></tr>
<tr>
<td>
GroupBarItemHeight</td><td>
Specifies the height of the GroupBarItem.</td></tr>
<tr>
<td>
Font</td><td>
Specifies the font of the text displayed in the GroupBar header.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.GroupBarItemHeight = 30;

this.groupBar1.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.GroupBarItemHeight = 30 

Me.groupBar1.Font = New System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CByte((0))) 

{% endhighlight %}



![](Overview_images/Overview_img29.jpeg) 



 ![](Overview_images/Overview_img30.jpeg)



## Header BackColor and ForeColor Settings

Different colors can be applied to the header and header text of the GroupBar Items. This can be done using the below given properties.



<table>
<tr>
<th>
GroupBar Property</th><th>
Description</th></tr>
<tr>
<td>
HeaderBackColor</td><td>
Specifies the Background color for the GroupBar Item.</td></tr>
<tr>
<td>
HeaderForeColor</td><td>
Specifies the Foreground color for the GroupBar Item.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.HeaderBackColor = System.Drawing.Color.LavendarBlush;

this.groupBar1.HeaderForeColor = System.Drawing.Color.Silver;

{% endhighlight %}


{% highlight vbnet %} 

Me.groupBar1.HeaderBackColor = System.Drawing.Color.Red

Me.groupBar1.HeaderForeColor = System.Drawing.Color.Maroon

{% endhighlight %}

 ![](Overview_images/Overview_img31.jpeg)
 
GroupBar Items with Background Color = "LavenderBlush" and Foreground Color = "Silver"
{:.caption}

The methods given below are used to reset the above properties.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ResetHeaderFont</td><td>
Resets the HeaderFont property to it's default value.</td></tr>
<tr>
<td>
ResetHeaderBackcolor</td><td>
Resets the HeaderBackColor property to it's default value.</td></tr>
<tr>
<td>
ResetHeaderForeColor</td><td>
Resets the HeaderForeColor property to it's default value.</td></tr>
</table>