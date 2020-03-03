---
layout: post
title: Display-multiple-members | WindowsForms | Syncfusion
description: the section deals with how to display multiple members in a multicolumncombobox control
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Display Multiple Members in a MultiColumnComboBox

This section deals with displaying multiple members in a MultiColumnComboBox. Follow the steps to achieve the same.

1.Initialization of the MultiColumnComboBox.

{% tabs %}
{% highlight c# %}

// Set a boolean flag. 
bool dropDownOpened = false;
private Syncfusion.Windows.Forms.Tools.MultiColumnComboBox multiColumnComboBox1;
this.multiColumnComboBox1=new Syncfusion.Windows.Forms.Tools.MultiColumnComboBox();
this.Load += Form1_Load;
this.Controls.Add(this.multiColumnComboBox1); 

{% endhighlight %}

{% highlight vb %}

' Set a boolean flag. 
Private dropDownOpened As Boolean = False
Private multiColumnComboBox1 As Syncfusion.Windows.Forms.Tools.MultiColumnComboBox
Me.multiColumnComboBox1 = New Syncfusion.Windows.Forms.Tools.MultiColumnComboBox()
Me.Controls.Add(Me.multiColumnComboBox1)

{% endhighlight %}
{% endtabs %}

2.Populate the MultiColumnComboBox with data. Refer [Data Binding](https://help.syncfusion.com/windowsforms/multicolumncombobox/data-binding) topic.

3.In order to display the contents of the entire row in the GridListControl in the MultiColumnComboBox instead of just the DisplayMember, you can handle the MultiColumnComboBox's SelectedIndexChanged and DropDown event as shown below.

{% tabs %}
{% highlight c# %}

private void Form1_Load(object sender, EventArgs e)
{
	this.multiColumnComboBox1.SelectedIndexChanged += multiColumnComboBox1_SelectedIndexChanged;
	this.multiColumnComboBox1.DropDown += multiColumnComboBox1_DropDown;
}

private void multiColumnComboBox1_DropDown(object sender, System.EventArgs e)
{
	this.dropDownOpened = true;
}

string text = "";

private void multiColumnComboBox1_SelectedIndexChanged(object sender, System.EventArgs e)
{
	if (this.dropDownOpened == true)
	{
        for(int i =1; i<=this.multiColumnComboBox1.ListBox.Grid.ColCount; i++)
		{
    		text += this.multiColumnComboBox1.ListBox.Grid[this.multiColumnComboBox1.SelectedIndex+1, i].Text + " ";
		}
		this.dropDownOpened = false;
		this.multiColumnComboBox1.Text = text;
	}
	text = "";
}

{% endhighlight %}

{% highlight vb %}
 
Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	AddHandler Me.multiColumnComboBox1.SelectedIndexChanged, AddressOf multiColumnComboBox1_SelectedIndexChanged
	AddHandler Me.multiColumnComboBox1.DropDown, AddressOf multiColumnComboBox1_DropDown
End Sub

Private Sub multiColumnComboBox1_DropDown(ByVal sender As Object, ByVal e As System.EventArgs)
	Me.dropDownOpened = True
End Sub

Private text As String = ""

Private Sub multiColumnComboBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
    If Me.dropDownOpened = True Then
        For i As Integer = 1 To Me.multiColumnComboBox1.ListBox.Grid.ColCount
            text += Me.multiColumnComboBox1.ListBox.Grid(Me.multiColumnComboBox1.SelectedIndex + 1, i).Text & " "
        Next
		Me.dropDownOpened = False
        Me.multiColumnComboBox1.Text = text
    End If   
    text = ""
End Sub

{% endhighlight %}
{% endtabs %}

   ![Display-multiple-fields](Frequently-Asked-Questions_images/Overview_img332.jpeg)