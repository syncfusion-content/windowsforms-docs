## Through C# / VB

The following steps help you add a required Essential WF Control, for example: DockingManager, through C# or VB Code.

1. Create a WF project in Visual Studio and refer the following assemblies.

 * Syncfusion.Tools.Windows
 * Syncfusion.Shared.Base

2. Add the following namespace.

<table>
<tr>
<td>
**[**C**#]**<br/><br/><br/><br/>using Syncfusion.Windows.Forms.Tools;<br/><br/><br/><br/>using Syncfusion.Windows.Forms;<br/><br/></td></tr>
</table>


<table>
<tr>
<td>
**[**VB**]**<br/><br/><br/><br/>Imports Syncfusion.Windows.Forms.Tools<br/><br/><br/><br/>Imports Syncfusion.Windows.Forms<br/><br/></td></tr>
</table>

3. Create an instance of Docking Manager.


<table>
<tr>
<td>
**[**C**#]**<br/><br/>private Syncfusion.Windows.Forms.Tools.DockingManager DockingManager = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components);<br/><br/></td></tr>
</table>


<table>
<tr>
<td>
**[**VB**]**<br/><br/>private Syncfusion.Windows.Forms.Tools.DockingManager DockingManager = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components)<br/><br/></td></tr>
</table>


