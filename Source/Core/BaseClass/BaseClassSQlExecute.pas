unit BaseClassSQlExecute;

interface

uses
  MyAccess, SysUtils, Dialogs, LogUnit, Forms, UnitMyMessageDialog,
  AdditionalFunctions, EhLibMyDac, MemTableDataEh, Db, MemTableEh, EhLibVCL,
  DataDriverEh;

type
  TBaseClassSQlExecute = class
  public
    BaseClassSQlExecuteQuery: TMyQuery;
    BaseClassSQlExecuteSource: TMyDataSource;
    MemTableEh: TMemTableEh;
    DataSourceMemTables: TDataSource;
    DataSetDriverEh: TDataSetDriverEh;
    constructor Create(var Conncet_: TMyConnection);  //�����������
    procedure SQlExecute(SQlText: string);          //���������� SQL �������
    function ResultNormIndex(index_: Integer): string;
    function ReturnFieldsID(ID: Integer): string; // ������� �������� ������� �� ������� �������
    function ReturnFieldsName(NAME: string): string; // ������� �������� ������� �� ����� �������
    function FloatToStrMy(ch: real): string; // ������� �� ������� � ��������  ��� MySQL
    function StrToFloatMy(s: string): Real;   // ������� �� ���������� � ������� ��� MySQL
    function MyBoolToStr(Booll: Boolean): string;  //
    function MyIntToBool(booll: Integer): Boolean;
    function RecordCount: Integer;
    function ReturnMonth(id: string): string;
    // function    RecordCount_ : Integer; //���������� �������
    function EofCount: Boolean;     // ������ ����� � �����
    procedure FirstRecord;            //����������� ������ �� ������ ������
    procedure NextRecord;             //����������� ������ �� ��������� �����
    function StrToStrFloatSQL(stroka: string): string;
    procedure SetDataMemTable();
    procedure Locate(NameFields: string; valuesFields: Integer);
    // function    ReturnMonth(id : string) :string; //���� �� �������
  private
    function StrRep(chis_lo: string): string; // ������� �������� �������� ��� MYSQL �� , � .
    destructor Destroy; override;
  protected
    ID_MAIN_GOBAL: string;
    Connect: TMyConnection;
    procedure UpdateOneField(TableName, FieldName, ValuesData, FilterField, ValuesField: string);
    procedure UpdateOneFieldString(TableName, FieldName, ValuesData, FilterField, ValuesField: string);
  end;

const
  FormatDateTimeConvert = 'YYYY.MM.DD';

implementation
    //WHERE countGoods>0

constructor TBaseClassSQlExecute.Create(var Conncet_: TMyConnection);
begin
  Connect := TMyConnection.Create(nil);
  Connect := Conncet_;
  BaseClassSQlExecuteQuery := TMyQuery.Create(nil);
  BaseClassSQlExecuteQuery.Connection := Conncet_;
  BaseClassSQlExecuteSource := TMyDataSource.Create(nil);
  BaseClassSQlExecuteSource.DataSet := BaseClassSQlExecuteQuery;
  BaseClassSQlExecuteQuery.Filtered := true;
     //
  DataSourceMemTables := TDataSource.Create(nil);
  MemTableEh := TMemTableEh.Create(nil);
  DataSetDriverEh := TDataSetDriverEh.Create(nil);
    // 1
  DataSetDriverEh.ProviderDataSet := BaseClassSQlExecuteQuery;
  DataSetDriverEh.ResolveToDataSet := true;
  // 2
  MemTableEh.DataDriver := DataSetDriverEh;
  MemTableEh.AutoCalcFields := false;
  MemTableEh.CachedUpdates := false;
  MemTableEh.Filtered := false;
end;

procedure TBaseClassSQlExecute.SetDataMemTable;
begin
 MemTableEh.Active:=True;
end;

procedure TBaseClassSQlExecute.SQlExecute(SQlText: string);
begin
  if Connect.Connected then
  begin
    try
      with BaseClassSQlExecuteQuery do
      begin
              //ShowMessage(SQLtext);
        WriteLogSQLText(SQlText);
        SQl.Clear;
        SQL.Add(SQlText);
        Execute;
      end;
    except
      on e: Exception do
      begin
        WriteLog(e.Message);
        WriteLog(SQlText);
        ShowMessageDlg('������ ���������� �������!', '��� ���������� ������� ��������� ������. ��������� ����', myError);
      end;
    end;
  end
  else
  begin
    MessageDlg('����� � �������� ��������.', mtError, [mbOk], 1);
    Application.Terminate;
  end;
