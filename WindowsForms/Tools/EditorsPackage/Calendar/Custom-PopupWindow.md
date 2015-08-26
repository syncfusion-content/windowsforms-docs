---
layout: post
title: Custom PopupWindow
description: custom popupwindow
platform: windowsforms
control: Calendar
documentation: ug
---
# Custom PopupWindow

This section deals with creating a custom popup window for the DateTimePickerAdv control. We can implement IDateTimePickerAdvCalendar interface to drop down a custom window.

IDateTimePickerAdvCalendar Interface Members

_Table196: Member Table_

<table>
<tr>
<th>
IDateTimePickerAdvCalendar Member</th><th>
Description</th></tr>
<tr>
<td>
Active</td><td>
Boolean value indicating if the DateTimePickerAdv should consider the interface events fired by this control.</td></tr>
<tr>
<td>
Appearance properties (CalendarFont, CalendarForeColor, CalendarMonthBackground, TitleBackColor, TitleForeColor and TrailingForeColor)</td><td>
{{ '_CalendarFont_' | markdownify }} - Gets / sets the font used to draw the calendar that implements the interface, {{ '_CalendarForeColor_' | markdownify }} - Gets / sets the color used to draw the foreground of calendar that implements the interface, {{ '_CalendarMonthBackground_' | markdownify }} - Gets / sets the color used to draw the month background of calendar that implements the interface, {{ '_TitleBackColor_' | markdownify }} - Gets / sets the color used to draw the title background of calendar that implements the interface,{{ '_TitleForeColor_' | markdownify }} - Gets / sets the color used to draw the foreground of the title of calendar that implements the interface, {{ '_TrailingForeColor_' | markdownify }} - Gets / sets the color used to draw the trailing foreground of calendar that implements the interface.</td></tr>
<tr>
<td>
Value properties (MinDate, MaxDate, Value)</td><td>
{{ '_MinDate_' | markdownify }} - Gets / sets the minimum date of the calendar that implements the interface,{{ '_MaxDate_' | markdownify }} - Gets / sets the maximum date of the calendar that implements the interface and{{ '_Value_' | markdownify }} - Gets / sets the date of the calendar that implements the interface.</td></tr>
<tr>
<td>
Culture</td><td>
Gets or set the culture of the calendar that implements this interface.</td></tr>
</table>

_Table197: Events Table_

<table>
<tr>
<th>
IDateTimePickerAdvCalendar Events</th><th>
Description</th></tr>
<tr>
<td>
NullButtonDown</td><td>
Event is similar to the DateTimePickerAdv.NullButtonEventHandler. It is handled when the none button is clicked or when the control implementing the interface wants the DateTimePickerAdv to have the NullString displayed. </td></tr>
<tr>
<td>
SelectDate</td><td>
Event is similar to the DateTimePickerAdv.SelectDateEventHandler. It is handled when the user selects a date on the control implementing the interface or the control wants the popup to close and set the picker's date to the Value member.</td></tr>
<tr>
<td>
DateChange</td><td>
Event is similar to the DateTimePickerAdv.DateChangedEventHandler. It is handled when the user has changed the date of the control implementing the interface and doesn't want the popup to close, just update the picker's date to the Value member.</td></tr>
</table>




## Creating a Custom Popup Window for DateTimePickerAdv

Follow the below steps to add a Windows MonthCalendar control as the Popup for the DateTimePickerAdv, using PopupControlContainer.

1. Drag a DateTimePickerAdv, PopupControlContainer and a button onto the form designer from the toolbox. 

   ![](Calendar_Images/Overview_img221.jpeg) 



