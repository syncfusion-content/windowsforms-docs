---
layout: post
title: Deriving-GridPrintDocument
description: deriving gridprintdocument
platform: windowsform
control: Grid
documentation: ug
---

# Deriving GridPrintDocument

GridPrintDocument has the events BeginPrint, PrintPage and EndPrint inherited from PrintDocument, which allows you access to the printing flow at certain points. To gain more control, you can derive GridPrintDocument and override members like OnPrint. This will allow you to access grid members like ViewLayout and TopRowIndex to obtain information about the page that is being printed. The following code will show you how to print the top and bottom row of the page.

{% highlight c# %}



public class MyPrintDocument : GridPrintDocument

{

    GridControlBase _grid;



    public MyPrintDocument(GridControlBase grid, bool printPreview):base(grid, printPreview)

    {

        _grid = grid;

    }



    protected override void OnPrintPage(System.Drawing.Printing.PrintPageEventArgs ev)

    {

        base.OnPrintPage(ev);

        _grid.PrintingMode = true;



//Gets Top Row Index.

        int topRow = _grid.TopRowIndex;

        _grid.ViewLayout.Reset();



//Gets Bottom Row Index.

        int botRow = this._grid.ViewLayout.LastVisibleRow 

                        - (this._grid.ViewLayout.HasPartialVisibleRows ? 1 : 0);



        _grid.PrintingMode = false;



//Prints.

        Console.WriteLine("OnPrintPage " + topRow.ToString() + "   " + botRow.ToString());

    }

}

{% endhighlight %}

{% highlight vbnet %}



Public Class MyPrintDocument

Inherits GridPrintDocument

Private _grid As GridControlBase

Public Sub New(grid As GridControlBase, printPreview As Boolean)

MyBase.New(grid, printPreview)

_grid = grid

End Sub



Protected Overrides Sub OnPrintPage(ByVal ev As System.Drawing.Printing.PrintPageEventArgs)

MyBase.OnPrintPage(ev)

_grid.PrintingMode = True



'Gets Top Row Index.

Dim topRow As Integer = _grid.TopRowIndex

_grid.ViewLayout.Reset()



'Gets Bottom Row Index.

Dim botRow As Integer = Me._grid.ViewLayout.LastVisibleRow

If Me._grid.ViewLayout.HasPartialVisibleRows Then

                        botRow = botRow - 1

End If

_grid.PrintingMode = False



//Prints.

Console.WriteLine(("OnPrintPage " + topRow.ToString() + "   " + botRow.ToString()))



'OnPrintPage.

End Sub



'MyPrintDocument.

End Class
{% endhighlight %}