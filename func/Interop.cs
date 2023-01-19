using System.Runtime.InteropServices;

namespace Interop;

public class Interop
{
    [DllImport("/workspaces/fortran-from-csharp/fortran/demo.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl, EntryPoint = "Add_One")]
    public static extern int Add_One([In] int n);
}