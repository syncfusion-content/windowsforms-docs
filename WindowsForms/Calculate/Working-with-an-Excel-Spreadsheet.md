---
layout: post
title: Working-with-an-Excel-Spreadsheet
description: working with an excel spreadsheet
platform: WindowsForms
control: Calculate
documentation: ug
---

# Working with an Excel Spreadsheet

You can use the Microsoft Excel to design spreadsheets that can be used on systems where MS Excel is not installed. This can be done by using a combination of Essential XlsIO and Essential Calculate, where the former can be used to read and write the spreadsheet and later to actually do the computation as values in the spreadsheet are modified. 

#### Example

To illustrate this process, consider a sample project, Essential Studio\x.x.x.x\Windows\Calculation.Windows\Samples\2.0\XlsFileUsingExcelRW. 

N> This requires you to have Essential XlsIO installed in addition to Essential Calculate. MS Excel is not required.

The spreadsheet you are using is a car insurance calculator. It uses Names to manage variable values and has the following four sheets.

* Inputs-Contains the input values for the car insurance calculations like the state, age, and so on.
* LookUps-Contains data that determine insurance rates. For example, each state has a weight assigned to it; each age has a weight assigned to it, and so on.
* Calculate-Does the actual calculations. Based on the input values from the input sheet, formulas in this sheet, look up appropriate weights from the LookUps sheet, and compute the car insurance cost depending upon these weights.
* Outputs-Contains the computed results obtained from the Calculate sheet.

![](Working-with-an-Excel-Spreadsheet_images/Working-with-an-Excel-Spreadsheet_img2.jpeg)





![](Working-with-an-Excel-Spreadsheet_images/Working-with-an-Excel-Spreadsheet_img3.jpeg)





![](Working-with-an-Excel-Spreadsheet_images/Working-with-an-Excel-Spreadsheet_img4.jpeg)





![](Working-with-an-Excel-Spreadsheet_images/Working-with-an-Excel-Spreadsheet_img5.jpeg)



This layout represents a general calculation design process which you can use for batch processing of information. The idea is that you change the inputs (all on a single sheet) and then return the outputs (all from a single sheet). There may be a web service or a server application that will allow clients to upload inputs and then download outputs. Or it could just be a batch processing calculation engine. Using this technique, you can use Excel to design complex calculations and then have a simple application that runs on systems without Excel, to input new values and retrieve computed results.

For example, consider the below form which accepts input values from the user. Once the values are set, the user clicks a button on the form that puts these values into the inputs sheet and then retrieves the insurance costs from the Outputs sheet and displays it on the form.

![](Working-with-an-Excel-Spreadsheet_images/Working-with-an-Excel-Spreadsheet_img6.jpeg)



Before learning about the actual code used in this sample to access XLS files, you need to know about a couple of classes in Essential Calculate as well as the role that Essential XlsIO will play.

## CalcSheet and CalcWorkbook Classes

In the Adding Calculation Support section, you would have learnt how to support referencing multiple ICalcData objects in a workbook fashion. The technique used there relies on registering each ICalcData object directly with a single instance of the CalcEngine. Different ICalcData objects are managed by tying together in a Tab Control as the Tab Pages. To support a general workbook structure where there are no support objects like Tab Pages and Tab Controls to provide the links, the Essential Calculate library includes two classes: CalcSheet and CalcWorkbook.

* The CalcSheet class is an ICalcData derived object that plays the role of a single worksheet. 
* It does have the optional facility to hold row/column type data objects that can be set through indexing an instance of the class. 
* This class will allocate storage to hold such data. 
* The CalcWorkbookclass is a collection of CalcSheets. 
* You can use these classes to manage the support for working with Excel spreadsheets.

For more detailed information on these classes, check out the class reference.



## Using Essential XlsIO

Essential XIsIO will give you an Excel-like Automation-type support without having MS Excel installed on the host system. This means that you can use this library to read and write an XLS file and hold its contents in memory. 

Limitation-You cannot perform actual computations on the contents of the XLS file. Essential Calculate adds this ability. 

A sample which illustrates the usage of Essential XlsIO with Essential Calculate is available in the following sample installation location:

&lt;Install Location&gt;\Windows\Calculate.Windows\Samples\2.0\Xls File Using CalcEngine Demo\cs

In this sample, the following two classes are used: 

* ExcelRWCalcSheet which is derived from CalcSheet and implements Syncfusion.XlsIO.IWorksheet 
* ExcelRWWorkbook which is derived from CalcWorkbook and implements Syncfusion.XlsIO.IWorkbook. 

