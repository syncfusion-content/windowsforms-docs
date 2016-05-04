---
layout: post
title: How-to-display-full-screen-MetroForm-like-the-Windows-App | WindowsForms | Syncfusion
description: how to display full screen metroform like the windows app
platform: WindowsForms
control: MetroForm
documentation: ug
---

How to display full screen MetroForm like the Windows App?

MetroForm bounds have been handled in the NativeMethods class by excluding the system taskbar bounds. So, it is possible to override the NativeMethods class functionality and the MetroForm bounds can be set to full screen by overriding this class. 

{% tabs %}

{% highlight C# %}

using System.Runtime.InteropServices;
using Syncfusion.Windows.Forms;

//Sets the Form border style.
this.FormBorderStyle = FormBorderStyle.None;

//Gets the FullScreen.
WinApi.SetWinFullScreen(this.Handle);
public class WinApi
{
    [DllImport("user32.dll", EntryPoint = "GetSystemMetrics")]
    public static extern int GetSystemMetrics(int which);
    [DllImport("user32.dll")]
    public static extern void SetWindowPos(IntPtr hwnd, IntPtr hwndInsertAfter, int X, int Y, int width, int height, uint flags);
    private const int SM_CXSCREEN = 0;
    private const int SM_CYSCREEN = 1;
    private static IntPtr HWND_TOP = IntPtr.Zero;
    private const int SWP_SHOWWINDOW = 64; // 0�0040
    public static int ScreenX
    {
        get { return GetSystemMetrics(SM_CXSCREEN); }
    }
    public static int ScreenY
    {
        get { return GetSystemMetrics(SM_CYSCREEN); }
    }
    public static void SetWinFullScreen(IntPtr hwnd)
    {
        SetWindowPos(hwnd, HWND_TOP, 0, 0, ScreenX, ScreenY, SWP_SHOWWINDOW);
    }
}

{% endhighlight %}

{% highlight VB %}

Imports System.Runtime.InteropServices
Imports Syncfusion.Windows.Forms

'Sets the Form border style.
Me.FormBorderStyle = FormBorderStyle.None

'Gets the FullScreen.
WinApi.SetWinFullScreen(Me.Handle)
Public Class WinApi
      <DllImport("user32.dll", EntryPoint := "GetSystemMetrics")> _
      Public Shared Function GetSystemMetrics(ByVal which As Integer) As Integer
      End Function
      <DllImport("user32.dll")> _
      Public Shared Sub SetWindowPos(ByVal hwnd As IntPtr, ByVal hwndInsertAfter As IntPtr, ByVal X As Integer, ByVal Y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal flags As UInteger)
      End Sub
      Private Const SM_CXSCREEN As Integer = 0
      Private Const SM_CYSCREEN As Integer = 1
      Private Shared HWND_TOP As IntPtr = IntPtr.Zero
      Private Const SWP_SHOWWINDOW As Integer = 64 ' 0�0040
      Public Shared ReadOnly Property ScreenX() As Integer
              Get
                     Return GetSystemMetrics(SM_CXSCREEN)
              End Get
      End Property
      Public Shared ReadOnly Property ScreenY() As Integer
              Get
                     Return GetSystemMetrics(SM_CYSCREEN)
              End Get
      End Property
      Public Shared Sub SetWinFullScreen(ByVal hwnd As IntPtr)
                      SetWindowPos(hwnd, HWND_TOP, 0, 0, ScreenX, ScreenY, SWP_SHOWWINDOW)
      End Sub
End Class
 
{% endhighlight %}

{% endtabs %}





 
