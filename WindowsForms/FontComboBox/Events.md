---
layout: post
title: Events | WindowsForms | Syncfusion
description: Events
platform: WindowsForms
control: Editors Package
documentation: ug
---


# Events

This section comprises the below events:

## SelectedIndexChanged Event

SelectedIndexChanged event - This event is raised when the ComboBox.SelectedIndex property is changed. 

The below code snippet, lets you set the selected font style, for a label, on selecting through a FontComboBox, using SelectedIndexChanged event.

{%highlight c#%}



private void fontComboBox2_SelectedIndexChanged(object sender, EventArgs e)

{

    this.label1.Font = new Font(this.fontComboBox2.SelectedItem.ToString(), 11, FontStyle.Regular);

}


{%endhighlight%}

{%highlight vbnet%}


Private Sub fontComboBox2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    Me.label1.Font = New Font(Me.fontComboBox2.SelectedItem.ToString(), 11, FontStyle.Regular)

End Sub

{%endhighlight%}


## FontSelected Event

To add FontSelected event, derive the classes as shown below.

1. Add an event in the derived class.
   
   ~~~ cs
   
	   // Adding event.
	   public event System.EventHandler FontSelected;
   
   ~~~
   {:.prettyprint}
   
   ~~~vbnet
   
	   ' Adding event.
	   Public Event FontSelected As System.EventHandler
   ~~~
   {:.prettyprint}



2. Override the OnSelectedIndexChanged method and fire the event there.
   
   ~~~ cs
	   protected override void OnSelectedIndexChanged(EventArgs e) 
	   {
	   // FontSelected event fires here.
	   if(FontSelected!=null) FontSelected(this,e);
			base.OnSelectedIndexChanged (e);
	   }
   ~~~
   {:.prettyprint}
   
   
   ~~~vbnet
   
	   Protected Overrides Sub OnSelectedIndexChanged(ByVal e As EventArgs)
	   ' FontSelected event fires here.
	   RaiseEvent FontSelected(Me, e)
	   MyBase.OnSelectedIndexChanged(e)
	   End Sub
   
   ~~~
   {:.prettyprint}






