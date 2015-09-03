---
layout: post
title: How to dynamically embed any control via Templates inside the GroupBar
description: Frequently Asked Questions
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How to dynamically embed any control via Templates inside the GroupBar

The following code snippet shows how to dynamically add a Label control to the Groupbar Item using Templates.

{% highlight C# %}  

// Create a label or any control that you want to add as a template. 

Label label1 = new Label(); 

label1.Text = "Child 1"; 

// Create an instance for the groupbar template. 

GroupBarTemplateControl template = new GroupBarTemplateControl(); 

template.ID = "templateId"; 

template.Controls.Add(label1); 

Groupbar1.Templates.Add(template); 

// Find the groupbar item to which you want to add the template and assign it to the TemplateID property. 

GroupBarItem item = (GroupBarItem)Groupbar1.FindGroupItemByID("child1"); 

item.TemplateID="templateId"; 

{% endhighlight %}


{% highlight vbnet %} 


' Create a label or any control that you want to add as a template. 

Private label1 As Label = New Label()

Private label1.Text = "Child 1" 

' Create an instance for the groupbar template. 

Private template As GroupBarTemplateControl = New GroupBarTemplateControl()

Private template.ID = "templateId" 

template.Controls.Add(label1) 

Groupbar1.Templates.Add(template) 

' Find the groupbar item to which you want to add the template and assign it to the TemplateID property. 

Private item As GroupBarItem = CType(Groupbar1.FindGroupItemByID("child1"), GroupBarItem)

Private item.TemplateID="templateId" 

{% endhighlight %}
