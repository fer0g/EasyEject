#define MyAppName "EasyEject"
#define MyAppVersion "1.0.0"

[Setup]
AppId={{B9C2D71A-9C34-4E7A-A71C-52B4F34B8A11}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={autopf}\EasyEject
DefaultGroupName=EasyEject
OutputDir=artifacts
OutputBaseFilename=EasyEject-Setup-x64
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=admin
Compression=lzma2
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "{#PublishDir}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\EasyEject"; Filename: "{app}\EasyEject.exe"
Name: "{autodesktop}\EasyEject"; Filename: "{app}\EasyEject.exe"

[Run]
Filename: "{app}\EasyEject.exe"; Description: "Launch EasyEject"; Flags: postinstall nowait skipifsilent
