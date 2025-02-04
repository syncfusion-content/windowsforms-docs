---
layout: post
title: How-To-Load-Custom-Controls-As-Part-Of-the-HTML-La | WindowsForms | Syncfusion®
description: how to load custom controls as part of the html layout?
platform: WindowsForms
control: HTML UI
documentation: ug
---

# How to load custom controls as part of the HTML layout?

An HTML document containing custom controls is shown below.

{% tabs %}

{% highlight HTML %}



<HTML>

<HEAD>

<TITLE>HTMLUI CUSTOM CONTROLS</TITLE>

<style> 

.tttDisplay { text-decoration: none; color: #ffffff; font-family: Tahoma; font-size: 34pt; font-weight: bold; line-height: 30px; padding-left: 2px; }

</style>

</HEAD>

<BODY>



<TABLE id="CustomControls" cellSpacing="0" cellPadding="0" width="100%" bgColor="silver" border="1" height="100%" align="center">



<TR>

<TD class="tttDisplay" height="33%" width="100%" id="cctd1" vAlign="center">

<maskededittextbox id="maskedEditTextBox1" height="20" width="136">

</maskededittextbox>

</TD>

</TR>



<TR>

<TD class="tttDisplay" height="33%" width="100%" id="cctd2" vAlign="center">

<monthcalendar id="monthCalendar1" width="199" height="155"></monthcalendar>

</TD>

</TR>



<TR>

<TD class="tttDisplay" height="33%" width="100%" id="cctd3" vAlign="center">

<datagrid id="dataGrid1" width="304" height="144"></datagrid>

</TD>

</TR>



</TABLE>



</BODY>

</HTML>

{% endhighlight %}

The CustomControlBase implements the base functionality of the Windows Forms control on the HTML tag element and loads the custom controls with its respective functionalities into the HTMLUI.



{% highlight C# %}



// Event Handler Declaration. 

this.htmluiControl1.PreRenderDocument += new Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentEventHandler(this.htmluiControl1_PreRenderDocument);



// Event that is to be raised when a tree of element has been created and their size and location have 

// not been calculated yet.

private void htmluiControl1_PreRenderDocument(object sender, Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentArgs e)

{

Hashtable tab = new Hashtable();



   // Returns an hash of elements by their User Id.

tab = e.Document.ElementsByUserID;

BaseElement maskedEditTextBoxElement1 = tab["maskedEditTextBox1"] as BaseElement;



    // Here the base functionality of the 'this.maskedEditBox1' is implemented to the'maskedEditTextBoxElement1'. 

new CustomControlBase( maskedEditTextBoxElement1, this.maskedEditBox1  ); 

BaseElement monthCalendarElement1 = tab["monthCalendar1"] as BaseElement;



   // Here the base functionality of the 'this.monthCalendar1' is implemented to the 'monthCalendarElement1'.

new CustomControlBase( monthCalendarElement1, this.monthCalendar1  ); 

BaseElement dataGridElement1 = tab["dataGrid1"] as BaseElement;



   // Here the base functionality of the 'this.dataGrid1' is implemented to the 'datGridElement1'.

new CustomControlBase( dataGridElement1, this.dataGrid1  ); 

}

{% endhighlight %}

{% highlight VB %}



Private Sub htmluiControl1_PreRenderDocument(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentArgs)

Dim tab As Hashtable = New Hashtable()

tab = e.Document.ElementsByUserID



Dim maskedEditTextBoxElement1 As BaseElement = CType(IIf(TypeOf tab("maskedEditTextBox1") Is BaseElement, tab("maskedEditTextBox1"), Nothing), BaseElement)

Dim oTemp1 As CustomControlBase = New CustomControlBase(maskedEditTextBoxElement1, Me.maskedEditBox1)



Dim monthCalendarElement1 As BaseElement = CType(IIf(TypeOf tab("monthCalendar1") Is BaseElement, tab("monthCalendar1"), Nothing), BaseElement)

Dim oTemp2 As CustomControlBase = New CustomControlBase(monthCalendarElement1, Me.monthCalendar1)



Dim dataGridElement1 As BaseElement = CType(IIf(TypeOf tab("dataGrid1") Is BaseElement, tab("dataGrid1"), Nothing), BaseElement)

Dim oTemp3 As CustomControlBase = New CustomControlBase(dataGridElement1, Me.dataGrid1)

End Sub

{% endhighlight %}

{% endtabs %}