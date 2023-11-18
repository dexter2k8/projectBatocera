{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit UnitBatocera;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  Data.DB, Datasnap.DBClient, FMX.ListView, FMX.Media, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Menus, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit,
  FMX.Layouts, FMX.MediaLibrary, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.ListBox, StrUtils, System.ImageList, FMX.ImgList, Winapi.Windows;

type
  TForm1 = class(TForm)
    cds: TClientDataSet;
    cdsPath: TStringField;
    cdsName: TStringField;
    cdsDesc: TStringField;
    cdsRelease: TStringField;
    cdsDeveloper: TStringField;
    cdsPublisher: TStringField;
    cdsPlayers: TStringField;
    cdsImage: TStringField;
    cdsMarquee: TStringField;
    cdsVideo: TStringField;
    pVideo: TPanel;
    pImage: TPanel;
    imgImage: TImage;
    imgMarquee: TImage;
    mPlayer: TMediaPlayer;
    MainMenu1: TMainMenu;
    arquivo: TMenuItem;
    abrir: TMenuItem;
    openDlg: TOpenDialog;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    edtPath: TEdit;
    LinkControlToField1: TLinkControlToField;
    mPlayerCtrl: TMediaPlayerControl;
    pMarquee: TPanel;
    lblPath: TLabel;
    edtName: TEdit;
    lblName: TLabel;
    lblDesc: TLabel;
    edtRelease: TEdit;
    lblRelease: TLabel;
    edtDeveloper: TEdit;
    lblDeveloper: TLabel;
    edtPublisher: TEdit;
    lblPublisher: TLabel;
    edtGenre: TEdit;
    lblGenre: TLabel;
    edtPlayers: TEdit;
    lblPlayers: TLabel;
    edtImage: TEdit;
    lblImage: TLabel;
    edtMarquee: TEdit;
    lblMarquee: TLabel;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    memDesc: TMemo;
    LinkControlToField11: TLinkControlToField;
    sair: TMenuItem;
    saveDlg: TSaveDialog;
    salvarComo: TMenuItem;
    salvar: TMenuItem;
    btnNovo: TButton;
    btnDuplicar: TButton;
    btnExcluir: TButton;
    lBox: TListBox;
    LinkListControlToField1: TLinkListControlToField;
    btnRemover: TButton;
    btnOpenPath: TSpeedButton;
    ImageList: TImageList;
    btnOpenImage: TSpeedButton;
    btnOpenMarquee: TSpeedButton;
    btnOpenVideo: TSpeedButton;
    openMediaDlg: TOpenDialog;
    btnCopiar: TButton;
    btnCheck: TButton;
    ProgressBar1: TProgressBar;
    openCopyDlg: TOpenDialog;
    lblVideo: TLabel;
    edtVideo: TEdit;
    cdsGenre: TStringField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    tbVolume: TTrackBar;
    lblVolume: TLabel;
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure abrirClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure salvarComoClick(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnOpenPathClick(Sender: TObject);
    procedure btnOpenVideoClick(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure btnOpenMarqueeClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCheckClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure tbVolumeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getData(tag: string): string;
    function getPath(pathName: string): string;
    function getMediaPath(name: string): string;
    function extractMediaPath: string;
    procedure enableControls;
    procedure handleSelected(btnName: string);
    procedure handleOpenMedia(edit: TEdit);
  end;

var
  Form1: TForm1;
  fileData: TStringList;
  tags: array [1..11] of string = ('path','name','desc',
    'releasedate','developer','publisher','genre','players','image',
    'marquee','video');
  fileTags: array [1..4] of string = ('path','image','marquee','video');
  filePath: string;
  isLoading: boolean = False;
  hasChanges: boolean = False;
  isMissingFile: boolean = False;

implementation

{$R *.fmx}

uses ToastMessage;

{ TForm1 }

procedure TForm1.abrirClick(Sender: TObject);
var
  i, j:integer;
  openPath: string;
begin
  if OpenDlg.Execute then
  try
    isLoading:= true;
    cds.Open;
    cds.EmptyDataSet;
    filePath:= OpenDlg.FileName;
    fileData:= TStringList.Create;
    fileData.LoadFromFile(filePath, TEncoding.UTF8);
    // converte o objeto XML em uma tabela
    for i := 0 to fileData.Count - 1 do
    begin
      if (pos('<game ',fileData[i]) > 0) or (pos('<game>',fileData[i]) > 0) then
        cds.Append;
      for j := 1 to Length(tags) do
        if pos('<'+tags[j]+'>',fileData[i]) > 0 then
          cds.FieldByName(tags[j]).AsString:= getData(fileData[i]).Replace('&amp;','&');
      if fileData[i].Trim = '</game>' then
        cds.Post;
    end;
  finally
    isLoading:= false;
    if not cds.IsEmpty then
    begin
      enableControls;
      cds.IndexFieldNames:= 'name';
      cds.First;
      pImage.StyleLookup:= 'pushpanel';
      pMarquee.StyleLookup:= 'pushpanel';
      pVideo.StyleLookup:= 'pushpanel';
      lBox.SetFocus;
    end;
    FreeAndNil(fileData);
  end;
end;

procedure TForm1.btnCheckClick(Sender: TObject);
begin
  isLoading:= true;
  ProgressBar1.Max:= lBox.Items.Count - 1;
  cds.First;
  while not cds.Eof do
  begin
    if not FileExists(getMediaPath(cdsPath.Value)) then
      lBox.ListItems[cds.RecNo - 1].ResultingTextSettings.FontColor:= TAlphaColorRec.Red;
    Application.ProcessMessages;
    ProgressBar1.Value:= cds.RecNo;
    cds.Next;
  end;
  isLoading:= false;
end;

procedure TForm1.btnCopiarClick(Sender: TObject);
var
  i,j: integer;
  fileToCopy: TStringList;
  value, copyPath: string;
  origin, destination: PWideChar;
begin
  if openCopyDlg.Execute then
  begin
    if openCopyDlg.FileName = openDlg.FileName then
    begin
      ShowMessage('Arquivos de origem e destino não podem ser os mesmos');
      exit;
    end;
    try
      fileData:= TStringList.Create;
      fileToCopy:= TStringList.Create;
      fileData.LoadFromFile(openCopyDlg.FileName, TEncoding.UTF8);
      copyPath:= ExtractFilePath(openCopyDlg.FileName);
      if  fileData.Count > 0 then
      begin
        fileData.Delete(fileData.Count - 1);
        for i := 0 to lBox.Items.Count - 1 do
          if lBox.ListItems[i].IsSelected then
            fileToCopy.Append(lBox.Items[i]);

        for i := 0 to fileToCopy.Count - 1 do
          if cds.Locate('name', fileToCopy[i], []) then
          begin
            // Cria o registro do jogo no arquivo gamelist.xml
            fileData.Append(#9'<game>');
            for j := 1 to Length(tags) do
              if not(cds.FieldByName(tags[j]).Value = null) then
              begin
                value:= cds.FieldByName(tags[j]).Value;
                fileData.Append(#9#9'<'+tags[j]+'>' + value.Replace('&','&amp;') + '</'+tags[j]+'>');
              end;
            fileData.Append(#9'</game>');
            // Faz a cópia dos arquivos do jogo
            for j := 1 to Length(fileTags) do
            begin
              origin:= PWideChar(getMediaPath(cds.FieldByName(fileTags[j]).Value));
              destination:= PWideChar(copyPath + getPath(cds.FieldByName(fileTags[j]).Value));
              if FileExists(origin) then
                CopyFile(origin,destination,true);
            end;
          end;
      end;
      fileData.Append('</gamelist>');

    finally
      fileData.SaveToFile(openCopyDlg.FileName, TEncoding.UTF8);
      TToastMessage.show('Jogos copiados.', 3, 40, TToastPosition.tpBottom);
      FreeAndNil(fileData);
      FreeAndNil(fileToCopy);
    end;
  end;
end;

procedure TForm1.btnDuplicarClick(Sender: TObject);

begin
  handleSelected('btnDuplicar');
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir registro e arquivos?',TMsgDlgType.mtConfirmation,
      [TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo],0) = mrYes then
    handleSelected('btnExcluir');
end;

procedure TForm1.btnNovoClick(Sender: TObject);
begin
  cds.Append;
  hasChanges:= true;
end;

procedure TForm1.btnOpenPathClick(Sender: TObject);
begin
  handleOpenMedia(edtPath);
end;

procedure TForm1.btnRemoverClick(Sender: TObject);
begin
  handleSelected('btnRemover');
end;

procedure TForm1.cdsAfterScroll(DataSet: TDataSet);
var
  pathGame, pathImage, pathMarquee, pathVideo: string;
begin
  if isLoading then exit;

  isMissingFile:= false;

  pathGame:= getMediaPath(cdsPath.Value);
  if FileExists(pathGame) then
    edtPath.ResultingTextSettings.FontColor:= TAlphaColorRec.Black
  else
    begin
      isMissingFile:= true;
      edtPath.ResultingTextSettings.FontColor:= TAlphaColorRec.Red;
    end;

  pathImage:= getMediaPath(cdsImage.Value);
  if FileExists(pathImage) then
  begin
    imgImage.Bitmap.LoadFromFile(pathImage);
    edtImage.ResultingTextSettings.FontColor:= TAlphaColorRec.Black;
  end
  else
  begin
    imgImage.Bitmap:= nil;
    edtImage.ResultingTextSettings.FontColor:= TAlphaColorRec.Red;
  end;

  pathMarquee:= getMediaPath(cdsMarquee.Value);
  if FileExists(pathMarquee) then
  begin
    imgMarquee.Bitmap.LoadFromFile(pathMarquee);
    edtMarquee.ResultingTextSettings.FontColor:= TAlphaColorRec.Black;
  end
  else
  begin
    imgMarquee.Bitmap:= nil;
    edtMarquee.ResultingTextSettings.FontColor:= TAlphaColorRec.Red;
  end;

  pathVideo:= getMediaPath(cdsVideo.Value);
  if FileExists(pathVideo) then
  begin
    mPlayer.FileName:= pathVideo;
    mPlayer.Stop;
    mPlayer.Play;
    mPlayer.Volume:= tbVolume.Value/10;
    edtVideo.ResultingTextSettings.FontColor:= TAlphaColorRec.Black;
  end
  else
  begin
    mPlayer.Clear;
    edtVideo.ResultingTextSettings.FontColor:= TAlphaColorRec.Red;
  end;

  if cds.RecNo > 0 then
    if isMissingFile then
      lBox.ListItems[cds.RecNo - 1].ResultingTextSettings.FontColor:= TAlphaColorRec.Red;
end;

procedure TForm1.enableControls;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TEdit then
      TEdit(Components[i]).Enabled := true;
    if Components[i] is TButton then
      TButton(Components[i]).Enabled := true;
    if Components[i] is TSpeedButton then
      TSpeedButton(Components[i]).Enabled := true;
  end;
  memDesc.Enabled:= true;
  salvar.Enabled:= true;
  salvarComo.Enabled:= true;
end;

function TForm1.extractMediaPath: string;
var
  path, pathMedia, defaultPath: string;
  posBegin, posEnd, pathCount: integer;
begin
  defaultPath:= ExtractFilePath(openDlg.FileName);
  posBegin:= defaultPath.Length;
  posEnd:= Length(openMediaDlg.FileName);
  pathCount:= posEnd - posBegin;
  pathMedia:= ExtractFileName(openMediaDlg.FileName);
  result:= copy(openMediaDlg.FileName,posBegin,pathCount + 1);
  result:= '.' + result.Replace('\','/');
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if hasChanges then
    if MessageDlg('Existem alterações não salvas.Deseja realmente fechar?',
        TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrNo then
      CanClose := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  cds.CreateDataSet;
  mPlayerCtrl.Parent:= Self;
end;

// extrai o texto de dentro das tags
function TForm1.getData(tag: string): string;
var
  posBegin, posEnd, tagCount: integer;
begin
  posBegin:= pos('>',tag) + 1;
  posEnd:= pos('</',tag);
  tagCount:= posEnd - posBegin;

  result:= copy(tag,posBegin,tagCount);
end;

// extrai o "./" e inverte as barras dos arquivos de mídia
function TForm1.getMediaPath(name: string): string;
var
  path, pathMedia: string;
begin
  path:= ExtractFilePath(filePath);
  result:= path + getPath(name);
end;

function TForm1.getPath(pathName: string): string;
var
  path: string;
begin
  path:= copy(pathName, 3, Length(pathName)-2);
  result:= path.Replace('/','\');
end;
// manipula os botões de ação dos registros
procedure TForm1.handleSelected(btnName: string);
var
  i,j: Integer;
  newSet: TClientDataSet;
  pathFile: PWideChar;
begin
  try
    isLoading:= true;
    fileData:= TStringList.Create;
    if btnName = 'btnDuplicar' then
    begin
      newSet:= TClientDataSet.Create(nil);
      newSet.FieldDefs:= cds.FieldDefs;
      newSet.CreateDataSet;
    end;
    if btnName = 'btnExcluir' then
      mPlayer.Clear;

    for i := 0 to lBox.Items.Count - 1 do
      if lBox.ListItems[i].IsSelected then
        fileData.Append(lBox.Items[i]);

    for i := 0 to fileData.Count - 1 do
      if cds.Locate('name', fileData[i], []) then
        case AnsiIndexStr(btnName,['btnRemover','btnDuplicar','btnExcluir']) of
          0: cds.Delete;
          1: begin
               newSet.Insert;
               newSet.CopyFields(cds);
               newSet.Post;
               cds.Append;
               cds.CopyFields(newSet);
               cds.Post;
             end;
          2:  begin
                for j := 1 to Length(fileTags) do
                begin
                  pathFile:= PWideChar(getMediaPath(cds.FieldByName(fileTags[j]).Value));
                  if FileExists(pathFile) then
                    DeleteFile(pathFile);
                end;
                cds.Delete;
              end;
        end;
    finally
      FreeAndNil(fileData);
      hasChanges:= true;
      if btnName = 'btnDuplicar' then
        FreeAndNil(newSet);
      if btnName = 'btnExcluir' then
        salvarClick(Self);
      isLoading:= false;
    end;
end;

procedure TForm1.sairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.salvarClick(Sender: TObject);
var
  i:integer;
  value: string;
begin
  try
    isLoading:= True;
    fileData:= TStringList.Create;
    if (cds.state in [dsEdit, dsInsert]) then
      if Trim(cdsPath.Value) = '' then
        cds.Cancel
      else cds.Post;
    cds.First;
    // converte a tabela em objeto XML
    fileData.Append('<?xml version="1.0"?>');
    fileData.Append('<gameList>');
    while not cds.Eof do
    begin
      fileData.Append(#9'<game>');
      for i := 1 to Length(tags) do
        if not(cds.FieldByName(tags[i]).Value = null) then
        begin
          value:= cds.FieldByName(tags[i]).Value;
          fileData.Append(#9#9'<'+tags[i]+'>' + value.Replace('&','&amp;') + '</'+tags[i]+'>');
        end;
      fileData.Append(#9'</game>');
      cds.Next;
    end;
    fileData.Append('</gamelist>');
  finally
    cds.First;
    isLoading:= false;
    fileData.SaveToFile(openDlg.FileName, TEncoding.UTF8);
    hasChanges:= false;
    TToastMessage.show('Alterações salvas.', 3, 40, TToastPosition.tpBottom);
    FreeAndNil(fileData);
  end;
end;

procedure TForm1.salvarComoClick(Sender: TObject);
begin
  if saveDlg.Execute then
  begin
    if FileExists(saveDlg.FileName) then
      if MessageDlg('Sobrescrever arquivo existente?',TMsgDlgType.mtConfirmation,
      [TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo],0) = mrYes then
      begin
        openDlg.FileName:= saveDlg.FileName;
        salvarClick(Sender);
      end
        else
    else
    begin
      openDlg.FileName:= saveDlg.FileName;
      salvarClick(Sender);
    end;
  end;
end;

procedure TForm1.tbVolumeChange(Sender: TObject);
begin
  mPlayer.Volume:= tbVolume.Value/10;
end;

procedure TForm1.btnOpenVideoClick(Sender: TObject);
begin
  handleOpenMedia(edtVideo);
end;

procedure TForm1.btnOpenImageClick(Sender: TObject);
begin
  handleOpenMedia(edtImage);
end;

procedure TForm1.btnOpenMarqueeClick(Sender: TObject);
begin
  handleOpenMedia(edtMarquee);
end;

procedure TForm1.handleOpenMedia(edit: TEdit);
var
  path: string;
begin
  path:= getMediaPath(edit.Text);
  if FileExists(path) then
    begin
      openMediaDlg.FileName:= path;
      openMediaDlg.InitialDir:= ExtractFilePath(path);
    end
  else openMediaDlg.InitialDir:= ExtractFilePath(openDlg.FileName);
  if openMediaDlg.Execute then
  begin
    cds.Edit;
    case AnsiIndexStr(edit.Name,['edtPath','edtImage','edtMarquee','edtVideo']) of
      0: cdsPath.AsString:= extractMediaPath;
      1: cdsImage.AsString:= extractMediaPath;
      2: cdsMarquee.AsString:= extractMediaPath;
      3: cdsVideo.AsString:= extractMediaPath;
    end;
    cds.Post;
    edit.ResultingTextSettings.FontColor:= TAlphaColorRec.Black;
    case AnsiIndexStr(edit.Name,['edtPath','edtImage','edtMarquee','edtVideo']) of
      0: exit;
      1: imgImage.Bitmap.LoadFromFile(getMediaPath(cdsImage.Value));
      2: imgMarquee.Bitmap.LoadFromFile(getMediaPath(cdsMarquee.Value));
      3: begin
            mPlayer.FileName:= getMediaPath(cdsVideo.Value);
            mPlayer.Stop;
            mPlayer.Play;
            mPlayer.Volume:= tbVolume.Value/10;
         end;
    end;
  end;
end;

end.
