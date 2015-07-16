---
layout: post
title: Getting-Started
description: getting started
platform: WindowsForms
control: QTP
documentation: ug
---

# Getting Started

Essential QuickTest Professional lets you test applications with different Syncfusion controls, and allows playback of scripts. The following is a list of chapters containing information on the functionality of this software.

## Creating and Recording a Test

To create a new test:



1. Open QTP by double-clicking the QuickTest Professional icon.



> { ![](Getting-Started_images/Getting-Started_img1.jpeg) | markdownify }
{:.image }
_Note: The QuickTest Professional – Add-in Manager window is displayed._ 



2. Select the .NET check box under the Add-in header. This ensures that .NET add-in is installed. 



{ ![](Getting-Started_images/Getting-Started_img2.png) | markdownify }
{:.image }




_Figure_ _9__: QuickTest Professional - Add-In Manager_



3. Click OK.



> { ![](Getting-Started_images/Getting-Started_img3.jpeg) | markdownify }
{:.image }
_Note:The QuickTest Professional – [Start Page] window is displayed. There are two tabs, Start Page and Test, in the main pane of the window. The content under the Start Page tab is displayed by default._

{ ![](Getting-Started_images/Getting-Started_img4.png) | markdownify }
{:.image }




_Figure_ _10__: QuickTest Professional – [Start Page]_



4. Click the New Test icon on the Start Page.



{ ![](Getting-Started_images/Getting-Started_img5.png) | markdownify }
{:.image }




_Figure_ _11__: QuickTest Professional – [Start Page] showing New Test icon_



This creates a new test. Alternatively, you can click the Test tab in the main pane of the window or Test sub-menu under the New menu in the Menu bar.



5. Click Record in the toolbar to start the recording. 



{ ![](Getting-Started_images/Getting-Started_img6.png) | markdownify }
{:.image }




_Figure_ _12__: QuickTest Professional – [Test*] Window showing Record tool_



> { ![](Getting-Started_images/Getting-Started_img7.jpeg) | markdownify }
{:.image }
_Note: A Record and Run Settings dialog box is displayed._

{ ![](Getting-Started_images/Getting-Started_img8.png) | markdownify }
{:.image }




_Figure_ _13__: Record and Run Settings-Web tab_



6. Click the Windows Applications tab. 



> { ![](Getting-Started_images/Getting-Started_img9.jpeg) | markdownify }
{:.image }
_Note: The content under the tab is displayed._ 

{ ![](Getting-Started_images/Getting-Started_img10.png) | markdownify }
{:.image }




_Figure_ _14__: Record and Run Settings-Windows Applications_

> { ![](Getting-Started_images/Getting-Started_img11.jpeg) | markdownify }
{:.image }
_Note: The Record and run only on option button is selected by default, and the check boxes selected under it ensure that only the applications opened by QuickTest and added applications are tested._



7. To add an application for testing, click the + button in the Application details: frame as shown in the figure above.



> { ![](Getting-Started_images/Getting-Started_img12.jpeg) | markdownify }
{:.image }
_Note: The Application Details dialog box is displayed._ 

{ ![](Getting-Started_images/Getting-Started_img13.png) | markdownify }
{:.image }




_Figure_ _15__: Application Details_



8. Browse and select the path of the application that is to be tested by clicking ({ ![](Getting-Started_images/Getting-Started_img14.jpeg) | markdownify }
{:.image }
) for the Application: label.
9. Browse and select the path of the working folder by clicking ({ ![](Getting-Started_images/Getting-Started_img15.jpeg) | markdownify }
{:.image }
) for the Working folder: label.
> 
{ ![](Getting-Started_images/Getting-Started_img16.jpeg) | markdownify }
{:.image }
_Note: Selecting the Launch application check box launches the application immediately after clicking OK in the current dialog. The Include descendant processes check box includes all the processes that are descendant to the current process. Both these check boxes will be selected by default._



10. Click OK.



> { ![](Getting-Started_images/Getting-Started_img17.jpeg) | markdownify }
{:.image }
_Note: The path of the application and working folder are displayed in the Application details frame as shown below._

