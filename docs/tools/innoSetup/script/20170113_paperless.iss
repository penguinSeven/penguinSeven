; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "paperlessCms"
#define MyAppVersion "v1.017"
#define MyAppPublisher "ITC"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "paperless.exe"
#define MyAppFlag "flag"
#define CuDefaultIp "192.168.1.130"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C892CF97-477A-48FD-9168-437585227F52}
AppName={cm:MyAppName}
AppVersion={#MyAppVersion}
AppVerName={cm:MyAppName} ({#MyAppVersion})
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\paperless
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=E:\upupw\doc\readme_chs.txt
OutputDir=E:\安装包
OutputBaseFilename=Paperless_Meeting_web_zh_en ({#MyAppVersion})
Compression=lzma
SolidCompression=yes
ChangesEnvironment=true
Password=itcadmin
PrivilegesRequired=admin
;AlwaysRestart=true

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl" ; LicenSeFile :"E:\upupw\doc\readme_en.txt"
Name: "chs"; MessagesFile: "compiler:Languages\china.isl"; LicenSeFile :"E:\upupw\doc\readme_chs.txt"

[Messages]
en.BeveledLabel=English
chs.BeveledLabel=Chineses


[CustomMessages]
en.MyAppName          = Intelligent paperless conference management server
en.Uninstall          = Uninstall
en.StartMessage       = Setup has detected that "{#MyAppName}" is running!
en.StartMessageYes    = Click the "yes" button to close the program and continue to install;
en.StartMessageNo     = Click the "no" button to exit the installation!
en.EndMessage         = Uninstall the program to detect the "{#MyAppName}" is running!
en.EndMessageYes      = click the "yes" button to close the program and continue to uninstall;
en.EndMessageNo       = click the "no" button  to exit the uninstall!
en.ChoseTitle         = Select installation type
en.ChoseTips          = Please select the type of installation according to your needs.
en.ChoseStandard      = Standard installation
en.ChoseUpdate        = Update
en.ChoseStandardTips  = Install the software in accordance with the standard mode to your computer, the database, the registration information will be updated to cover.
en.ChoseUpdateTips    = Database and registration information is not covered
en.CuEditIpTitle      = edit Ip page
en.CuEditIpContent    = Enter the machine IP address , the default ({#CuDefaultIp})
en.CuReadXmlError     = The XML file could not be parsed.


chs.MyAppName         = 智能无纸化会议管理服务器
chs.Uninstall         = 卸载
chs.StartMessage      = 安装程序检测到 "{#MyAppName}" 正在运行！
chs.StartMessageYes   = 单击“是”按钮关闭程序并继续安装；
chs.StartMessageNo    = 单击“否”按钮退出安装！
chs.EndMessage        = 卸载程序检测到 "{#MyAppName}" 正在运行！
chs.EndMessageYes     = 单击“是”按钮关闭程序并继续卸载；
chs.EndMessageNo      = 单击“否”按钮退出卸载！
chs.ChoseTitle        = 选择安装类型
chs.ChoseTips         = 请根据您的需要选择安装的类型
chs.ChoseStandard     = 标准安装
chs.ChoseUpdate       = 更新
chs.ChoseStandardTips = 按照标准模式安装软件到您的电脑，数据库,注册信息将更新覆盖。
chs.ChoseUpdateTips   = 数据库和注册信息不覆盖
chs.CuEditIpTitle     = 编辑ip界面
chs.CuEditIpContent   = 输入本机ip地址 , 默认（{#CuDefaultIp}）
chs.CuReadXmlError    = 无法解析XML文件

[ini]
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Flags:  uninsdeleteentry;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "default_language"; String: "english"  ; Languages: en ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "default_language"; String: "chinese"  ; Languages: chs ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "default_logger_path"; String: "{app}\htdocs\paperless\webapp\Temporary\Logger\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "upload_file_public"; String: "{app}\htdocs\paperless\webserver\public\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "upload_img_path"; String: "{app}\htdocs\paperless\webserver\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "upload_tmp_path"; String: "{app}\htdocs\paperless\webserver\ftp\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "upload_video_path"; String: "{app}\nginxRtmp\video\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "save_tmp_file"; String: "{app}\htdocs\paperless\webserver\ftp\tmp_file\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "default_logger_path"; String: "{app}\log\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "save_log_file"; String: "{app}\log\"  ;
Filename: "{app}\htdocs\paperless\webapp\Library\config.ini"; Section: "OTHER"; Key: "nginx_rtmp_pid"; String: "{app}\nginxRtmp\logs\nginx.pid"  ;

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone


[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"

[Files]
; dontcopy
Source: "E:\upupw\psvince.dll"; Flags: dontcopy
Source: "E:\upupw\doc\*"; Flags: dontcopy

; 运行环境
Source: "E:\upupw\phantomjs\*"; DestDir: "{app}\phantomjs\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\notepad\*"; DestDir: "{app}\notepad\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Apache2\*"; DestDir: "{app}\Apache2\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Backup\*"; DestDir: "{app}\Backup\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\FileZillaftp\*"; DestDir: "{app}\FileZillaftp\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Guard\*"; DestDir: "{app}\Guard\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\PHP7\*"; DestDir: "{app}\PHP7\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\upcore\*"; DestDir: "{app}\upcore\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\xdebug\*"; DestDir: "{app}\xdebug\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\MP4Box\*"; DestDir: "{app}\MP4Box\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\paperless\ServerDaemon\*"; DestDir: "{app}\paperless\ServerDaemon\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\phpmyadmin\*"; DestDir: "{app}\phpmyadmin\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\temp\*"; DestDir: "{app}\temp\"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "E:\upupw\red5-server\*"; DestDir: "{app}\red5-server\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\nginxRtmp\*"; DestDir: "{app}\nginxRtmp\"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "E:\upupw\jdk\*"; DestDir: "{app}\jdk\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\log\*"; DestDir: "{app}\log\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\LibreOffice5\*"; DestDir: "{app}\LibreOffice5\"; Flags: ignoreversion recursesubdirs createallsubdirs

;redis 文件夹
Source: "E:\upupw\Redis\redis-service.conf"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Redis\redis-server.exe"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Redis\redis-cli.exe"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Redis\redis-check-dump.exe"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Redis\redis-check-aof.exe"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Redis\redis-benchmark.exe"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\Redis\EventLog.dll"; DestDir: "{app}\Redis\"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "E:\upupw\htdocs\paperless\webapp\Application\*"; DestDir: "{app}\htdocs\paperless\webapp\Application\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Library\*"; DestDir: "{app}\htdocs\paperless\webapp\Library\"; Flags: ignoreversion recursesubdirs createallsubdirs

; Resource 资源文件夹
Source: "E:\upupw\htdocs\paperless\webapp\Resource\_\*"; DestDir: "{app}\htdocs\paperless\webapp\Resource\_\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\font\*"; DestDir: "{app}\htdocs\paperless\webapp\Resource\font\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\image\*"; DestDir: "{app}\htdocs\paperless\webapp\Resource\image\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\js\*"; DestDir: "{app}\htdocs\paperless\webapp\Resource\js\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\sql\*"; DestDir: "{app}\htdocs\paperless\webapp\Resource\sql\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\template\*"; DestDir: "{app}\htdocs\paperless\webapp\Resource\template\"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "E:\upupw\htdocs\paperless\webapp\Resource\.htaccess"; DestDir: "{app}\htdocs\paperless\webapp\Resource\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\favicon.ico"; DestDir: "{app}\htdocs\paperless\webapp\Resource\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\upupw\htdocs\paperless\webapp\Resource\index.php"; DestDir: "{app}\htdocs\paperless\webapp\Resource\"; Flags: ignoreversion recursesubdirs createallsubdirs

; C++ 后台服务器，文件服务器
Source: "E:\upupw\paperless\FileServer\FileServer.exe"; DestDir: "{app}\paperless\FileServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\FileServer\Net.dll"; DestDir: "{app}\paperless\FileServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\avcodec-55.dll"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\avformat-55.dll"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\Microsoft.VC90.MFC.manifest"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\avutil-52.dll"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\mfc90.dll"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\PaperlessServer.exe"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;
Source: "E:\upupw\paperless\paperlessServer\ffmpeg.exe"; DestDir: "{app}\paperless\paperlessServer\"; Flags: ignoreversion;

; 安装复制，更新忽略
Source: "E:\upupw\MariaDB\*"; DestDir: "{app}\MariaDB\";Flags: ignoreversion recursesubdirs createallsubdirs; Check: MyProgCheck;
Source: "E:\upupw\nginxRtmp\video\*"; DestDir: "{app}\nginxRtmp\video\";Flags: ignoreversion recursesubdirs createallsubdirs; Check: MyProgCheck;
Source: "E:\upupw\paperless\FileServer\etc\config.xml"; DestDir: "{app}\paperless\FileServer\etc\"; Flags: ignoreversion; Check: MyProgCheck ;
Source: "E:\upupw\paperless\paperlessServer\etc\config.xml"; DestDir: "{app}\paperless\paperlessServer\etc\"; Flags: ignoreversion; Check: MyProgCheck;
Source: "E:\upupw\htdocs\paperless\webapp\Resource\key.token"; DestDir: "{app}\htdocs\paperless\webapp\Resource\"; Flags: ignoreversion ; Check: MyProgCheck;

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

; 基础文件
Source: "E:\upupw\htdocs\favicon.ico"; DestDir: "{app}\htdocs\"; Flags: ignoreversion;
Source: "E:\upupw\paperless.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\upupw\boot.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\upupw\uninstall.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\upupw\paperlessCms.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\upupw\updateSql.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\upupw\ffmpeg\bin\ffmpeg.exe"; DestDir: "{app}\ffmpeg\bin\"; Flags: ignoreversion
Source: "E:\upupw\LibreOffice5\program\soffice.exe"; DestDir: "{app}\LibreOffice5\program\"; Flags: ignoreversion
;Source: "E:\upupw\start.cmd"; DestDir: "{app}"; Flags: ignoreversion

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "paperless"; ValueData: "{app}\{#MyAppExeName}"; Flags: deletekey uninsdeletekey;
Root: HKCR; Subkey: "*\shell\Open with Notepad\command"; ValueType: string; ValueName: ""; ValueData: "{app}\notepad\notepad++.exe %1";   Flags: deletekey uninsdeletekey;
;Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "startServer"; ValueData: "{app}\start.cmd"
;Root: HKLM; Subkey: Software\The Application; ValueType: string; ValueName: "{#MyAppFlag}"; ValueData: '2.0'; Flags: uninsdeletekey


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent;
Filename: "{app}\boot.exe";
;Filename: "{app}\updateSql.exe"; Flags: nowait runhidden;
;Filename: "{app}\{#MyAppExeName}";  Flags: nowait ;
; Filename: "{app}\red5-server\install-service.exe"; Flags: runhidden ;

[UninstallRun]
;Filename: "{app}\uninstall.exe"; Flags: nowait runhidden
;Filename: "{app}\red5-server\red5-shutdown.bat"; Flags: nowait runhidden
;Filename: "{app}\red5-server\uninstall-service.bat"; Flags: nowait runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}"""; Flags: hidewizard runhidden

[UninstallDelete]
Name: {app}; Type: filesandordirs

[Code]
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
    Exec(ExpandConstant('taskkill.exe'), '/f /im ' + '"' + FileName + '"', ' >nul 2>nul', SW_HIDE,
     ewWaitUntilTerminated, ResultCode);
end;

  // 卸载serverDaemon服务
function TaskShutDownDaemon(): Boolean;
var
    ResultCode: Integer;
begin
     Exec(ExpandConstant('{app}\paperless\ServerDaemon\ServerDaemon.exe'), ' -d ', ' >nul 2>nul', SW_SHOW,
     ewWaitUntilTerminated, ResultCode)
end;

 // 停止服务
function TaskStopService(const FileName : string): Boolean;
var
    ResultCode: Integer;
begin
    Exec(ExpandConstant('net.exe'), ' stop ' + '"' + FileName + '"', ' >nul 2>nul', SW_HIDE,
     ewWaitUntilTerminated, ResultCode);
end;

// kill 服务进程
function TaskKillService(const FileName : string):Boolean;
var
    ResultCode : Integer;
begin
   {
      taskkill 参数：

      /fi   指定将要终止或不终止的过程的类型

      /f    指定将强制终止的过程。对于远程过程可忽略此参数，所有远程过程都将被强制终止

      /t    指定终止与父进程一起的所有子进程，常被认为是“树终止”。
   }
   Exec(ExpandConstant('taskkill.exe'), ' /fi ' + '" SERVICES eq' + FileName + '"', ' /f /t >nul 2>nul ', SW_HIDE,
     ewWaitUntilTerminated, ResultCode);

end;


 // 开启服务
function TaskStartService(const FileName : string): Boolean;
var
    ResultCode: Integer;
begin
    Exec(ExpandConstant('net.exe'), ' start ' + '"' + FileName + '"', ' >nul 2>nul ', SW_HIDE,
     ewWaitUntilTerminated, ResultCode);
end;

// 验证按钮
function MyProgCheck(): Boolean;
begin
  Result := RadioButton1.Checked;
end;

function MyProgCheck2(): Boolean;
begin
  Result := RadioButton2.Checked;
end;

// 执行程序
function TaskStartShell(FileName: String): Boolean;
  var
  ResultCode: Integer;
begin
    Exec(ExpandConstant(FileName), '', '', SW_HIDE,
     ewWaitUntilTerminated, ResultCode);
end;

// 设置环境变量函数
procedure SetEnv(aEnvName, aEnvValue: string; aIsInstall, aIsInsForAllUser: Boolean);
var
sOrgValue: string;
S1, sFileName: string;
bRetValue, bInsForAllUser: Boolean;
SL: TStringList;
x: integer;
begin
bInsForAllUser := aIsInsForAllUser;
if UsingWinNT then
begin
    if bInsForAllUser then
      bRetValue := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', aEnvName, sOrgValue)
    else
      bRetValue := RegQueryStringValue(HKEY_CURRENT_USER, 'Environment', aEnvName, sOrgValue);
      sOrgValue := Trim(sOrgValue);
    begin
      S1 := aEnvValue;
      if pos(Uppercase(s1), Uppercase(sOrgValue)) = 0 then //还没有加入
      begin
        if aIsInstall then
        begin
          x := Length(sOrgValue);
          if (x > 0) and (StringOfChar(sOrgValue[x], 1) <> ';') then
            sOrgValue := sOrgValue + ';';
          sOrgValue := sOrgValue + S1;
        end;
      end else
      begin
        if not aIsInstall then
        begin
          StringChangeEx(sOrgValue, S1 + ';', '', True);
          StringChangeEx(sOrgValue, S1, '', True);
        end;
      end;

      if bInsForAllUser then
        RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', aEnvName, sOrgValue)
      else
      begin
        if (not aIsInstall) and (Trim(sOrgValue) = '') then
          RegDeleteValue(HKEY_CURRENT_USER, 'Environment', aEnvName)
        else
          RegWriteStringValue(HKEY_CURRENT_USER, 'Environment', aEnvName, sOrgValue);
      end;
    end;
end else //非NT 系统,如Win98
begin
    SL := TStringList.Create;
    try
      sFileName := ExpandConstant('{sd}\autoexec.bat');
      LoadStringFromFile(sFileName, S1);
      SL.Text := s1;
      s1 :=   '"' + aEnvValue + '"';
      s1 := 'set '+aEnvName +'=%path%;' + s1 ;

      bRetValue := False;
      x := SL.IndexOf(s1);
      if x = -1 then
      begin
        if aIsInstall then
        begin
          SL.Add(s1);
          bRetValue := True;
        end;
      end else //还没添加
        if not aIsInstall then
        begin
          SL.Delete(x);
          bRetValue := True;
        end;

      if bRetValue then
        SL.SaveToFile(sFileName);
    finally
      SL.free;
    end;

  end;
end;

{====================================================================}

// 定义全局变量
var

  CustomEdit: TEdit;       //     自定义界面，变量类型为       TEdit

  CustomPageID: Integer;      // 自定义界面的pageID


 // 自定义函数，读取xml文件
function LoadValueFromXML(const AFileName, APath: string): string;

var

  XMLNode: Variant;

  XMLDocument: Variant;

begin

  Result := '';

  XMLDocument := CreateOleObject('Msxml2.DOMDocument.6.0');            // 创建xml 对象

  try

    XMLDocument.async := False;

    XMLDocument.load(AFileName);

    if (XMLDocument.parseError.errorCode <> 0) then

      MsgBox(ExpandConstant('{cm:CuReadXmlError}') +

        XMLDocument.parseError.reason, mbError, MB_OK)

    else

    begin

      XMLDocument.setProperty('SelectionLanguage', 'XPath');

      XMLNode := XMLDocument.selectSingleNode(APath);

      Result := XMLNode.text;

    end;

  except

    MsgBox('An error occured!' + #13#10 + GetExceptionMessage, mbError, MB_OK);

  end;

end;


// 自定义过程，修改xml值，并保存
procedure SaveValueToXML(const AFileName, APath, AValue: string);

var

  XMLNode: Variant;

  XMLDocument: Variant;

begin

  XMLDocument := CreateOleObject('Msxml2.DOMDocument.6.0');

  try

    XMLDocument.async := False;

    XMLDocument.load(AFileName);

    if (XMLDocument.parseError.errorCode <> 0) then

      MsgBox(ExpandConstant('{cm:CuReadXmlError}') +

        XMLDocument.parseError.reason, mbError, MB_OK)

    else

    begin

      XMLDocument.setProperty('SelectionLanguage', 'XPath');

      XMLNode := XMLDocument.selectSingleNode(APath);

      XMLNode.text := AValue;

      XMLDocument.save(AFileName);

    end;

  except

    MsgBox('An error occured!' + #13#10 + GetExceptionMessage, mbError, MB_OK);

  end;

end;


// 自定义过程， 创建 编辑 ip 界面      CuEditIpContent
procedure CreateIpOnpage;

var

  CustomPage: TWizardPage;

begin

  CustomPage := CreateCustomPage(wpWelcome, ExpandConstant('{cm:CuEditIpTitle}'), ExpandConstant('{cm:CuEditIpContent}'));

  CustomPageID := CustomPage.ID;

  CustomEdit := TEdit.Create(WizardForm);

  CustomEdit.Left := ScaleX(55);
  CustomEdit.Top := ScaleY(60);
  CustomEdit.Width := ScaleX(168);
  CustomEdit.Height := ScaleY(60);

  CustomEdit.Parent := CustomPage.Surface;

end;

{====================================================================}


//事件函数，安装，并在安装前检测程序是否在运行，如果运行先结束进程
function InitializeSetup(): Boolean;
begin
  Result := true;
  if  IsAppRunning('httpd.exe') then
  begin

      if MsgBox(ExpandConstant('{cm:StartMessage}') + #13#13 + ExpandConstant('{cm:StartMessageYes}')+ #13#13 + ExpandConstant('{cm:StartMessageNo}'), mbConfirmation, MB_YESNO) = IDYES then
      begin

        // 根据窗口名关闭
        TaskKillProcessByName('php.exe');
        TaskKillProcessByName('{#MyAppExeName}');

        // 停止服务
        TaskStopService('UPUPW_Apache');
        TaskStopService('upupw_redis_a');
        TaskStopService('ServerDaemon');
        TaskStopService('Nginx Rtmp Server');
        TaskStopService('FileZilla Server');
        TaskStopService('UPUPW_Database_A');


        // kill 服务 进程
        TaskKillService('UPUPW_Apache');
        TaskKillService('upupw_redis_a');
        TaskKillService('UPUPW_Database_A');
        TaskKillService('ServerDaemon');
        TaskKillService('Nginx Rtmp Server');
        TaskKillService('FileZilla Server');


        // 关闭进程
        TaskKillProcessByName('mysqld.exe');
        TaskKillProcessByName('paperlessCms.exe');
        TaskKillProcessByName('ffmpeg.exe');
        TaskKillProcessByName('soffice.exe');
        TaskKillProcessByName('phantomjs.exe');
        TaskKillProcessByName('paperlessServer.exe');
        TaskKillProcessByName('FileServer.exe');
        TaskKillProcessByName('httpd.exe');
        TaskKillProcessByName('redis-server.exe');
        TaskKillProcessByName('updaemon.exe');
        TaskKillProcessByName('nginx.exe');

        Result:= true;
      end
    else
      begin
        Result:= false;
      end;
  end;
end;

// 系统过程 供了安装过程中的状态
{
        ＊状态详情：

        ssinstall       =＞   准备复制文件
        ssPostinstall   =＞　 文件复制完成
        ssDone          =＞　 软件安装成功
}
procedure CurStepChanged(CurStep: TSetupStep);
begin
       if CurStep=ssinstall then
         begin
             // 将{app}路径添加到path环境变量中 在这儿调用,一定在这儿调用,安装完无须重启,立即生效
             SetEnv('path',ExpandConstant('{app}\LibreOffice5\program\'),true,true);
             SetEnv('path',ExpandConstant('{app}\ffmpeg\bin\'),true,true);
             SetEnv('path',ExpandConstant('{app}\phantomjs\'),true,true);
             SetEnv('path',ExpandConstant('{app}\MP4Box\'),true,true);

            if RadioButton2.Checked then
              begin
                TaskStartService('UPUPW_Database_A');
              end;
         end;

       if CurStep=ssPostinstall then
         begin
             SaveValueToXML( ExpandConstant('{app}\paperless\paperlessServer\etc\') + 'config.xml', '//ServerConf/CMSIP', CustomEdit.Text);
             SaveValueToXML( ExpandConstant('{app}\nginxRtmp\') + 'winsw.xml', '//service/executable', ExpandConstant('{app}') + '/nginxRtmp/nginx.exe');
             SaveValueToXML( ExpandConstant('{app}\nginxRtmp\') + 'winsw.xml', '//service/logpath', ExpandConstant('{app}') + '/nginxRtmp/logs/');
             SaveValueToXML( ExpandConstant('{app}\nginxRtmp\') + 'winsw.xml', '//service/startargument', '-p ' + ExpandConstant('{app}') + '/nginxRtmp');
             SaveValueToXML( ExpandConstant('{app}\nginxRtmp\') + 'winsw.xml', '//service/stopargument', '-p ' + ExpandConstant('{app}') + '/nginxRtmp -s stop');
         end;

       if CurStep=ssDone then
         begin

         end;

end;

//事件函数，卸载，与安装类似
function InitializeUninstall(): Boolean;
  var
        ResultCode: Integer;
  begin
    Result:= true;
    if  IsAppRunning('httpd.exe') OR IsAppRunning('mysqld.exe') OR IsAppRunning('redis-server.exe') OR IsAppRunning('php.exe') OR IsAppRunning('soffice.exe') OR IsAppRunning('ffmpeg.exe') then
    begin
      if MsgBox(ExpandConstant('{cm:EndMessage}')+ #13#13 + ExpandConstant('{cm:EndMessageYes}')+ #13#13 + ExpandConstant('{cm:EndMessageNo}'), mbConfirmation, MB_YESNO) = IDYES then
      begin

        Exec(ExpandConstant('{app}\uninstall.exe'), '', '', SW_SHOW,ewWaitUntilTerminated, ResultCode);

        TaskKillProcessByName('{#MyAppExeName}');
        TaskKillProcessByName('soffice.exe');
        TaskKillProcessByName('phantomjs.exe');
        TaskKillProcessByName('ffmpeg.exe');
        TaskKillProcessByName('paperless.exe');

        Result:= true;
      end
      else
        Result:= false;
    end;
  end;

// 定义安装类型选择界面
procedure CreateAddonPage;
begin
  Page := CreateCustomPage(wpInfoBefore, ExpandConstant('{cm:ChoseTitle}'), ExpandConstant('{cm:ChoseTips}'));

  RadioButton1 := TRadioButton.Create(Page);
  RadioButton1.Left := ScaleX(45);
  RadioButton1.Top := ScaleY(40);
  RadioButton1.Width := Page.SurfaceWidth;
  RadioButton1.Height := ScaleY(17);
  RadioButton1.Caption := ExpandConstant('{cm:ChoseStandard}');
  RadioButton1.Checked := True;
  RadioButton1.Parent := Page.Surface;

  Lbl1 := TNewStaticText.Create(Page);
  Lbl1.Left := ScaleX(55);
  Lbl1.Top := ScaleY(60);
  Lbl1.Width := ScaleX(250);
  Lbl1.Height := ScaleY(50);
  Lbl1.Caption := ExpandConstant('{cm:ChoseStandardTips}');
  Lbl1.Parent := Page.Surface;

  RadioButton2 := TRadioButton.Create(Page);
  RadioButton2.Left := ScaleX(45);
  RadioButton2.Top := RadioButton1.Top + ScaleY(60);
  RadioButton2.Width := Page.SurfaceWidth;
  RadioButton2.Height := ScaleY(17);
  RadioButton2.Caption := ExpandConstant('{cm:ChoseUpdate}');
  RadioButton2.Checked := false;
  RadioButton2.Parent := Page.Surface;

  Lbl2 := TNewStaticText.Create(Page);
  Lbl2.Left := ScaleX(55);
  Lbl2.Top := Lbl1.Top + ScaleY(60);
  Lbl2.Width := ScaleX(250);
  Lbl2.Height := ScaleY(50);
  Lbl2.Caption := ExpandConstant('{cm:ChoseUpdateTips}');
  Lbl2.Parent := Page.Surface;
end;

// 判断本程序是否已安装
function GetInstalledVersion(): Boolean;
var
    InstalledVersion: String;
begin
    InstalledVersion :='';
    RegQueryStringValue(HKLM, 'Software\The Application', '{#MyAppFlag}', InstalledVersion);

    if length(InstalledVersion) > 0 then
    begin
        result := false;
    end else begin
        result := true;
    end
end;


// 事件函数 初始化
procedure InitializeWizard();
begin
  CreateAddonPage;

   // 调用过程，ip编辑界面
   CreateIpOnpage;
   // 初始化默认值
   CustomEdit.Text := ExpandConstant('{#CuDefaultIp}');
end;

// 界面显示判断
function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if (PageID = wpSelectTasks) and (RadioButton2.Checked) then
    Result := True
  else if (PageID = wpSelectDir)  and (RadioButton2.Checked) then
    Result := True
  else if (PageID = wpInfoBefore)  and (GetInstalledVersion) then
    Result := True
end;

// 卸载前删除环境变量
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  // 将{app}路径从path环境变量中删除
  SetEnv('path',ExpandConstant('{app}\LibreOffice5\program\'),false,true);
  SetEnv('path',ExpandConstant('{app}\ffmpeg\bin\'),false,true);
  SetEnv('path',ExpandConstant('{app}\phantomjs\'),false,true);
  SetEnv('path',ExpandConstant('{app}\MP4Box\'),false,true);
end;






