---
layout: post
title: Multiple-Columns | WindowsForms | Syncfusion
description: multiple columns
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Multiple Columns

MultiColumnComboBox control is a [ComboBoxAdv](/windowsforms/comboboxadv/overview) control with multiple columns. Multiple columns will be enabled by default. To disable this, set MultiColumn property to false. We can display the headers for the columns using ShowColumnHeader property. 

![](Overview_images/Overview_img325.jpeg) 

We can bind external data to the MultiColumnComboBox control. Refer [DataBinding](/windowsforms/multicolumncombobox/data-binding) topic to know more.

## Selection color

We can specify the color for the alpha blended selections using AlphaBlendSelectionColor property.

{% tabs %}
{% highlight c# %}

this.multiColumnBoundCombo.MultiColumn = true;
this.multiColumnBoundCombo.ShowColumnHeader = true;
this.multiColumnComboBox1.AlphaBlendSelectionColor = Color.LightBlue;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnBoundCombo.MultiColumn = True
Me.multiColumnBoundCombo.ShowColumnHeader = True
Me.multiColumnComboBox1.AlphaBlendSelectionColor = Color.LightBlue

{% endhighlight %}
{% endtabs %}

## DropDownWidth

The DropDownWidth property is used to set the width for the DropDown Popup of MultiColumnComboBox. Please find the code for the same:

{% tabs %}

{% highlight C# %}

this.multiColumnComboBox1.DropDownWidth = 240;

{% endhighlight %}


{% highlight VB %}

Me.multiColumnComboBox1.DropDownWidth = 240

{% endhighlight %}

{% endtabs %}

![](Overview_images/Dropdownimage.png) 

 Fig 1: This screenshot shows the width sets for the DropDown popup of MultiColumnComboBox

 ## Custom Filtering

 Filtering is the process of retrieving the values from the collection which satisfy the specified condition. In this MultiColumnComboBox, the filtering can be applied through the custom filters. Filtering can be enabled by setting the AllowFiltering property to true.
 
 {% tabs %}

{% highlight C# %}

 this.multiColumnComboBox1.AllowFiltering = true;

{% endhighlight %}

{% highlight VB %}
 
 Me.multiColumnComboBox1.AllowFiltering = true;

{% endhighlight %}

{% endtabs %}

The custom filtering can be applied by setting the MultiColumnComboBox.Filter delegate. The FilterRecords delegate is assigned to MultiColumnComboBox.Filter delegate to filter items based on the column provided and conditions under which the data should be filtered. If the record satisfies the condition, returns true, otherwise it returns false.

{% tabs %}

{% highlight C# %}

    private void OnFilterChanged()
    {
        this.multiColumnComboBox1.Filter = FilterRecords;
    }

    public bool FilterRecords(object o)
    {
        var item = o as OrderInfo;
        if (item != null && FilterText.Equals(""))
        {
                return true;
        }
        else
        {
            if (item != null)
            {
                if (FilterProperty.Equals("All Columns"))
                {
                    if (item.OrderID.ToString().Contains(FilterText) ||
                        item.CustomerID.ToLower().Contains(FilterText.ToLower()) || item.ContactNumber.ToString().Contains(FilterText.ToLower())||
                        item.ProductName.ToString().ToLower().Contains(FilterText.ToLower()) || item.Quantity.ToString().ToLower().Contains(FilterText.ToLower()) ||
                        item.ShipCountry.ToString().ToLower().Contains(FilterText.ToLower()) ||
                        item.OrderDate.ToString().ToLower().Contains(FilterText.ToLower()))
                        return true;
                    return false;
                    }
                else
                {
                    if (FilterColumn == null || FilterColumn.Equals("Contains"))
                         FilterColumn = "Contains";
                    else if (FilterColumn.Equals("StartsWith"))
                         FilterColumn = "StartsWith";
                    else if (FilterColumn.Equals("EndsWith"))
                        FilterColumn = "EndsWith";
                    bool result = MakeStringFilter(item, FilterProperty, FilterColumn);
                    return result;
                }
            }
        }

        return false;
    }
       

{% endhighlight %}

{% highlight VB %}

    Private Sub OnFilterChanged()
        Me.multiColumnComboBox1.Filter = FilterRecords
    End Sub

    Public Function FilterRecords(ByVal o As Object) As Boolean
        Dim item = TryCast(o, OrderInfo)

        If item IsNot Nothing AndAlso FilterText.Equals("") Then
            Return True
        Else

            If item IsNot Nothing Then

                If FilterProperty.Equals("All Columns") Then
                    If item.OrderID.ToString().Contains(FilterText) OrElse item.CustomerID.ToLower().Contains(FilterText.ToLower()) OrElse item.ContactNumber.ToString().Contains(FilterText.ToLower()) OrElse item.ProductName.ToString().ToLower().Contains(FilterText.ToLower()) OrElse item.Quantity.ToString().ToLower().Contains(FilterText.ToLower()) OrElse item.ShipCountry.ToString().ToLower().Contains(FilterText.ToLower()) OrElse item.OrderDate.ToString().ToLower().Contains(FilterText.ToLower()) Then Return True
                    Return False
                Else

                    If FilterColumn Is Nothing OrElse FilterColumn.Equals("Contains") Then
                        FilterColumn = "Contains"
                    ElseIf FilterColumn.Equals("StartsWith") Then
                        FilterColumn = "StartsWith"
                    ElseIf FilterColumn.Equals("EndsWith") Then
                        FilterColumn = "EndsWith"
                    End If

                    Dim result As Boolean = MakeStringFilter(item, FilterProperty, FilterColumn)
                    Return result
                End If
            End If
        End If

        Return False
    End Function

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img353.jpg) 