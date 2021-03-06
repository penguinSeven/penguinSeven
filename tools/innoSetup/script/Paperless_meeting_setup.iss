; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Paperless_meeting"
#define MyAppVersion "1.0.9.161014"
#define MyAppPublisher "ITC"
#define MyAppURL ""
#define MyAppExeName "paperless_meeting_terminal.exe"
#define IsExternal ""
#define IncludeFramework true

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FF079058-DFA4-446F-8DA9-0B408642F650}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} ({#MyAppVersion})
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\ITC\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=E:\安装包
OutputBaseFilename=Paperless_meeting
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\paperless_meeting_terminal.exe

[Languages]
Name: "china"; MessagesFile: "compiler:Languages\china.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "E:\无纸化会议客户端\paperless_meeting_terminal.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\无纸化会议客户端\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\无纸化会议客户端\ext\psvince.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

#if IncludeFramework
Source: "E:\无纸化会议客户端\ext\dotNetFx40_Full_x86_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion {#IsExternal}; Check: NeedsFramework
#endif

Source: "E:\无纸化会议客户端\font\fzybxs.ttf"; DestDir: "{fonts}"; FontInstall: "方正硬笔行书简体"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\fzyt.ttf"; DestDir: "{fonts}"; FontInstall: "方正姚体"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\simfang.ttf"; DestDir: "{fonts}"; FontInstall: "仿宋"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\simkai.ttf"; DestDir: "{fonts}"; FontInstall: "楷体"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\simli.ttf"; DestDir: "{fonts}"; FontInstall: "隶书"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\hwcy.ttf"; DestDir: "{fonts}"; FontInstall: "华文彩云"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\stfangso.ttf"; DestDir: "{fonts}"; FontInstall: "华文仿宋"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\stxingka.ttf"; DestDir: "{fonts}"; FontInstall: "华文行楷"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\fzweibei.ttf"; DestDir: "{fonts}"; FontInstall: "方正魏碑"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\stkaiti.ttf"; DestDir: "{fonts}"; FontInstall: "华文楷体"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "E:\无纸化会议客户端\font\stliti.ttf"; DestDir: "{fonts}"; FontInstall: "华文隶书"; Flags: onlyifdoesntexist uninsneveruninstall

; Source: "C:\Users\ghost\AppData\Roaming\ITC\Config.xml"; DestDir: "{userappdata}\ITC\"; Flags: ignoreversion 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Languages: china
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"

[Run]
#if IncludeFramework
Filename: {tmp}\dotNetFx40_Full_x86_x64.exe; Parameters: "/q:a /c:""install /l /q"""; WorkingDir: {tmp}; Flags: skipifdoesntexist; StatusMsg: "Installing .NET Framework if needed"
#endif
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry] 
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "paperless_client"; ValueData: "{app}\{#MyAppExeName}" 

[UninstallRun]
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}"""; Flags: hidewizard runhidden

[UninstallDelete]
Name: {app}; Type: filesandordirs

[code]

// Indicates whether .NET Framework 2.0 is installed.
function IsDotNET40Detected(): boolean;
var
    success: boolean;
    install: cardinal;
begin
    success := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full', 'Install', install);
    //success := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5', 'Install', install);
     //success := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v2.0.50727', 'Install', install);
    Result :=  success and (install = 1);
end;

//RETURNS OPPOSITE OF IsDotNet20Detected FUNCTION
//Remember this method from the Files section above
function NeedsFramework(): Boolean;
begin
  Result := (IsDotNET40Detected = false);
end;

function GetCustomSetupExitCode(): Integer;
begin
  if (IsDotNET40Detected = false) then
    begin
      MsgBox('.NET Framework 未能正确安装!',mbError, MB_OK);
      result := -1
    end
end;

function IsModuleLoaded(modulename: AnsiString ):  Boolean;
external 'IsModuleLoaded@files:psvince.dll stdcall';

var
Page: TWizardPage;
RadioButton1, RadioButton2: TRadioButton;
Lbl1, Lbl2: TNewStaticText;
TaskCode: Boolean;

// PSVince控件在64位系统（Windows 7/Server 2008/Server 2012）下无法检测到进程，使用下面的函数可以解决。
function IsAppRunning(const FileName : string): Boolean;
var
    FSWbemLocator: Variant;
    FWMIService   : Variant;
    FWbemObjectSet: Variant;
begin
    Result := false;
    try
      FSWbemLocator := CreateOleObject('WBEMScripting.SWBEMLocator');
      FWMIService := FSWbemLocator.ConnectServer('', 'root\CIMV2', '', '');
      FWbemObjectSet := FWMIService.ExecQuery(Format('SELECT Name FROM Win32_Process Where Name="%s"',[FileName]));
      Result := (FWbemObjectSet.Count > 0);
      FWbemObjectSet := Unassigned;
      FWMIService := Unassigned;
      FSWbemLocator := Unassigned;
    except
      if (IsModuleLoaded(FileName)) then
        begin
          Result := false;
        end
      else
        begin
          Result := true;
        end
      end;
end;

  // 关闭进程
function TaskKillProcessByName(const FileName : string): Boolean;
  var
  ResultCode: Integer;
begin
    Exec(ExpandConstant('taskkill.exe'), '/f /im ' + '"' + FileName + '"', '', SW_HIDE,
     ewWaitUntilTerminated, ResultCode);
end;


//事件函数，卸载，与安装类似
function InitializeUninstall(): Boolean;
  begin
    Result:= true;
    if  IsAppRunning('{#MyAppExeName}') then
    begin
      if MsgBox('卸载程序检测到 {#MyAppName} 正在运行！'#13''#13'单击“是”按钮关闭程序并继续卸载；'#13''#13'单击“否”按钮退出卸载！', mbConfirmation, MB_YESNO) = IDYES then
      begin
        TaskKillProcessByName('{#MyAppExeName}');
        
        Result:= true;
      end
      else
        Result:= false;
    end;
  end;

