$CIM_WinSAT = Get-CimInstance -ClassName Win32_WinSAT -ComputerName $env:COMPUTERNAME

$Average_WinSAT = ($CIM_WinSAT.PSObject.Properties.Where({$_ -match 'score'}).Value |
    Measure-Object -Average).Average

$WinSAT_Info = [PSCustomObject]@{
    ComputerName = $CIM_WinSAT.PSComputerName
    Perf_WinExp_Average = '{0:N2}' -f $Average_WinSAT
    Perf_WinExp_All = $CIM_WinSAT.WinSPRLevel
    Perf_WinExp_CPU = $CIM_WinSAT.CPUScore
    Perf_WinExp_RAM = $CIM_WinSAT.MemoryScore
    Perf_WinExp_Disk = $CIM_WinSAT.DiskScore
    Perf_WinExp_Vid = $CIM_WinSAT.GraphicsScore
    Perf_WinExp_Vid_D3D = $CIM_WinSAT.D3DScore
    }

$WinSAT_Info
