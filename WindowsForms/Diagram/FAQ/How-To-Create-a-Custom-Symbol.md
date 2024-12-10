---
layout: post
title: How To Create a Custom Symbol | Diagram | Windows Forms | Syncfusion®
description: how to create a custom symbol
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Create a Custom Symbol

The following code sample demonstrates how you can create a custom symbol and use it in Essential® Diagram.

1. Create the custom symbol.

   ~~~ csharp

		// Custom Symbol (MySymbol.cs)

		public class MySymbol : Symbol

		{

			private Syncfusion.Windows.Forms.Diagram.Rectangle outerRect = null;

			private Ellipse innerEllipse = null;



			public MySymbol()

			{

			   // Add child nodes to the symbol programmatically.

			   // Add an outer rectangle.

				this.outerRect = new Syncfusion.Windows.Forms.Diagram.Rectangle(0, 0, 120, 80);

				this.outerRect.Name = "Rectangle";

				this.outerRect.FillStyle.Color = Color.Khaki;

				this.AppendChild(outerRect);



				// Add an inner ellipse.

				this.innerEllipse = new Ellipse(10, 10, 100, 60);

				this.innerEllipse.Name = "Ellipse";

				this.AppendChild(innerEllipse);



				// Add Label.

				Label lbl = this.AddLabel("My Symbol", BoxPosition.Center);

				lbl.BackgroundStyle.Color = Color.Transparent;

			}

		}

   ~~~

   ~~~ vbnet

		' Custom Symbol (MySymbol.vb)

		Public Class MySymbol

				Inherits Symbol

				Private outerRect As Syncfusion.Windows.Forms.Diagram.Rectangle = Nothing

				Private innerEllipse As Syncfusion.Windows.Forms.Diagram.Ellipse = Nothing



				Public Sub New()



					' Add child nodes to the symbol programmatically.



					' Add an outer rectangle.

					Me.outerRect = New Syncfusion.Windows.Forms.Diagram.Rectangle(0, 0, 120, 80)

					Me.outerRect.Name = "Rectangle"

					Me.outerRect.FillStyle.Color = Color.Khaki

					Me.AppendChild(outerRect)



					' Add an inner ellipse.

					Me.innerEllipse = New Syncfusion.Windows.Forms.Diagram.Ellipse(10, 10, 100, 60)

					Me.innerEllipse.Name = "Ellipse"

					Me.AppendChild(innerEllipse)



					' Add Label.

					Dim lbl As Label = Me.AddLabel("My Symbol", BoxPosition.Center)

					lbl.BackgroundStyle.Color = Color.Transparent

				End Sub ' New

		End Class ' MySymbol

   ~~~

2. Use the symbol in the form.

   ~~~ csharp

		// Register InsertTool for MySymbol.

		this.diagram1.Controller.RegisterTool(new InsertSymbolTool("InsertMySymbol", typeof(MySymbol)));



		// Activate InsertTool for MySymbol.

		this.diagram1.ActivateTool("InsertMySymbol");

   ~~~

   ~~~ vbnet

		' Register InsertTool for MySymbol.

		Me.diagram1.Controller.RegisterTool(New InsertSymbolTool("InsertMySymbol", GetType(MySymbol)))



		' Activate InsertTool for MySymbol.

		Me.diagram1.ActivateTool("InsertMySymbol")

   ~~~