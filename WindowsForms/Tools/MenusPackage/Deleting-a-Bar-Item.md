---
layout: post
title: Deleting a Bar Item
description: deleting a bar item
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Deleting a Bar Item


## Design Time

In the designer, right click on the bar item which you want to delete and select "Delete" option from the Context Menu.

![](Overview_images/Overview_img92.jpeg) 



You can remove the BarItem from a submenu using any of the below two methods also.

_Table496: Methods Table_

<table>
<tr>
<th>
BarItem Methods</th><th>
Description</th></tr>
<tr>
<td>
Remove</td><td>
Removes the first occurrence of the specific object.{{ '_obj_'  | markdownify }}- System.object to remove from System.Collections.Arraylist.</td></tr>
<tr>
<td>
RemoveAt</td><td>
Removes the bar item from the ParentBarItems Collection based on the Bar item index(index). The parameter is,{{ '_index_' | markdownify }} - Index of the bar item.</td></tr>
</table>




{% highlight c# %}

this.parentBarItem1.Items.Remove(this.barItem1);  

or

this.parentBarItem1.Items.RemoveAt(1);   

//where '1' refers to the index of the BarItem in its parentBarItems collection.                  

{% endhighlight  %}
{% highlight vbnet %}





Me.parentBarItem1.Items.Remove(Me.barItem1)

or

Me.parentBarItem1.Items.RemoveAt(1)

'where '1' refers to the index of the BarItem in its parentBarItems collection.

{% endhighlight  %}

![](Overview_images/Overview_img93.jpeg)



## RunTime

This option is available for the end users at run time also. Right-clicking on a bar item at run time invokes the context menu similar to that in the Designer.

![](Overview_images/Overview_img94.jpeg) 
