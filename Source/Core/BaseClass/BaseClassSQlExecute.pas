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
    constructor Create(var Conncet_: TMyConnection);  //конструктор
    procedure SQlExecute(SQlText: string);          //выполнение SQL запроса
    function ResultNormIndex(index_: Integer): string;
    function ReturnFieldsID(ID: Integer): string; // возврат значения курсова по индексу столбца
    function ReturnFieldsName(NAME: string): string; // возврат значения курсова по имени столбца
    function FloatToStrMy(ch: real): string; // конверт из дрбного в стрковое  для MySQL
    function StrToFloatMy(s: string): Real;   // конверт из строкового в дробное для MySQL
    function MyBoolToStr(Booll: Boolean): string;  //
    function MyIntToBool(booll: Integer): Boolean;
    function RecordCount: Integer;
    function ReturnMonth(id: string): string;
    // function    RecordCount_ : Integer; //количество записей
    function EofCount: Boolean;     // курсор стоит в конце
    procedure FirstRecord;            //ѕереместить курсор на первую запись
    procedure NextRecord;             //ѕереместить курсор на следующую запис
    function StrToStrFloatSQL(stroka: string): string;
    procedure SetDataMemTable();
    procedure Locate(NameFields: string; valuesFields: Integer);
    // function    ReturnMonth(id : string) :string; //мес¤ц по индексу
  private
    function StrRep(chis_lo: string): string; // конверт дробного значения для MYSQL из , в .
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
        ShowMessageDlg('Ошибка выполнения запроса!', 'При выполнении запроса произошла ошибка. Проверьте логи', myError);
      end;
    end;
  end
  else
  begin
    MessageDlg('Связь с сервером потеряна.', mtError, [mbOk], 1);
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
      Result := ('Январь');
    2:
      Result := ('Февраль');
    3:
      Result := ('Март');
    4:
      Result := ('Апрель');
    5:
      Result := ('Май');
    6:
      Result := ('Июнь');
    7:
      Result := ('Июль');
    8:
      Result := ('Август');
    9:
      Result := ('Сентябрь');
    10:
      Result := ('Октябрь');
    11:
      Result := ('Ноябрь');
    12:
      Result := ('Декабрь');
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

