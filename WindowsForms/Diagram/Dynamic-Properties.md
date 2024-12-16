---
layout: post
title: Dynamic Properties in Windows Forms Diagram control | Syncfusion®
description: Learn about Dynamic Properties support in Syncfusion® Windows Forms Diagram control and more details.
platform: windowsforms
control: Diagram
documentation: ug
---


# Dynamic Properties in Windows Forms Diagram

This feature lets the user add additional properties or data to the nodes and connectors. Any type of data can be added as additional data or properties.

The node’s [PropertyBag](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_PropertyBag) property, which is a key value pair, is used to add, edit, and remove the additional properties or data and can be serialized when saving the diagram.

The diagram has built-in UI dialogs to add, edit, and remove the dynamic properties. 

Use Case Scenario:

It is used to store additional data to the nodes or connectors as needed.



Properties

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
PropertyBag </td><td>
Gets or sets the dynamic property data dictionary.</td><td>
Dictionary<string, object></td></tr>
</table>


The following code shows how to add additional data to a node by using the [PropertyBag](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_PropertyBag) property.


{% tabs %}
{% highlight c# %}

node.PropertyBag.Add("Name", employee.EmployeeName);
node.PropertyBag.Add("ID", employee.EmployeeID);
node.PropertyBag.Add("Designation", employee.Designation);

{% endhighlight %}
{% highlight vb %}

node.PropertyBag.Add("Name", employee.EmployeeName)
node.PropertyBag.Add("ID", employee.EmployeeID)
node.PropertyBag.Add("Designation", employee.Designation)

{% endhighlight %}
{% endtabs %}

![Dynamic-Properties_img1](Dynamic-Properties_images/Dynamic-Properties_img1.png)


