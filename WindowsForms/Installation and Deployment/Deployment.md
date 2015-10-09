# Deployment

### X-Copy

X-copy can supported by the Syncfusion assembly reference in the Solution Explorer, It can be achieved by setting it’s the Copy Local property of the reference to True. So that Syncfusion assemblies will be copied to the Release/Bin, Debug/Bin folders. And this deployment consists of copying the exe, dlls, xmls files to the client machines that similar to manual copy.

![](Deployment_images/Deployment_img1.jpeg)


### GAC

Through Syncfusion installer, Syncfusion assemblies are installed in the GAC of the the developer machines. Also Syncfusion [Assembly Manager](../AppData/Local/Microsoft/Windows/INetCache/Content.Outlook/Selvaganapathy/Desktop/assembly manager# "") will help to Add/ Remove the Syncfusion assemblies to/from GAC.

## Installed Location

The following Table represent Assemblies/ Samples and its installed location

<table>
<tr>
<td>
**Assemblies****/** **Samples******<br/><br/></td><td>
installed location****<br/><br/></td></tr>
<tr>
<td>
GAC<br/><br/></td><td>
C:\Windows\Microsoft.NET\assembly\GAC_MSIL<br/><br/></td></tr>
<tr>
<td>
Assemblies<br/><br/></td><td>
C:\Program Files (x86)\Syncfusion\Essential Studio\13.2.0.29\Assemblies<br/><br/></td></tr>
<tr>
<td>
Precompiled Assemblies<br/><br/></td><td>
C:\Program Files (x86)\Syncfusion\Essential Studio\[Installed Version]\precompiledassemblies\[Installed Version]<br/><br/></td></tr>
<tr>
<td>
Samples<br/><br/></td><td>
{{'__[__'| markdownify }}Installed Drive]:\Users[user name]\AppData\Local\Syncfusion\EssentialStudio\[Installed Version]\WF\samples<br/><br/></td></tr>
</table>
