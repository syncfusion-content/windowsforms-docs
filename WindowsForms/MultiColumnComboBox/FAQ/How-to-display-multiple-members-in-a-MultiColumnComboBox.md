---
layout: post
title: How-to-display-multiple-members-in-a-MultiColumnComboBox
description: how to display multiple members in a multicolumncombobox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to display multiple members in a MultiColumnComboBox

This section deals with displaying multiple members in a MultiColumnComboBox. Follow the steps to achieve the same.

1. Initialization of the MultiColumnComboBox.

   ~~~ cs

        private Syncfusion.Windows.Forms.Tools.MultiColumnComboBox multiColumnComboBox1;

		// Set a boolean flag. 

		bool afterDropDown = false;        

		this.multiColumnComboBox1.SelectedValue = null;

		this.multiColumnComboBox1.SelectedIndex = -1;

		this.multiColumnComboBox1.Text = ""; 

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Private multiColumnComboBox1 As Syncfusion.Windows.Forms.Tools.MultiColumnComboBox

		' Set a boolean flag. 

		Private afterDropDown As Boolean = False

		Me.multiColumnComboBox1.SelectedValue = Nothing

		Me.multiColumnComboBox1.SelectedIndex = -1

		Me.multiColumnComboBox1.Text = ""

   ~~~
   {:.prettyprint }

2. Populate the MultiColumnComboBox with data. Refer Databinding topic.

   ~~~ cs

        private void multiColumnComboBox1_DropDown(object sender, System.EventArgs e)
		
		{

		// Hide a column.

		this.multiColumnComboBox1.ListBox.Grid.Model.Cols.Hidden[1] = true;

		this.multiColumnComboBox1.ListBox.Grid.Model.ColWidths[3] = this.multiColumnComboBox1.Bounds.Width/2;

		this.multiColumnComboBox1.ListBox.Grid.Model.ColWidths[4] = this.multiColumnComboBox1.Bounds.Width/2;

		this.afterDropDown = true;

		}

		string str = "";

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Private Sub multiColumnComboBox1_DropDown(ByVal sender As Object, ByVal e As System.EventArgs)

		' Hide a column.

		Me.multiColumnComboBox1.ListBox.Grid.Model.Cols.Hidden(1) = True

		Me.multiColumnComboBox1.ListBox.Grid.Model.ColWidths(3) = Me.multiColumnComboBox1.Bounds.Width/2

		Me.multiColumnComboBox1.ListBox.Grid.Model.ColWidths(4) = Me.multiColumnComboBox1.Bounds.Width/2

		Me.afterDropDown = True

		End Sub

		Private str As String = ""

   ~~~
   {:.prettyprint }

3. In order to display the contents of the entire row in the GridListControl in the MultiColumnComboBox instead of just the DisplayMember, you can handle the MultiColumnComboBox's SelectedIndexChanged event as shown below.

   ~~~ cs

        private void multiColumnComboBox1_SelectedIndexChanged(object sender, System.EventArgs e)

		{

		if (this.afterDropDown == true)

		{

            for(int i =1; i<=this.multiColumnComboBox1.ListBox.Grid.ColCount; i++)

			{

			if(i==1)

			{

			// do nothing for the hidden columns

			}

			else

			{

			str += this.multiColumnComboBox1.ListBox.Grid[this.multiColumnComboBox1.SelectedIndex+1, i].Text + " ";

			}

			}

	    Console.WriteLine(str);

		this.multiColumnComboBox1.Text = str;

		}

		this.afterDropDown = false;

		str = "";

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Private Sub multiColumnComboBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

		If Me.afterDropDown = True Then

        Dim i As Integer =1

		Do While i<=Me.multiColumnComboBox1.ListBox.Grid.ColCount

		If i=1 Then

		' do nothing for the hidden columns

		Else

		str += Me.multiColumnComboBox1.ListBox.Grid(Me.multiColumnComboBox1.SelectedIndex+1, i).Text & " "

		End If

		i += 1

		Loop

		Console.WriteLine(str)

		Me.multiColumnComboBox1.Text = str

		End If

		Me.afterDropDown = False

		str = ""

		End Sub

   ~~~
   {:.prettyprint }

   ![](Overview_images/Overview_img332.png)



