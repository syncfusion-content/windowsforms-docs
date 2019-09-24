---
layout: post
title: Display-multiple-members | WindowsForms | Syncfusion
description: how to display multiple members in a multicolumncombobox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Display Multiple Members in a MultiColumnComboBox

This section deals with displaying multiple members in a MultiColumnComboBox. Follow the steps to achieve the same.

1.Initialization of the MultiColumnComboBox.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.MultiColumnComboBox multiColumnComboBox1;

// Set a boolean flag. 
bool afterDropDown = false;        
this.multiColumnComboBox1.SelectedValue = null;
this.multiColumnComboBox1.SelectedIndex = -1;
this.multiColumnComboBox1.Text = ""; 

{% endhighlight %}

{% highlight vb %}

Private multiColumnComboBox1 As Syncfusion.Windows.Forms.Tools.MultiColumnComboBox

' Set a boolean flag. 
Private afterDropDown As Boolean = False
Me.multiColumnComboBox1.SelectedValue = Nothing
Me.multiColumnComboBox1.SelectedIndex = -1
Me.multiColumnComboBox1.Text = ""

{% endhighlight %}
{% endtabs %}

2. 2.Populate the MultiColumnComboBox with data. Refer [Data Binding]
(https://help.syncfusion.com/windowsforms/multicolumncombobox/data-binding) topic.

3.In order to display the contents of the entire row in the GridListControl in the MultiColumnComboBox instead of just the DisplayMember, you can handle the MultiColumnComboBox's SelectedIndexChanged and DropDown event as shown below.

{% tabs %}
{% highlight c# %}

this.multiColumnComboBox1.SelectedIndexChanged += multiColumnComboBox1_SelectedIndexChanged;
this.multiColumnComboBox1.DropDown += multiColumnComboBox1_DropDown;


private void multiColumnComboBox1_DropDown(object sender, System.EventArgs e)
{
this.afterDropDown = true;
}
string str = "";


private void multiColumnComboBox1_SelectedIndexChanged(object sender, System.EventArgs e)
{
	if (this.afterDropDown == true)
	{
        for(int i =1; i<=this.multiColumnComboBox1.ListBox.Grid.ColCount; i++)
		{
    		str += this.multiColumnComboBox1.ListBox.Grid[this.multiColumnComboBox1.SelectedIndex+1, i].Text + " ";
		}
		
	    Console.WriteLine(str);
		this.multiColumnComboBox1.Text = str;
	}
	this.afterDropDown = false;
	str = "";
}

{% endhighlight %}

{% highlight vb %}
 
AddHandler Me.multiColumnComboBox1.SelectedIndexChanged, AddressOf multiColumnComboBox1_SelectedIndexChanged
AddHandler Me.multiColumnComboBox1.DropDown, AddressOf multiColumnComboBox1_DropDown

Private Sub multiColumnComboBox1_DropDown(ByVal sender As Object, ByVal e As System.EventArgs)
Me.afterDropDown = True
End Sub
Private str As String = ""

Private Sub multiColumnComboBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
If Me.afterDropDown = True Then
Dim i As Integer =1
Do While i<=Me.multiColumnComboBox1.ListBox.Grid.ColCount
str += Me.multiColumnComboBox1.ListBox.Grid(Me.multiColumnComboBox1.SelectedIndex+1, i).Text & " "

i += 1
Loop
Console.WriteLine(str)
Me.multiColumnComboBox1.Text = str
End If
Me.afterDropDown = False
str = ""
End Sub

{% endhighlight %}
{% endtabs %}

   ![](Frequently-Asked-Questions_images/Overview_img332.jpeg)
