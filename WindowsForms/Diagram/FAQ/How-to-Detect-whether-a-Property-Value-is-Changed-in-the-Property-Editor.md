---
layout: post
title: How to Detect whether a Property Value is Changed  | Syncfusion®
description: Use the PropertyValueChanged event in a property grid to track changes in property values within the property editor efficiently.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Detect whether a Property Value is Changed in the Property Editor?

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