These classes uses XlsIO library through the supported interfaces to populate a CalcWorkbook object from an XLS file. In addition, the derived classes use overrides to get and set the data through the XlsIO objects that holds the XLS data, instead of relying on the internal data storage that is available in CalcSheet. This gives us the ability to change values in the CalcWorkbook object and view the newly computed results. So, when you want to use an XLS file in your business objects and modify the values or get new calculated results, you can add these two classes to your project and utilize the support immediately in the same manner as this sample.

## Car Insurance Sample Details

The following sample code snippet creates an XlsIO workbook from the Excel spreadsheet that was shown earlier. It creates a form that enables you to change input values for the spreadsheet, and then displays the corresponding cost of insurance for these input values.

Given below is the code from the Form.Load event handler.


{% highlight c# %}

private ExcelRWCalcWorkbook calcWB;



private void Form1_Load(object sender, System.EventArgs e)

{

        // 1) Instantiates the workbook object from the spreadsheet file.

        calcWB = ExcelRWCalcWorkbook.CreateFromXLS(@"CarIns.xls");



        // 2) Do all calculations so that dependencies are known.

        this.calcWB.Engine.LockDependencies = false;

        this.calcWB.CalculateAll();



       // this.calcWB.Engine.CalculatingSuspended = true;

       this.calcWB.Engine.LockDependencies = true;



        // 3) Set some initial values on the form.

        this.comboBoxSex.SelectedIndex = 0;

        this.comboBoxState.SelectedIndex = 0;

        this.comboBoxModel.SelectedIndex = 0;

}

{% endhighlight %}

{% highlight vbnet %}

Private calcWB As ExcelRWCalcWorkbook



Private Sub Form1_Load(sender As Object, e As System.EventArgs)

        ' 1) Instantiate the workbook object from the spreadsheet file.

        calcWB = ExcelRWCalcWorkbook.CreateFromXLS("CarIns.xls")



        ' 2) Do all calculations so that dependencies are known.

        Me.calcWB.Engine.LockDependencies = False

        Me.calcWB.CalculateAll()



       ' Me.calcWB.Engine.CalculatingSuspended = True

        Me.calcWB.Engine.LockDependencies = True



        ' 3) Set some initial values on the form.

        Me.comboBoxSex.SelectedIndex = 0

        Me.comboBoxState.SelectedIndex = 0

        Me.comboBoxModel.SelectedIndex = 0

End Sub 

{% endhighlight %}


The following is an explanation of the preceding code.

1. Uses a static member, ExcelRWWorkbook.CreateFromXLS, to read and instantiate an ExcelRWWorkbook object from the given XLS file. (The CreateFromXLS method relies on Essential XlsIO to actually do this work.)
2. A call to CalculateAll is made so that all dependencies can be properly set within the underlying CalcEngine. By default, dependent management is locked in these classes. So, you will have to toggle LockDependencies to allow the engine to track them. It works this way for this sample, as you are not changing any relations among the values like adding or editing actual formulas, so the dependency relations among the values do not change. Thus, these dependencies only need to be done once and not continually updated as values change. The sample requests the calculated values to be refreshed from the beginning and does not rely on auto-calculations. There is another property setting that is commented out, i.e., setting CalculatingSuspended to True tells the engine to skip any calculations that might be triggered by changing values. This will postpone calculations until the property is reset to False. At that point, you will have to do a RecalculateAll call or use an explicit PullUpdatedValue call to ensure that the computed values are current. Suspending calculations makes sense if you are updating many entries and do not need intermediate values calculated.
3. Sets initial values for the combo boxes on the form. This next set of code shows what will happen when you click the button. At this point, the values need to be moved from the controls on the form into the ExcelRWCalcWorkbook object and the newly computed result is retrieved.

{% highlight c# %}

		private void button1_Click(object sender, System.EventArgs e)

		{
			// 1) Moves input values from the form into the calcsheet.
			SetSheetInputs();



			// 2) Calculations are not suspended, so just getting the value triggers the calculation. So these two lines are not needed.....              

			// this.calcWB.Engine.UpdateCalcID();

			// this.calcWB.Engine.PullUpdatedValue(this.calcWB.GetSheetID("Outputs"), 1, 1);



			// 3) Get the value from cell 1,1 on the output sheet.

			double d;

			if(double.TryParse(calcWB["Outputs"][1,1].ToString(),NumberStyles.Any,null,out d))

			{

                // Cell 1,1 on the outputs sheet has the result.

                this.labelPrice.Text = string.Format("{0:C2}", d); 

			}

			else

                this.labelPrice.Text = "---";

		}



		private int ageRow = 3;

		private int sexRow = 4;

		private int stateRow = 5;

		private int pointsRow = 6;

		private int modelRow = 7;

		private int modelYearRow = 8;

		private int multipleDiscountRow = 9;



		// 4) Set the input values into the CalcSheets.

		private void SetSheetInputs()

		{

			CalcSheet inputSheet = this.calcWB["Inputs"];

			inputSheet[ageRow,2] = this.numericUpDownAge.Value.ToString();

			inputSheet[sexRow,2] = this.comboBoxSex.Text[0].ToString();

			inputSheet[stateRow,2] = this.comboBoxState.Text;

			inputSheet[pointsRow,2] = this.numericUpDownPoints.Value.ToString();

			inputSheet[modelRow,2] = this.comboBoxModel.Text;

			inputSheet[modelYearRow,2] = numericUpDownModelYear.Value.ToString();

			inputSheet[multipleDiscountRow,2] = checkBoxMCars.Checked ? "Yes" : "No";

			inputSheet[3, 5] = this.textBoxBaseAmount.Text;

		}

{% endhighlight %}

{% highlight vbnet %}

			Private Sub button1_Click(sender As Object, e As System.EventArgs)



			' 1) Moves input values from the form into the CalcSheet.

			SetSheetInputs()



			' 2) Calculations not suspended, so just getting the value triggers the computation. So these two lines are not needed.....

			' Me.calcWB.Engine.UpdateCalcID()

			' Me.calcWB.Engine.PullUpdatedValue(this.calcWB.GetSheetID("Outputs"), 1, 1)



			' 3) Get the value from cell 1,1 on the output sheet.

			Dim d As Double

			If Double.TryParse(calcWB("Outputs")(1, 1).ToString(), NumberStyles.Any, Nothing, d) Then



				' Cell 1,1 on the outputs sheet has the result.

				Me.labelPrice.Text = String.Format("{0:C2}", d)

			Else

				Me.labelPrice.Text = "---"

			End If



			' Button1_Click 

			End Sub 



			Private ageRow As Integer = 3

			Private sexRow As Integer = 4

			Private stateRow As Integer = 5

			Private pointsRow As Integer = 6

			Private modelRow As Integer = 7

			Private modelYearRow As Integer = 8

			Private multipleDiscountRow As Integer = 9





			' 4) Set the input values into the CalcSheets.

			Private Sub SetSheetInputs()

			Dim inputSheet As CalcSheet = Me.calcWB("Inputs")

			inputSheet(ageRow, 2) = Me.numericUpDownAge.Value.ToString()

			inputSheet(sexRow, 2) = Me.comboBoxSex.Text(0).ToString()

			inputSheet(stateRow, 2) = Me.comboBoxState.Text

			inputSheet(pointsRow, 2) = Me.numericUpDownPoints.Value.ToString()

			inputSheet(modelRow, 2) = Me.comboBoxModel.Text

			inputSheet(modelYearRow, 2) = Me.numericUpDownModelYear.Value.ToString()

			If Me.checkBoxMultipleCars.Checked Then

				inputSheet(multipleDiscountRow, 2) = "Yes"

			Else

				inputSheet(multipleDiscountRow, 2) = "No"

			End If

			inputSheet(3, 5) = Me.textBoxBaseAmount.Text



			' SetSheetInputs

			End Sub 

{% endhighlight %}

The following is an explanation of the preceding code.

1. Calls a method to take the values from the controls on the form and move them into the Inputs sheet of the workbook.
2. This is a commented code. You will need it if CalculatingSuspended property is set to True. This code guarantees that the value in cell A1 of the Outputs sheet is current. But, since calculations are being done as the values are set in step 1, this code is not needed.
3. The computed value is in cell A1 of the Output sheet. To retrieve this value, you need to index the workbook with the sheet name to return the sheet, and then you need to index this sheet with the row and column to return the value, calcWB["Outputs"][1,1].
4. This is the code that actually moves the values from the controls on the form to the Inputs sheet. Again, you need to index the workbook with the sheet name and then use the appropriate row and column indexes to set the values into the Inputs sheet.

The last set of code you look at will show you how to handle a batch processing requirement, looping through setting Inputs and retrieving the Output value. In this code, you will have to set CalculatingSuspended to True; so, you are setting multiple values in a manner that does not trigger any intermediate calculations. Doing so increases performance about 10% in this sample, with only eight inputs. If you had hundreds of inputs, the increased performance will be more significant.

{% highlight c# %}

private void button2_Click(object sender, System.EventArgs e)

{

        // Runs 1000 iterations.

        int num = 1000;



        this.Cursor = Cursors.WaitCursor;

        DateTime start = DateTime.Now;

        CalcSheet inputSheet = this.calcWB["Inputs"];

        Random r = new Random();



        this.calcWB.Engine.CalculatingSuspended = true;



        for(int i = 0; i < num; ++ i)

        {



                // 1) Sets random values into the Inputs sheet.

                inputSheet[ageRow,2] = (r.Next(74) + 15).ToString();

                inputSheet[sexRow,2] = r.Next(2) == 1 ? "M" : "F";

                inputSheet[stateRow,2] = this.comboBoxState.Items[r.Next(50)];

                inputSheet[pointsRow,2] = r.Next(15).ToString();

                inputSheet[modelRow,2] = r.Next(11).ToString();

                inputSheet[modelYearRow,2] = (33 + r.Next(1972)).ToString();

                inputSheet[multipleDiscountRow,2] = r.Next(2) == 1 ? "Yes" : "No";

                inputSheet[3, 5] = this.textBoxBaseAmount.Text;



                // 2) Calculations are suspended so need to pull the computed value to make sure it has been calculated with the latest changes.

                this.calcWB.Engine.UpdateCalcID();

                calcWB.Engine.PullUpdatedValue(this.calcWB.GetSheetID("Outputs"), 1, 1);



                // 3) Gets the value from cell 1,1 on the output sheet.

                double d;

                if(double.TryParse(calcWB["Outputs"][1,1].ToString(), NumberStyles.Any, null, out d))

                {

                        this.labelPrice.Text = string.Format("{0:C2}", d);        

                }

                else

                        this.labelPrice.Text = "---";



                // Allows the label to update.

                this.labelPrice.Refresh();

        }

        this.calcWB.Engine.CalculatingSuspended = false;

        this.Cursor = Cursors.Default;

        this.labelPrice.Text = string.Format("{0} updates in {1} seconds", num,  (TimeSpan)(DateTime.Now - start) );

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub button2_Click(sender As Object, e As System.EventArgs)



        ' Runs 1000 iterations

        Dim num As Integer = 1000



        Me.Cursor = Cursors.WaitCursor

        Dim start As DateTime = DateTime.Now

        Dim inputSheet As CalcSheet = Me.calcWB("Inputs")

        Dim r As New Random()



        Me.calcWB.Engine.CalculatingSuspended = True



        Dim i As Integer = 0

        While i < num



            ' 1) Sets random values into the Inputs sheet.

            inputSheet(ageRow, 2) = (r.Next(74) + 15).ToString()

            If r.Next(2) = 1 Then

                inputSheet(sexRow, 2) = "M"

            Else

                inputSheet(sexRow, 2) = "F"

            End If

            inputSheet(stateRow, 2) = Me.comboBoxState.Items(r.Next(50))

            inputSheet(pointsRow, 2) = r.Next(15).ToString()

            inputSheet(modelRow, 2) = r.Next(11).ToString()

            inputSheet(modelYearRow, 2) = (33 + r.Next(1972)).ToString()

            If Me.checkBoxMultipleCars.Checked Then

                inputSheet(multipleDiscountRow, 2) = "Yes"

            Else

                inputSheet(multipleDiscountRow, 2) = "No"

            End If

            inputSheet(3, 5) = Me.textBoxBaseAmount.Text



           ' 2) Calculations are suspended so need to pull the computed value to make sure it has been calculated with the latest changes.

            Me.calcWB.Engine.UpdateCalcID()

            calcWB.Engine.PullUpdatedValue(Me.calcWB.GetSheetID("Outputs"), 1, 1)



            ' 3) Gets the value from cell 1,1 on the output sheet.

            Dim d As Double

            If Double.TryParse(calcWB("Outputs")(1, 1).ToString(), NumberStyles.Any, Nothing, d) Then

                Me.labelPrice.Text = String.Format("{0:C2}", d)

            Else

                Me.labelPrice.Text = "---"

            End If



            ' Allows the label to update.

            Me.labelPrice.Refresh()

        End While

        Me.calcWB.Engine.CalculatingSuspended = False

        Me.Cursor = Cursors.Default

        Me.labelPrice.Text = String.Format("{0} updates in {1} seconds", num, CType(DateTime.Now - start, TimeSpan))



' Button2_Click

End Sub 

{% endhighlight %}

The following is an explanation of the preceding code.

1. Setting random values into the Inputs sheet using the proper row and column indexers.
2. Calling UpdateCalcID and PullUpdatedValue guarantees that the value in the Outputs sheet at cell (1,1) reflects the current values in the workbook.
3. Here, you retrieve the value on the Output sheet at cell (1,1).