{ ![](Getting-Started_images/Getting-Started_img18.png) | markdownify }
{:.image }




_Figure_ _16__: Record and Run Settings with the Application Location_



11. Click OK. 



> { ![](Getting-Started_images/Getting-Started_img19.jpeg) | markdownify }
{:.image }
_Note: The recording starts. The application in the given path is opened as shown below._

> 

{ ![](Getting-Started_images/Getting-Started_img20.png) | markdownify }
{:.image }




_Figure_ _17__: Application using Grid Control_



12. Perform required valid user-action in the application. 



> { ![](Getting-Started_images/Getting-Started_img21.jpeg) | markdownify }
{:.image }
_Note: Whenever the user performs any action involving the Syncfusion control used in the application, the SwfConfig file maps the control to the corresponding DLL._

> _The DLL renders the correct method names of the Syncfusion namespace that will be called respective to the user-actions performed._ 

> _These method names are then recorded and displayed in the screen behind the running application, as shown below._



{ ![](Getting-Started_images/Getting-Started_img22.jpeg) | markdownify }
{:.image }




> { ![](Getting-Started_images/Getting-Started_img23.jpeg) | markdownify }
{:.image }
_Note:This is called high-level recording, as the events are recorded with the method names of the Syncfusion namespace after recognizing the Syncfusion control, unlike the low-level recording in which the Syncfusion controls are not recognized by QTP and the events are recorded with default method names as shown below._



{ ![](Getting-Started_images/Getting-Started_img24.jpeg) | markdownify }
{:.image }




_Figure_ _18__: Default recording without recognizing Syncfusion control_



> { ![](Getting-Started_images/Getting-Started_img25.jpeg) | markdownify }
{:.image }
_Note:The low-level recording is the default recording, which is done by QTP when the steps mentioned in the Configuring Essential QuickTest Professional section are not followed. The recording can be stopped by clicking the Stop button in the toolbar._



The process of creating and recording the test is completed.

## Running a Test

On recording, all the user actions performed in the control are just noted with the corresponding method names of the Syncfusion namespace. The errors can be checked while running a test. To run a test, follow the steps below: 



1. Click Run in the toolbar.
> 
{ ![](Getting-Started_images/Getting-Started_img26.jpeg) | markdownify }
{:.image }
_Note: The Run dialog box is displayed. The Results Location tab is highlighted by default._

{ ![](Getting-Started_images/Getting-Started_img27.jpeg) | markdownify }
{:.image }




_Figure_ _19__: Run Dialog_



In the Results Location tab, two options are provided:

* New run results folder: Allows the results of the test to be written to the location mentioned in the text box below it.
* Temporary run results folder (overwrites any existing temporary results) - Allows the results to be stored in the temporary location.



2. Click the required option.
> 
{ ![](Getting-Started_images/Getting-Started_img28.jpeg) | markdownify }
{:.image }
_Note: Selecting one option renders the other unavailable._



3. Browse and select the required location by clicking the &lt;icon&gt;
> 
{ ![](Getting-Started_images/Getting-Started_img29.jpeg) | markdownify }
{:.image }
_Note: QTP starts the running process; the application containing the recorded Syncfusion control is opened and it shows all the recorded events in a continuous flow one by one. After it finishes running the test, it displays the Test [Result_Written_Location] - Test Results dialog box, in which the results are summarized as shown below:_

{ ![](Getting-Started_images/Getting-Started_img30.png) | markdownify }
{:.image }




_Figure_ _20__: Test Results_



The process of running the test is completed.



{ ![](Getting-Started_images/Getting-Started_img31.jpeg) | markdownify }
{:.image }
 To know more about running scripts, refer to the QTP help document. 

## Editing a Test

A test can be edited in either the Keyword view or in the Expert view. You can switch between these views by selecting the required tab at the bottom left of the QuickTest Professional test screen. 



Editing in Expert View



