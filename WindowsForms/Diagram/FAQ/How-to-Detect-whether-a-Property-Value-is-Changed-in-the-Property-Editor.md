---
layout: post
title: How to detect value changes in Windows Forms Diagram | Syncfusion®
description: Learn how to detect property value changes in the Syncfusion® Windows Forms Diagram Property Editor using the PropertyValueChanged event.
control: Diagram
documentation: ug
---

# How to Detect Property Value Changes in Windows Forms Diagram

You can use the PropertyValueChanged event to detect whether a property value is changed in the property editor. The following code example illustrates this.

{% tabs %}

{% highlight c# %}

//PropertyValueChanged event.

propertyEditor1.PropertyGrid.PropertyValueChanged += new PropertyValueChangedEventHandler(PropertyGrid_PropertyValueChanged);

private void PropertyGrid_PropertyValueChanged(object s, PropertyValueChangedEventArgs e)

{            

     //Here, capture the changed property (e.ChangedItem) and process the same.

}

{% endhighlight %}

{% highlight vbnet %}

'PropertyValueChanged event.

AddHandler propertyEditor1.PropertyGrid.PropertyValueChanged, AddressOf PropertyGrid_PropertyValueChanged

Private Sub PropertyGrid_PropertyValueChanged(ByVal s As Object, ByVal e As PropertyValueChangedEventArgs)

'Here, capture the changed property (e.ChangedItem) and process the same.

End Sub

{% endhighlight %}

{% endtabs %}