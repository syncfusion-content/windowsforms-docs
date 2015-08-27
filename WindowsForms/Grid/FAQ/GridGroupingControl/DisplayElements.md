---
layout: post
title: DisplayElements
description: displayelements
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## DisplayElements

#### How to access all DisplayElements or a particular DisplayElement in GridGrouping control

You can access DisplayElements by using the following code.

[C#]



//Accesses all the display elements.

foreach (Element el in gridGroupingControl1.Table.DisplayElements)

{

    Console.WriteLine(el.Info);

}



//Accesses a particular display element.

Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[index].Info);



[VB]



'Accesses all the display element.

 For Each el As Element In Me.gridGroupingControl1.Table.DisplayElements

    Console.WriteLine(el.Info)

 Next el



'Accesses a particular display element.

Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(index).Info)

#### How to access a particular DisplayElement if RowIndex is provided

You can access DisplayElements with rowindex by using the following code.

[C#]



// Accesses a particular display element.

Element el=this.gridGroupingControl1.Table.DisplayElements[rowindex].ParentElement;



[VB]



' Accesses a particular display element.

Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(rowindex).ParentElement

#### How to find DisplayElement Type

You can find the type of particular DisplayElement using the code below.

[C#]



//Accesses the type of display element.

Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[rowindex].Kind);



[VB]



'Accesses the type of display element.

Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(rowindex).Kind)