end;

function TBaseClassSQlExecute.ResultNormIndex(index_: Integer): string;
begin
  if Length(inttostr(index_)) = 2 then
    Result := InttoStr(index_)
  else
    Result := '0' + IntToStr(index_);
end;

function TBaseClassSQlExecute.ReturnFieldsID(ID: Integer): string;
begin
  Result := BaseClassSQlExecuteQuery.Fields[ID].AsString;
end;

function TBaseClassSQlExecute.ReturnFieldsName(NAME: string): string;
begin
  if BaseClassSQlExecuteQuery.RecordCount > 0 then
    Result := BaseClassSQlExecuteQuery.fieldbyName(NAME).AsString
  else
    Result := '-1';
end;

function TBaseClassSQlExecute.StrRep(chis_lo: string): string;
begin
  if CountString(chis_lo) then
    Result := StringReplace(chis_lo, ',', '.', [rfReplaceAll, rfIgnoreCase])
  else
    Result := '0';
end;

function TBaseClassSQlExecute.StrToStrFloatSQL(stroka: string): string;
begin
  if CountString(stroka) then
    Result := StringReplace(stroka, ',', '.', [rfReplaceAll, rfIgnoreCase])
  else
    Result := '0';
end;

function TBaseClassSQlExecute.FloatToStrMy(ch: real): string;
begin
  Result := StrRep(FloatToStr(ch));
end;

procedure TBaseClassSQlExecute.Locate(NameFields: string;
  valuesFields: Integer);
begin
   try
//    if MemTableEh.Active then
//      MemTableEh.Locate(NameFields, valuesFields, [])
//    else
      BaseClassSQlExecuteQuery.Locate(NameFields, valuesFields, []);
  except
    on e: Exception do
    //  WriteLogNoMessage(getTextError(e, 'baseClass.Locate'));
  end;
end;

function TBaseClassSQlExecute.StrToFloatMy(s: string): Real;
begin
  if s = '' then
    Result := 0
  else
    Result := StrToFloat(s);
end;

function TBaseClassSQlExecute.MyBoolToStr(Booll: Boolean): string;
begin
  if Booll then
    Result := '1'
  else
    Result := '0';
end;

function TBaseClassSQlExecute.MyIntToBool(booll: Integer): Boolean;
begin
  if booll = 0 then
    Result := False
  else
    Result := True;
end;

function TBaseClassSQlExecute.RecordCount: Integer;
begin
  Result := BaseClassSQlExecuteQuery.RecordCount;
end;

function TBaseClassSQlExecute.EofCount: Boolean;
begin
  Result := BaseClassSQlExecuteQuery.Eof;
end;

procedure TBaseClassSQlExecute.FirstRecord;
begin
  BaseClassSQlExecuteQuery.First;
end;

procedure TBaseClassSQlExecute.NextRecord;
begin
  BaseClassSQlExecuteQuery.Next;
end;

function TBaseClassSQlExecute.ReturnMonth(id: string): string;
begin
  case StrToInt(id) of
    1:
      Result := ('������');
    2:
      Result := ('�������');
    3:
      Result := ('����');
    4:
      Result := ('������');
    5:
      Result := ('���');
    6:
      Result := ('����');
    7:
      Result := ('����');
    8:
      Result := ('������');
    9:
      Result := ('��������');
    10:
      Result := ('�������');
    11:
      Result := ('������');
    12:
      Result := ('�������');
  end;
end;

procedure TBaseClassSQlExecute.UpdateOneField(TableName: string; FieldName: string; ValuesData: string; FilterField: string; ValuesField: string);
begin
  SQlExecute('UPDATE `' + TableName + '` SET ' + FieldName + '=' + ValuesData + ' WHERE ' + FilterField + '=' + ValuesField + '');
end;

procedure TBaseClassSQlExecute.UpdateOneFieldString(TableName: string; FieldName: string; ValuesData: string; FilterField: string; ValuesField: string);
begin
    //ShowMessage(ValuesData+' UPDATE SUKA');
  SQlExecute('UPDATE `' + TableName + '` SET ' + FieldName + '=''' + ValuesData + ''' WHERE ' + FilterField + '=' + ValuesField + '');
end;

destructor TBaseClassSQlExecute.Destroy;
begin
    //FreeAndNil(Connect);//----/////////////////////////
  FreeAndNil(BaseClassSQlExecuteQuery);
  FreeAndNil(BaseClassSQlExecuteSource);
end;

end.

