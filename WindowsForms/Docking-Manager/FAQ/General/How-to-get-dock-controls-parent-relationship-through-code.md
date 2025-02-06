---
layout: post
title: How to get dock controls parent relationship through code | WindowsForms | Syncfusion®
description: How to get dock controls parent relationship through code
platform: WindowsForms
control: DockingManager
documentation: ug
---


# How to get dock controls parent relationship through code?

This can be done using the below code snippet.

{% tabs %}

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

        DockHost dockHost = dockedControl.Parent as DockHost;

        DockHostController dockHostController = dockHost.InternalController as DockHostController;

        DockControllerBase baseController = dockHostController.DICurrent.dController;



        if (baseController != null)

        {

            if (baseController is SizingController || baseController is DockHostController)

            {



                if (count != dockedControls.Count - 1)

                {

                    targetControl = baseController.HostControl.Controls[0];

                    statusMessage = dockedControl.Name + " is docked to " + targetControl.Name + ".";

                    statusMessage += "DockingStyle " + this.dockingManager1.GetDockStyle(dockedControl);

                }

                else if (count == dockedControls.Count - 1)

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



ArrayList dockedControls;

int count;

private void getControlsRelationToolStripMenuItem_Click(object sender, EventArgs e)

{

    count = 0;

    IEnumerator enumerator = this.dockingManager1.Controls;

    dockedControls = new ArrayList();



    while (enumerator.MoveNext())

    {

        dockedControls.Add(enumerator.Current);

    }



    foreach (Control dockedControl in dockedControls)

    {

        GetDockingRelationship(dockedControl);

        count = count + 1;

    }

}
{% endhighlight %}





{% highlight VB %}


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

        Dim dockHost As DockHost = TryCast(dockedControl.Parent, DockHost)

        Dim dockHostController As DockHostController = TryCast(dockHost.InternalController, DockHostController)

        Dim baseController As DockControllerBase = dockHostController.DICurrent.dController



        If baseController IsNot Nothing Then

            If TypeOf baseController Is SizingController OrElse TypeOf baseController Is DockHostController Then



                If count &lt;&gt; dockedControls.Count - 1 Then

                    targetControl = baseController.HostControl.Controls(0)

                    statusMessage = dockedControl.Name + " is docked to " + targetControl.Name + "."

                    statusMessage += "DockingStyle " + Me.dockingManager1.GetDockStyle(dockedControl)

                ElseIf count = dockedControls.Count - 1 Then

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

Private dockedControls As ArrayList

Private count As Integer



Private Sub getControlsRelationToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)

    count = 0

    Dim enumerator As IEnumerator = Me.dockingManager1.Controls

    dockedControls = New ArrayList()



    While enumerator.MoveNext()

        dockedControls.Add(enumerator.Current)

    End While



    For Each dockedControl As Control In dockedControls

        GetDockingRelationship(dockedControl)

        count = count + 1

    Next

End Sub

{% endhighlight %}

{% endtabs %}



