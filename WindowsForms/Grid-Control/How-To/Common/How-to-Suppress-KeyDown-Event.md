---
layout: post
title: How to Suppress KeyDown Event in WinForms Gridcontrol | Syncfusion
description: Learn here all about how to suppress keydown event of Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Suppress KeyDown Event in Windows Forms GridControl

To suppress the TableControlCurrentCellKeyDown event, enable the SuppressKeyPress property in this event.  To get the Keys data, override the ProcessCmdKey() method. 

1. Suppress the KeyDown event as given in the following code:

   ~~~ cs

		void gridGroupingControl1_TableControlCurrentCellKeyDown(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlKeyEventArgs e)

				{

					e.Inner.SuppressKeyPress = true;

				}

   ~~~
   {:.prettyprint }

   ~~~ vb

		Private Sub gridGroupingControl1_TableControlCurrentCellKeyDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlKeyEventArgs)

					e.Inner.SuppressKeyPress = True

				End Sub

   ~~~
   {:.prettyprint }

2. Handle the ProcessCmdKey() method to get the keys data as given in the following code: 

   ~~~ cs

		protected override bool ProcessCmdKey(ref Message msg, Keys keyData)

				{

					Keys keyCode = keyData & Keys.KeyCode;

					switch (keyCode)

					{

						case Keys.Down: Console.WriteLine("down");                 

							break;

						case Keys.Up: Console.WriteLine("Up");

							break;

						case Keys.Right: Console.WriteLine("Right");

							break;

						case Keys.Left: Console.WriteLine("Left");

							break;

						case Keys.PageUp: Console.WriteLine("PageUp");

							break;

						case Keys.PageDown: Console.WriteLine("PageDown");

							break;

					}            

					return base.ProcessCmdKey(ref msg, keyData);

				}

   ~~~
   {:.prettyprint }

   ~~~ vb

		Protected Overrides Function ProcessCmdKey(ByRef msg As Message, ByVal keyData As Keys) As Boolean

					Dim keyCode As Keys = keyData And Keys.KeyCode

					Select Case keyCode

						Case Keys.Down

							Console.WriteLine("down")

							Exit Select

						Case Keys.Up

							Console.WriteLine("Up")

							Exit Select

						Case Keys.Right

							Console.WriteLine("Right")

							Exit Select

						Case Keys.Left

							Console.WriteLine("Left")

							Exit Select

						Case Keys.PageUp

							Console.WriteLine("PageUp")

							Exit Select

						Case Keys.PageDown

							Console.WriteLine("PageDown")

							Exit Select

					End Select

					Return MyBase.ProcessCmdKey(msg, keyData)

				End Function

   ~~~
   {:.prettyprint }