2. Create a control that implements the IDateTimePickerAdvCalendar interface using the below code.





					//Creating Calendar which implements the IDateTimePickerAdvCalendar

					private MyCustomCalendar MonthCalendar;



					//Initializing the Calendar 

					this.MonthCalendar = new MyCustomCalendar();



					//Defining the Calendar Class which implements IDateTimePickerAdvCalendar

					public class MyCustomCalendar : MonthCalendar, IDateTimePickerAdvCalendar

					{

						private bool active;



						public bool Active

						{

							get { return active; }

							set { active = value; }

						}



						public System.Drawing.Font CalendarFont

						{

							get { return Font; }

							set { Font = value; }

						}



						public Color CalendarForeColor

						{

							get { return ForeColor; }

							set { ForeColor = value; }

						}



						public Color CalendarMonthBackground

						{

							get { return BackColor; }

							set { BackColor = value; }

						}



						public DateTime Value

						{

							get { return SelectionStart; }

							set { SelectionStart = SelectionEnd = value; }

						}



						public event DateTimePickerAdv.NullButtonEventHandler NullButtonDown;

						public event DateTimePickerAdv.SelectDateEventHandler SelectDate;

						public event DateTimePickerAdv.DateChangedEventHandler DateChange;



						public MyCustomCalendar()

						{

							this.DateSelected += new System.Windows.Forms.DateRangeEventHandler(OnDateSelected);

							this.DateChanged += new System.Windows.Forms.DateRangeEventHandler(OnDateChanged);

						}



						protected void OnDateSelected(object sender, System.Windows.Forms.DateRangeEventArgs e)

						{

							if (SelectDate != null)

							{

								SelectDate(this, new EventArgs());

							}

						}

						protected void OnDateChanged(object sender, System.Windows.Forms.DateRangeEventArgs e)

						{

							if (DateChange != null)

							{

								DateChange(this, new EventArgs());

							}

						}



						public string Culture

						{

							get { return "Not Supported"; }

						}



						public void FireNullEvent()

						{

							if (NullButtonDown != null)

							{

								NullButtonDown(this, new EventArgs());

							}

						}



						CultureInfo IDateTimePickerAdvCalendar.Culture

						{

							get { throw new Exception("The method or operation is not implemented."); }

							set { throw new Exception("The method or operation is not implemented."); }

						}           

					}







					 'Creating Calendar which implements the IDateTimePickerAdvCalendar 

					Private MonthCalendar As MyCustomCalendar



					'Initializing the Calendar 

					Me.MonthCalendar = New MyCustomCalendar()



					'Defining the Calendar Class which implements IDateTimePickerAdvCalendar 

					Public Class MyCustomCalendar

						Inherits MonthCalendar

						Implements IDateTimePickerAdvCalendar





						Private m_active As Boolean



						Public Property Active() As Boolean

							Get

								Return m_active

							End Get

							Set(ByVal value As Boolean)

								m_active = value

							End Set

						End Property



						Public Property CalendarFont() As System.Drawing.Font

							Get

								Return Font

							End Get

							Set(ByVal value As System.Drawing.Font)

								Font = value

							End Set

						End Property



						Public Property CalendarForeColor() As Color

							Get

								Return ForeColor

							End Get

							Set(ByVal value As Color)

								ForeColor = value

							End Set

						End Property



						Public Property CalendarMonthBackground() As Color

							Get

								Return BackColor

							End Get

							Set(ByVal value As Color)

								BackColor = value

							End Set

						End Property



						Public Property Value() As DateTime

							Get

								Return SelectionStart

							End Get

							Set(ByVal value As DateTime)

								SelectionStart = SelectionEnd = value

							End Set

						End Property



						Public Event NullButtonDown As DateTimePickerAdv.NullButtonEventHandler

						Public Event SelectDate As DateTimePickerAdv.SelectDateEventHandler

						Public Event DateChange As DateTimePickerAdv.DateChangedEventHandler



						Public Sub New()

							AddHandler Me.DateSelected, AddressOf OnDateSelected

							AddHandler Me.DateChanged, AddressOf OnDateChanged

						End Sub



						Protected Sub OnDateSelected(ByVal sender As Object, ByVal e As System.Windows.Forms.DateRangeEventArgs)

							RaiseEvent SelectDate(Me, New EventArgs())

						End Sub

						Protected Sub OnDateChanged(ByVal sender As Object, ByVal e As System.Windows.Forms.DateRangeEventArgs)

							RaiseEvent DateChange(Me, New EventArgs())

						End Sub



						Public ReadOnly Property Culture() As String

							Get

								Return "Not Supported"

							End Get

						End Property



						Public Sub FireNullEvent()

							RaiseEvent NullButtonDown(Me, New EventArgs())

						End Sub



						Private Property Culture() As CultureInfo Implements IDateTimePickerAdvCalendar.Culture

							Get

								Throw New Exception("The method or operation is not implemented.")

							End Get

							Set(ByVal value As CultureInfo)

								Throw New Exception("The method or operation is not implemented.")

							End Set

						End Property

					End Class



3. Set theActive property of the MonthCalendar to True. Set the DateTimePickerAdv's CustomPopupWindow property to the PopupControlContainer control. Set the DateTimePickerAdv's CustomDrop property to theTrue. 





					this.dateTimePickerAdv1.CustomDrop = true;

					this.dateTimePickerAdv1.CustomPopupWindow = this.popupControlContainer1;

					//Setting the DateTimePickerAdv control to consider the interface events by enabling Active property

					this.MonthCalendar.Active = true;

					//Adding Calendar to the Popup Control Container

					this.popupControlContainer1.Controls.Add(this.MonthCalendar);







					Me.dateTimePickerAdv1.CustomDrop = True 

					Me.dateTimePickerAdv1.CustomPopupWindow = Me.popupControlContainer1 

					'Setting the DateTimePickerAdv control to consider the interface events by enabling Active property 

					Me.MonthCalendar.Active = True 

					'Adding Calendar to the Popup Control Container 

					Me.popupControlContainer1.Controls.Add(Me.MonthCalendar)



4. In the button click event, call the MyCustomCalendar's FireNullEvent method. 





				private void buttonAdv1_Click(object sender, EventArgs e)

				{

					//Calling the below method to fire the Null Event of the Calendar control created

					MonthCalendar.FireNullEvent();

				}







				Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As EventArgs)

					'Calling the below method to fire the Null Event of the Calendar control created 

					MonthCalendar.FireNullEvent()

				End Sub



5. Run the application and click the dropdown button of the DateTimePickerAdv control to display the custom popup. 

   ![](Calendar_Images/Overview_img222.jpeg) 



6. When you click the button, the DateTimePickerAdv will display the NullString specified in NullString property.

   ![](Calendar_Images/Overview_img223.jpeg) 

   {:.prettyprint}

A sample which demonstrates adding a MonthCalendarAdv itself as a custom popup calendar to the DateTimePickerAdv control is available in the below sample installation location.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
