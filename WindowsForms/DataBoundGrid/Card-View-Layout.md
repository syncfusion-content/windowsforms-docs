---
layout: post
title: Card-View-Layout | WindowsForms | Syncfusion
description: card view layout
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# Card View Layout

The card view displays records as separate cards arranged in a grid-like layout. It is implemented similar to binding GridDataBoundGrid control to GridCardView object.

## Tables for Properties, Methods, and Events


<table>
<tr>
<th>
PROPERTIES </th><th>
DESCRIPTION </th><th>
TYPE </th><th>
DATA TYPE </th></tr>
<tr>
<td>
CaptionField</td><td>
Sets or gets caption of each card. Users can set a column name to this. </td><td>
string</td><td>
string</td></tr>
<tr>
<td>
CardStyle</td><td>
Applies a card model such as standard, merged, variable, or compressed styles.</td><td>
CardStyle</td><td>
enum</td></tr>
<tr>
<td>
VisualStyle</td><td>
Applies the visual style of the cards in the grid. The new GridVisualStyles are applied to this.</td><td>
CardVisualStyle</td><td>
enum</td></tr>
<tr>
<td>
CardSpacingWidth</td><td>
Gets or sets the width of the spacing between each card.</td><td>
int</td><td>
int</td></tr>
<tr>
<td>
CardSpacingHeight</td><td>
Gets or sets the height of the spacing between each card.</td><td>
int</td><td>
int</td></tr>
<tr>
<td>
MaxCardCols</td><td>
Gets or sets the maximum number of cards in the column area. MaxCardRows will be automatically calculated.</td><td>
int</td><td>
int</td></tr>
<tr>
<td>
MaxCardRows</td><td>
Gets or sets the maximum number of cards in the row area. MaxCardCol will be automatically calculated if it is not set.</td><td>
int</td><td>
int</td></tr>
<tr>
<td>
ShowCaption</td><td>
Shows or hides the caption of each card.</td><td>
bool</td><td>
bool</td></tr>
<tr>
<td>
ShowCardCellBorders</td><td>
Shows or hides the cell borders.</td><td>
bool</td><td>
bool</td></tr>
<tr>
<td>
AllowResizing</td><td>
Allows or prevents the card resizing.</td><td>
bool</td><td>
bool</td></tr>
<tr>
<td>
CaptionHeight</td><td>
Gets or sets the height of the caption row.</td><td>
bool</td><td>
bool</td></tr>
<tr>
<td>
ActivateCurrentCellBehavior</td><td>
Specifies current cell activation behavior when moving the current cell or clicking inside a cell.</td><td>
GridCellActivateAction</td><td>
enum</td></tr>
<tr>
<td>
HighlightActiveCard</td><td>
Gets or sets the highlight of the active card.</td><td>
bool</td><td>
bool</td></tr>
</table>




<table>
<tr>
<th>
METHODS</th><th>
DESCRIPTION </th><th>
PARAMETERS</th><th>
TYPE </th><th>
RETURN TYPE </th></tr>
<tr>
<td>
WireGrid</td><td>
Gets tde GridDataBoundGrid and changes it to Card View Style.</td><td>
GridDataBoundGridboundGrid </td><td>
Metdod </td><td>
void</td></tr>
<tr>
<td>
UnWireGrid</td><td>
Unhooks all tde events hooked in tde WireGrid() metdod.</td><td>
N/A</td><td>
Metdod</td><td>
Void</td></tr>
<tr>
<td>
IsActiveCard</td><td>
Indicates tde state of tde card if active.</td><td>
rowIndex, ColIndex</td><td>
Metdod</td><td>
bool</td></tr>
<tr>
<td>
IsHeaderCell</td><td>
Indicates if tde cell is a header column cell.</td><td>
rowIndex, ColIndex</td><td>
Metdod</td><td>
bool</td></tr>
<tr>
<td>
IsRecordCell</td><td>
Indicates if tde cell is a record cell.</td><td>
rowIndex,colIndex.</td><td>
Metdod</td><td>
bool</td></tr>
<tr>
<td>
IsValueCell</td><td>
Indicates if tde cell is a value cell.</td><td>
rowIndex,colIndex.</td><td>
Metdod</td><td>
bool</td></tr>
<tr>
<td>
IsCardCaption</td><td>
Indicates if tde cell is a caption cell.</td><td>
rowIndex,colIndex.</td><td>
Metdod</td><td>
bool</td></tr>
<tr>
<td>
GetCardCellTypeGetCardCellType</td><td>
Specifies tde type of tde card cell.</td><td>
rowIndex,colIndex.</td><td>
Metdod</td><td>
CardCellType</td></tr>
</table>




<table>
<tr>
<th>
EVENTS</th><th>
DESCRIPTION </th><th>
ARGUMENTS </th><th>
TYPE </th></tr>
<tr>
<td>
QueryCardCellInfo</td><td>
Occurs when tde card model queries for style information about a specific cell.</td><td>
public QueryCardCellInfoEventArgs(GridQueryCellInfoEventArgs e, GridCardView cardView)</td><td>
Event</td></tr>
<tr>
<td>
CellClick</td><td>
Occurs when tde user clicks inside a cell.</td><td>
public CardCellClickEventArgs(GridCellClickEventArgs e, GridCardView cardView)</td><td>
Event</td></tr>
<tr>
<td>
SaveCardCellInfo</td><td>
Occurs when tde card model is about to save style information about a specific cell.</td><td>
public SaveCardCellInfoEventArgs(GridSaveCellInfoEventArgs e, GridCardView cardView)</td><td>
Event</td></tr>
<tr>
<td>
PushButtonClick</td><td>
Occurs when tde user clicks a push button.</td><td>
public CardCellPushButtonClickEventArgs(GridCellPushButtonClickEventArgs e, GridCardView cardView)</td><td>
Event</td></tr>
</table>




![](Card-View-Layout_images/Card-View-Layout_img1.png) 



## Sample Link

_<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\GridDataBound.Windows\Samples\Product Showcase\Card View Demo_

## Enable the Card View Layout

The following code is used to enable card view layout in GridDataBoundGrid control.
{% highlight c# %}


GridCardView card = new GridCardView();

card.CaptionField = "ProductName";

card.WireGrid(this.gridDataBoundGrid1);
{% endhighlight  %}
{% highlight vbnet %}



Private card As New GridCardView()

card.CaptionField = "ProductName"

card.WireGrid(Me.gridDataBoundGrid1)

{% endhighlight  %}

