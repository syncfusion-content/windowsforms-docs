---
layout: post
title: How to get dock controls parent relationship through code | Windows Forms | Syncfusion
description: How to get dock controls parent relationship through code
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to get dock controls parent relationship through code?

This can be done using the below code snippet.



{% highlight C# %}


private void InitializeDockControlState()

{

    this.dockingManager1.FloatControl(this.myUserControl11, new Rectangle(250, 250, 220, 260));

    this.dockingManager1.FloatControl(this.myUserControl21, new Rectangle(350, 350, 220, 260));



    this.dockingManager1.DockControl(this.myUserControl31, this, DockingStyle.Right, 200);

    this.dockingManager1.DockControl(this.myUserControl11, this.myUserControl21, DockingStyle.Bottom, 200);

}



private void GetDockingRelationship(Control dockedControl)

{

    Control targetControl;

    string statusMessage = string.Empty;



    if (dockedControl.Parent is DockHost)

    {

        DockHost dockhost = dockedControl.Parent as DockHost;

        DockHostController dhc = dockhost.InternalController as DockHostController;

        DockControllerBase baseController = dhc.DICurrent.dController;



        if (baseController != null)

        {

            if (baseController is SizingController || baseController is DockHostController)

            {



                if (count != dockedctrls.Count - 1)

                {

                    targetControl = baseController.HostControl.Controls[0];

                    statusMessage = dockedControl.Name + " is docked to " + targetControl.Name + ".";

                    statusMessage += "DockingStyle " + this.dockingManager1.GetDockStyle(dockedControl);

                }

                else if (count == dockedctrls.Count - 1)

                {

                    targetControl = baseController.HostControl;

                    statusMessage = dockedControl.Name + " is docked to " + targetControl.Name + ".";

                    statusMessage += "DockingStyle " + this.dockingManager1.GetDockStyle(dockedControl);

                }

            }

            else if (baseController is DockTabController)

            {

                if (this.dockingManager1.IsFloating(dockedControl))

                {

                    statusMessage = dockedControl.Name + " is floating and in a tab group.";

                    targetControl = baseController.HostControl.Parent.Controls[0].Controls[0];

                }

                else

                {

                    statusMessage = dockedControl.Name + " is in a tab group.";

                    targetControl = baseController.HostControl.Controls[0];

                }



                if (targetControl.Name != dockedControl.Name)

                    statusMessage += "The tab group primary control is " + targetControl.Name + ".";

                else

                    statusMessage += "This control is the primary control in the tab group.";



            }

            else if (baseController is FloatingFormController)

            {

                statusMessage = dockedControl.Name + " is floating independently.";

            }

            else

            {

                statusMessage = dockedControl.Name + " full docking state not known.";

            }

        }



        Console.WriteLine(statusMessage);

    }

}



ArrayList dockedctrls;

int count;

private void getControlsRelationToolStripMenuItem_Click(object sender, EventArgs e)

{

    count = 0;

    IEnumerator ienum = this.dockingManager1.Controls;

    dockedctrls = new ArrayList();



    while (ienum.MoveNext())

    {

        dockedctrls.Add(ienum.Current);

    }



    foreach (Control dockedControl in dockedctrls)

    {

        GetDockingRelationship(dockedControl);

        count = count + 1;

    }

}
{% endhighlight %}





{% highlight vbnet %}


Private Sub InitializeDockControlState()



    Me.dockingManager1.FloatControl(Me.myUserControl11, New Rectangle(250, 250, 220, 260))

    Me.dockingManager1.FloatControl(Me.myUserControl21, New Rectangle(350, 350, 220, 260))



    Me.dockingManager1.DockControl(Me.myUserControl31, Me, DockingStyle.Right, 200)

    Me.dockingManager1.DockControl(Me.myUserControl11, Me.myUserControl21, DockingStyle.Bottom, 200)

End Sub



Private Sub GetDockingRelationship(ByVal dockedControl As Control)

    Dim targetControl As Control

    Dim statusMessage As String = String.Empty



    If TypeOf dockedControl.Parent Is DockHost Then

        Dim dockhost As DockHost = TryCast(dockedControl.Parent, DockHost)

        Dim dhc As DockHostController = TryCast(dockhost.InternalController, DockHostController)

        Dim baseController As DockControllerBase = dhc.DICurrent.dController



        If baseController IsNot Nothing Then

            If TypeOf baseController Is SizingController OrElse TypeOf baseController Is DockHostController Then



                If count &lt;&gt; dockedctrls.Count - 1 Then

                    targetControl = baseController.HostControl.Controls(0)

                    statusMessage = dockedControl.Name + " is docked to " + targetControl.Name + "."

                    statusMessage += "DockingStyle " + Me.dockingManager1.GetDockStyle(dockedControl)

                ElseIf count = dockedctrls.Count - 1 Then

                    targetControl = baseController.HostControl

                    statusMessage = dockedControl.Name + " is docked to " + targetControl.Name + "."

                    statusMessage += "DockingStyle " + Me.dockingManager1.GetDockStyle(dockedControl)

                End If

            ElseIf TypeOf baseController Is DockTabController Then

                If Me.dockingManager1.IsFloating(dockedControl) Then

                    statusMessage = dockedControl.Name + " is floating and in a tab group."

                    targetControl = baseController.HostControl.Parent.Controls(0).Controls(0)

                Else

                    statusMessage = dockedControl.Name + " is in a tab group."

                    targetControl = baseController.HostControl.Controls(0)

                End If



                If targetControl.Name &lt;&gt; dockedControl.Name Then

                    statusMessage += "The tab group primary control is " + targetControl.Name + "."

                Else

                    statusMessage += "This control is the primary control in the tab group."



                End If

            ElseIf TypeOf baseController Is FloatingFormController Then

                statusMessage = dockedControl.Name + " is floating independently."

            Else

                statusMessage = dockedControl.Name + " full docking state not known."

            End If

        End If



        Console.WriteLine(statusMessage)

    End If

End Sub

Private dockedctrls As ArrayList

Private count As Integer



Private Sub getControlsRelationToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)

    count = 0

    Dim ienum As IEnumerator = Me.dockingManager1.Controls

    dockedctrls = New ArrayList()



    While ienum.MoveNext()

        dockedctrls.Add(ienum.Current)

    End While



    For Each dockedControl As Control In dockedctrls

        GetDockingRelationship(dockedControl)

        count = count + 1

    Next

End Sub

{% endhighlight %}



