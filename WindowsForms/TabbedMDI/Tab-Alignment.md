---
layout: post
title: Tab-Alignment | WindowsForms | Syncfusion
description: tab alignment
platform: WindowsForms
control: TabbedMDIPackage 
documentation: ug
---

# Tab Alignment

The tabs in the TabbedMDI layout can be aligned to the Top, Left, Right and Bottom of the form using the Alignment property. To access the Alignment property, you should use the TabControlAdded event. This event is fired to let the user configure the tab appearance and behavior.

1. Call the TabControlAdded event in the form's constructor.

   ~~~ cs

		this.tb.TabControlAdded += new TabbedMDITabControlEventHandler(tb_TabControlAdded);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		AddHandler tb.TabControlAdded, AddressOf tb_TabControlAdded

   ~~~
   {:.prettyprint }

2. Set the Alignment property of Tab Control using the TabbedMDITabControlEventArgs.

   ~~~ cs

		private void tb_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

		{

		args.TabControl.Alignment=TabAlignment.Bottom;

		}   

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private Sub tb_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

		args.TabControl.Alignment = TabAlignment.Bottom

		End Sub

   ~~~
   {:.prettyprint }


![](Tab-Alignment_images/Tab-Alignment_img1.jpeg)



{% seealso %}

[MDI List](/windowsforms/tabbedmdi/mdi-list)

{% endseealso %}