This view is specially provided for the experts in VB script. In the Expert view, the VB scripts are generated while recording. You can also manually write scripts to the existing scripts in this view. So, this view can be used as a tool for managing the testing process in a more controlled manner. You can add scripts to trigger events manually. 



The following image shows adding a script line to the Expert View pane.



{ ![](Getting-Started_images/Getting-Started_img32.png) | markdownify }
{:.image }




_Figure_ _21__: Editing in Expert view_



You can run the edited test to check whether the newly added or changed scripts affect the running process by showing the changes in the running application.



> { ![](Getting-Started_images/Getting-Started_img33.jpeg) | markdownify }
{:.image }
_Note: Sometimes, the newly added or changed script may have an error causing the whole application to fail. In such a case, the Test Results dialog will show the failure as shown below:_

{ ![](Getting-Started_images/Getting-Started_img34.jpeg) | markdownify }
{:.image }


_Figure_ _22__: Test Results when Testing Fails_



For more details on running the test, refer to the previous section.



Editing in Keyword View



The keyword view is meant for persons who are not experts in VB scripts. Keyword view contains the controls used, the user-actions or operations performed, values involved in the operation, and the documentation summary in a table format. The controls used are listed under the Item header in a tree-view format as shown below.

{ ![](Getting-Started_images/Getting-Started_img35.jpeg) | markdownify }
{:.image }




_Figure_ _23__: Keyword View_



To edit the test in Keyword view, you can perform any of the following actions:



1. You can right-click any of the items listed under the Item header and choose one of the options available in the displayed menu as shown below.



{ ![](Getting-Started_images/Getting-Started_img36.jpeg) | markdownify }
{:.image }




_Figure_ _24__: Editing in Keyword View – Right-click_



For example, clicking Cut in the menu will cause the row representing a user-action to be cut. You can then right-click on any other item and click Paste on the menu displayed. This causes the row to be pasted before the right-clicked item.



> { ![](Getting-Started_images/Getting-Started_img37.jpeg) | markdownify }
{:.image }
_Note: All the items under the Item header are represented as a drop-down list._

{ ![](Getting-Started_images/Getting-Started_img38.jpeg) | markdownify }
{:.image }




_Figure_ _25__: Editing on Keyword View – Drop-down_



You can then run the edited test.



{ ![](Getting-Started_images/Getting-Started_img39.jpeg) | markdownify }
{:.image }
 For more details on running the edited test, refer to Editing on Expert View topic.

## Saving a Test

Saving a test is like saving any other document or picture. To save a test, follow the steps below:



1. Click the Save button in the toolbar. The Save Test dialog box is displayed.

{ ![](Getting-Started_images/Getting-Started_img40.png) | markdownify }
{:.image }




_Figure_ _26__: Save Test Dialog_



2. Select the location to save the file from the Save in: drop-down list.
3. Type the file name of the file to be saved in the text box adjacent to the File name label. 
4. Click Save.



The test is saved.

## Running the Saved Test

The tests that have been saved can be replayed later. To run a saved test, follow the steps below:



1. Click Open on the toolbar.
> 
{ ![](Getting-Started_images/Getting-Started_img41.jpeg) | markdownify }
{:.image }
_Note: The Open Test dialog box is displayed with a list of saved tests._

{ ![](Getting-Started_images/Getting-Started_img42.png) | markdownify }
{:.image }


_Figure_ _27__: Open Test Dialog_



2. Select the required test and click Open.



> { ![](Getting-Started_images/Getting-Started_img43.jpeg) | markdownify }
{:.image }
_Note: The saved test is opened with its name and the complete path as the name of the window. By default, Expert View of the Test is opened._



The following image shows the mouse pointer pointing towards the path and file displayed as the window name.



{ ![](Getting-Started_images/Getting-Started_img44.png) | markdownify }
{:.image }


_Figure_ _28__: Test Opened_



3. Click Run on the toolbar to run the test.



{ ![](Getting-Started_images/Getting-Started_img45.jpeg) | markdownify }
{:.image }
 For more details on running the test, refer to the Running a Test topic in this document.



The process of running a saved test is complete.

