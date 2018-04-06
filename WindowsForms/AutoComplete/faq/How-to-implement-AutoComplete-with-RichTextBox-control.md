---
layout: post
title: How to implement AutoComplete with RichTextBox control | WindowsForms | Syncfusion
description: How to implement AutoComplete with RichTextBox control
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Implement AutoComplete with RichTextBox Control

Follow the given steps to implement AutoComplete feature with RichTextBox control.

1. Implement the IEditControlsEmbed interface in a RichTextBox class that enables the AutoComplete functionality for the RichTextBox control.

{% tabs %}
{% highlight c# %}
public class MyRichTextBox : System.Windows.Forms.RichTextBox, IEditControlsEmbed
{
// Returns the active RichTextBox control.
    public Control GetActiveEditControl(IEditControlsEmbedListener listener)
    {
        return (Control)this;
    }
}

{% endhighlight %}

{% highlight vb %}

Public Class MyRichTextBox Inherits System.Windows.Forms.RichTextBox Implements IEditControlsEmbed

' Returns the active RichTextBox control.
Public Function GetActiveEditControl(ByVal listener As IEditControlsEmbedListener) As Control
Return CType(Me, Control)
End Function
End Class

{% endhighlight %}
{% endtabs %}

2. Drag and drop the RichTextBox control and the AutoComplete control to a form.

{% tabs %}
{% highlight c# %}

// Initialization
Syncfusion.Windows.Forms.Tools.AutoComplete autoComplete1= new Syncfusion.Windows.Forms.Tools.AutoComplete();;
MyRichTextBox richTextBox1= new MyRichTextBox();

{% endhighlight %}

{% highlight vb %}

' Initialization
Dim autoComplete1 As Syncfusion.Windows.Forms.Tools.AutoComplete = New Syncfusion.Windows.Forms.Tools.AutoComplete 
Dim richTextBox1 As MyRichTextBox = New MyRichTextBox

{% endhighlight %}
{% endtabs %}

3. The AutoComplete control can take an external data source, any data source that implements IList or IListSource, for its history list. Set here is a StringCollection as the DataSource.
4. When this property is set, the AutoComplete control initializes itself with the data source and use that as the basis for its matching routines. For example, when you have a DataSet with a list of names of the states in the US and you specify that as the DataSource, then the AutoComplete control displays all the matches from within these names when you type in the target edit control.

{% tabs %}
{% highlight c# %}

// Sets the DataSource.
StringCollection liste = new StringCollection();
liste.Add("New Jersey");
liste.Add("North Carolina");
liste.Add("North Dakota");
liste.Add("New York");
liste.Add("New Mexico");
autoComplete1.DataSource = liste;

{% endhighlight %}

{% highlight vb %}

' Sets the DataSource. 
Dim liste As StringCollection = New StringCollection 
liste.Add("New Jersey") 
liste.Add("North Carolina") 
liste.Add("North Dakota") 
liste.Add("New York") 
liste.Add("New Mexico") 
autoComplete1.DataSource = liste

{% endhighlight %}
{% endtabs %}

5. Set the AutoCompleteonautoComplete1 property in the properties page to either AutoSuggest, AutoAppend or both. 
6. SetAutoComplete is the extended property for the AutoComplete property, that is called by the Framework when the AutoComplete property is set on any control. When using the AutoComplete control programmatically, you can use this method to add and remove auto completion for the RichTextBox control.

{% tabs %}
{% highlight c# %}

this.autoComplete1.SetAutoComplete(this.richTextBox1,Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoSuggest);

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.SetAutoComplete(Me.richTextBox1,Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoSuggest)

{% endhighlight %}
{% endtabs %}

7. The RichTextBox is enabled with the AutoComplete functionality.