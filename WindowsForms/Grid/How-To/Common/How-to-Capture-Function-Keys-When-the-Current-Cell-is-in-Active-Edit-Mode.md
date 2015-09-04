---
layout: post
title: How-to-Capture-Function-Keys-When-the-Current-Cell-is-in-active-edit-mode
description: how to capture function keys when the current cell is in active edit mode
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Capture Function Keys When the Current Cell is in Active Edit Mode

### Introduction

While the grid cell is not actively edited, the grid itself will get these keystrokes. In this case, event handlers like grid.CurrentCellKeyDown and grid.KeyDown can be used to catch the keys. When the current cell is actively being edited, the grid does not automatically catch these keys. In this case, you can use Grid.CurrentCellControlKeyMessage to catch the function keys. You will have to manually subscribe to it. Note that this event may be hit multiple times for each keystroke (eg., for both KeyDown and KeyUp). You can check e.Msg property to see what key message is being processed by your event handler.

#### Example

{% highlight c# %}



//Subscribes to the event.
this.grid.CurrentCellControlKeyMessage += new GridCurrentCellControlKeyMessageEventHandler (grid_CurrentCellControlKeyMessage);



//The handler.
private void grid_CurrentCellControlKeyMessage(object sender, GridCurrentCellControlKeyMessageEventArgs e)

{

    Keys keyCode = (Keys)((int)e.Msg.WParam) & Keys.KeyCode;

    Console.WriteLine(keyCode);

    Console.WriteLine(e.Msg);

}


{% endhighlight %}

{% highlight vbnet %}



'Subscribes to the event.
AddHandler Me.grid.CurrentCellControlKeyMessage, AddressOf grid_CurrentCellControlKeyMessage



'The handler.
Private Sub grid_CurrentCellControlKeyMessage(ByVal sender As Object, ByVal e As GridCurrentCellControlKeyMessageEventArgs)

        Dim keyCode As Keys = CType(Fix(e.Msg.WParam), Keys) And Keys.KeyCode

        Console.WriteLine(keyCode)

        Console.WriteLine(e.Msg)



'Grid_CurrentCellControlKeyMessage.

End Sub 


{% endhighlight %}

