; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppPublisher "PaysPlat"
#define WebSite "http://desktopsbs.paysplat.fr/"
#define AppName "DesktopSbS"
#define Guid "{94929386-9F11-4A9E-9087-1B3D0CDCFE3A}"
#define SrcFolder "..\"+AppName+"\bin\Release"

#define AppVersion "0.2"
#define AppVerName AppName+" v"+AppVersion
#define AppVerName_ StringChange(AppVerName," ", "_");
#define FolderName StringChange(AppName," ", "_");
#define ExeName StringChange(AppName," ", "")+".exe";

#define IconPath "..\"+AppName+"\" + AppName + ".ico"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{#Guid}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppVerName}
AppPublisher={#AppPublisher}
AppPublisherURL={#WebSite}
DefaultDirName={pf}\{#FolderName}
DefaultGroupName={#AppName}
AllowNoIcons=yes
OutputDir=Binaries
OutputBaseFilename={#AppVerName_}_Setup
SetupIconFile={#IconPath}
UninstallDisplayIcon={app}\{#ExeName}
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SignTool=SignTool

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
           

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SrcFolder}\{#ExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SrcFolder}\{#ExeName}.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SrcFolder}\Resources\*"; DestDir: "{app}\Resources"; Flags: ignoreversion

[Icons]
Name: "{group}\{#AppVerName}"; Filename: "{app}\{#ExeName}"
Name: "{group}\{cm:UninstallProgram,{#AppVerName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#AppVerName}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#ExeName}"; Description: "{cm:LaunchProgram,{#AppVerName}}"; Flags: nowait postinstall skipifsilent unchecked

