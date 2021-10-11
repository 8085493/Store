unit UnitESF;
interface
uses Classes,UnitContractor,UnitOverhead,BaseClassSQlExecute,MyAccess,UnitMyMessageDialog,
UnitDataOverhead,AdditionalFunctions,SysUtils,Forms,UnitTypeDocuments,LogUnit,Dialogs;
type

TItemNumberESF = class // ШАБЛОН ТАБЛИЦЫ В БД
  private
   idnumber_ESF,number_ESF,activ_year : string;
  public
    property _idnumber_ESF  : string  read idnumber_ESF   write idnumber_ESF;
    property _number_ESF  : string  read  number_ESF  write number_ESF;
    property _activ_year  : string  read  activ_year  write activ_year;
    constructor Create(idnumber_ESF,number_ESF,activ_year : string);
end;

TNumberESF = class(TBaseClassSQlExecute)     // РАБОТА С ТАБЛИЦЕЙ В БД
  public
    constructor Create(Connectin : TMyConnection);
    function    getNumber : TItemNumberESF;
    procedure   setNewNumber;
    procedure   setNewValues(ItemNumberESF : TItemNumberESF);
end;

Tvat = class
   public
    constructor Create(rate,rateType,summaVat : string);
    function    getVat : String;
   private
     rate,rateType,summaVat : string
  end;

TRosterItem = class(Tvat)
  public
    constructor Create(number,name,code,units,count,price,cost,summaExcise,rate,rateType,summaVat,costVat : string);
    function getRosterItem : string;
  private
    resulat_val : TStringList;
  end;

TGeneral = class
  public
    constructor Create(number,dateIssuance,dateTransaction : string; documentType : string ='ORIGINAL');
    function getGeneral : string;
  private
    resulat_val : TStringList;
end;

TInfoOrganization = class
  public
    constructor Create(namenotes,nameStatus,providerStatus,dependentPerson,residentsOfOffshore,specialDealGoods,bigCompany,
    countryCode,unp,name,address : string);
    function getInfoOrgoanization : string;
  private
    resulat_val : TStringList;
end;

TInfoSenderReceiver = class
  public
    constructor Create(namefirst,nameLast,countryCode,unp,name,address : string);
    function getInfoSenderReceiver : string;
  private
    resulat_val : TStringList;

end;

TSenderReceiver = class
  public
    constructor Create(countryCodeSender,unpSender,nameSender,addressSender,
    countryCodeReceiver,unpReceiver,nameReceiver,addressReceiver : string);
    function getSenderReceiver : string;
  private
    resulat_val : TStringList;
end;

TDeliveryCondition= class
  public
    constructor Create(number,date,code,date_,blankCode,seria,number_ : string);
    function getDeliveryCondition : string;
  private
   resulat_val : TStringList;
end;

TESF = class
  public
    constructor Create(provider : TItemContractor;recipient : TItemContractor; 
    overhead : TItemOverhead; listData : TList;Connection : TMyConnection);
  private
    resulat_val : TStringList;
end;

implementation
procedure SaveFileUTF8NotBOM(text : string;falseSave : string); stdcall; external 'UTF8.dll';

const FormatDateTimeConvert = 'YYY-MM-DD';

//
constructor TItemNumberESF.Create(idnumber_ESF: string; number_ESF: string; activ_year: string);
    begin
     self.idnumber_ESF:=idnumber_ESF;
     Self.number_ESF:=number_ESF;
     Self.activ_year:=activ_year;
    end;

constructor TNumberESF.Create(Connectin: TMyConnection);
    begin
       inherited Create(Connectin);
    end;

function tnumberesf.getnumber : titemnumberesf;
    begin
      sqlexecute('call getnumberesf');
      result:=titemnumberesf.create(
                  returnfieldsname('idnumber_esf'),
                  returnfieldsname('number_esf'),
                  returnfieldsname('activ_year')
      );
    end;

procedure tnumberesf.setnewnumber;
    begin
       sqlexecute('call setnewnumberesf;');
    end;

procedure tnumberesf.setnewvalues(itemnumberesf: titemnumberesf);
    begin
      sqlexecute('update table_number_esf set activ_year='+itemnumberesf._activ_year+
      ',number_esf='+itemnumberesf._number_esf+';');
    end;

constructor Tvat.Create(rate,rateType,summaVat : string);
    begin
      self.rate:=rate; Self.rateType:=rateType; Self.summaVat:=summaVat;
    end;

function Tvat.getVat : String;
    var resulat_val : TStringList;
    begin
      resulat_val:=TStringList.Create;
      resulat_val.Add('  <vat>');
      resulat_val.Add('     <rate>'+rate+'</rate>');
      resulat_val.Add('     <rateType>DECIMAL</rateType>');
      resulat_val.Add('     <summaVat>'+summaVat+'</summaVat>');
      resulat_val.Add('   </vat>');
      Result:=resulat_val.Text;
    end;

constructor TRosterItem.Create(number: string; name: string; code: string; units: string; count: string; price: string; cost: string; summaExcise: string; rate: string; rateType: string; summaVat: string; costVat: string);
    begin
      inherited Create(rate,rateType,summaVat);
      resulat_val := TStringList.Create;
      resulat_val.Add('<rosterItem>');
      resulat_val.Add(' <number>'+number+'</number> ');
      resulat_val.Add(' <name>'+name+'</name> ');
      resulat_val.Add(' <code>'+code+'</code>');
      resulat_val.Add(' <units>'+units+'</units>');
      resulat_val.Add(' <count>'+count+'</count> ');
      resulat_val.Add(' <price>'+price+'</price> ');
      resulat_val.Add(' <cost>'+cost+'</cost>');
      resulat_val.Add(' <summaExcise>'+summaExcise+'</summaExcise>');
      resulat_val.Add(' '+getVat);
      resulat_val.Add('  <costVat>'+costVat+'</costVat> ');
      resulat_val.Add('</rosterItem>');
    end;

function TRosterItem.getRosterItem : string;
    begin
      Result:=resulat_val.Text;
    end;

constructor TGeneral.Create(number: string; dateIssuance: string; dateTransaction: string; documentType: string = 'ORIGINAL');
    begin
          resulat_val:=TStringList.Create;
          resulat_val.Add('<general>');
          resulat_val.Add('    <number>'+number+'</number>  ');
          resulat_val.Add('    <dateIssuance>'+dateIssuance+'</dateIssuance>  ');
          resulat_val.Add('    <dateTransaction>'+dateTransaction+'</dateTransaction>  ');
          resulat_val.Add('    <documentType>'+documentType+'</documentType> ');
          resulat_val.Add('</general>');
    end;

function TGeneral.getGeneral : string;
    begin
     Result:=resulat_val.Text;
    end;

constructor TInfoOrganization.Create(namenotes: string; nameStatus,providerStatus: string; dependentPerson: string; residentsOfOffshore: string; specialDealGoods: string; bigCompany: string; countryCode: string; unp: string; name: string; address: string);
    begin
       resulat_val:=TStringList.Create;
        resulat_val.Add('<'+namenotes+'>');
         resulat_val.Add('  <'+nameStatus+'>'+providerStatus+'</'+nameStatus+'> ');
         resulat_val.Add('  <dependentPerson>'+dependentPerson+'</dependentPerson>');
         resulat_val.Add('  <residentsOfOffshore>'+residentsOfOffshore+'</residentsOfOffshore> ');
         resulat_val.Add('  <specialDealGoods>'+specialDealGoods+'</specialDealGoods>  ');
         resulat_val.Add('  <bigCompany>'+bigCompany+'</bigCompany>');
         resulat_val.Add('  <countryCode>'+countryCode+'</countryCode>');
         resulat_val.Add('  <unp>'+unp+'</unp>   ');
         resulat_val.Add('  <name>'+name+'</name> ');
         resulat_val.Add('  <address>'+address+'</address> ');
     resulat_val.Add('</'+namenotes+'>');
    end;

function TInfoOrganization.getInfoOrgoanization : string;
    begin
      Result:=resulat_val.Text;
    end;

constructor TInfoSenderReceiver.Create(namefirst: string; nameLast: string; countryCode: string; unp: string; name: string; address: string);
    begin
       resulat_val:=TStringList.Create;
       resulat_val.Add('<'+namefirst+'><'+nameLast+'>');
       resulat_val.Add('  <countryCode>'+countryCode+'</countryCode>');
       resulat_val.Add('  <unp>'+unp+'</unp>');
       resulat_val.Add('  <name>'+name+'</name> ');
       resulat_val.Add('  <address>'+address+'</address>');
       resulat_val.Add('</'+nameLast+'></'+namefirst+'>');
    end;

function TInfoSenderReceiver.getInfoSenderReceiver : string;
    begin
       Result:=resulat_val.Text;
    end;

constructor TSenderReceiver.Create(countryCodeSender: string; unpSender: string; nameSender: string; addressSender: string;
    countryCodeReceiver: string; unpReceiver: string; nameReceiver: string; addressReceiver: string);
    begin
      resulat_val:=TStringList.Create;
      resulat_val.Add('<senderReceiver>');
      resulat_val.Add(' '+TInfoSenderReceiver.Create('consignors','consignor',countryCodeSender,unpSender,nameSender,addressSender).getInfoSenderReceiver)  ;
      resulat_val.Add(' '+TInfoSenderReceiver.Create('consignees','consignee',countryCodeReceiver,unpReceiver,nameReceiver,addressReceiver).getInfoSenderReceiver) ;
      resulat_val.Add('</senderReceiver>')
    end;

function TSenderReceiver.getSenderReceiver : string;
    begin
      Result:=resulat_val.Text;
    end;

constructor TDeliveryCondition.Create(number: string; date: string;  code: string; date_: string; blankCode: string; seria: string; number_: string);
    begin
      resulat_val:=TStringList.Create;
      resulat_val.Add('<deliveryCondition>');
      resulat_val.Add(' <contract>');
      resulat_val.Add(' <number>'+number+'</number>');
      resulat_val.Add(' <date>'+date+'</date> ');
      resulat_val.Add(' <documents>');
      resulat_val.Add('   <document>');
      resulat_val.Add('     <docType>');
      resulat_val.Add('       <code>'+code+'</code>');
      resulat_val.Add('     </docType>');
      resulat_val.Add('     <date>'+date_+'</date>');
      resulat_val.Add('     <blankCode>'+blankCode+'</blankCode> ');
      resulat_val.Add('     <seria>'+seria+'</seria>');
      resulat_val.Add('     <number>'+number_+'</number>');
      resulat_val.Add('   </document>');
      resulat_val.Add(' </documents>');
      resulat_val.Add(' </contract>');
      resulat_val.Add('</deliveryCondition>');
    end;

function TDeliveryCondition.getDeliveryCondition;
    begin
      Result:=resulat_val.Text;
    end;

constructor TESF.Create(provider: TItemContractor; recipient: TItemContractor; overhead: 
TItemOverhead; listData: TList;Connection : TMyConnection);
    var position,i : Integer;
    pathsave,numberbig,pathFileSave,getText : string;
    number : TNumberESF;
    itemNumb : TItemNumberESF;
    begin
      try

       pathsave:=ExtractFilePath(Application.ExeName)+'data\ESF\';
       CreateDir(pathsave);

       number := TNumberESF.Create(Connection);
       itemNumb:=number.getNumber;
       resulat_val:=TStringList.Create;

       resulat_val.Add('<issuance xmlns="http://www.w3schools.com" sender="'+provider._UNP+'">');
       //СОЗДАЕМ ИМЯ ФАЙЛА, И ОСЧИТЫВАЕМ КОЛ-ВО НУЛЕЙ. (10)

       for i:=1 to 10-Length(itemNumb.number_ESF) do numberbig:=numberbig+'0';

       pathFileSave:= ''+itemNumb.number_ESF+'-'+FormatDateTime('YYY.MM.DD',now)+'-'+ provider._UNP;

       resulat_val.Add(
                       TGeneral.Create(
                       provider._UNP+'-'+itemNumb.activ_year+'-'+numberbig+itemNumb.number_ESF+'',
                       FormatDateTime(FormatDateTimeConvert,now),
                       FormatDateTime(FormatDateTimeConvert,StrToDate(overhead._Date_Overhead)),
                       'ORIGINAL').getGeneral
       );

       resulat_val.Add(
                       TInfoOrganization.Create(
                       'provider',
                       'providerStatus',
                       'SELLER',
                       'false',
                       'false',
                       'false',
                       'false',
                       '112',
                       provider._UNP,
                       provider._Name_Contractor,
                       provider._Legal_Address).getInfoOrgoanization
       );
       //
       resulat_val.Add(TInfoOrganization.Create('recipient','recipientStatus','CUSTOMER','false','false','false','false','112',recipient._UNP,recipient._Name_Contractor,recipient._Legal_Address).getInfoOrgoanization);
       //
       resulat_val.Add(
                       TsenderReceiver.Create(
                        '112',
                        provider._UNP,
                        provider._Name_Contractor,
                        provider._Legal_Address,
                        '112',
                        recipient._UNP,
                        recipient._Name_Contractor,
                        recipient._Legal_Address).getSenderReceiver
                      );
       //
       resulat_val.Add(
                       TdeliveryCondition.Create(
                       recipient._agreement,//55
                       FormatDateTime(FormatDateTimeConvert,StrToDate(recipient._date_agreement))
                       ,
                       //FormatDateTime(FormatDateTimeConvert,StrToDate(overhead._Date_Overhead)),
                       TTypeDocuments.Create(Connection).getTypeDocID(overhead._idTypeDoc)._code_type_doc,
                       FormatDateTime(FormatDateTimeConvert,StrToDate(overhead._Date_Overhead)),
                       overhead._blankCode,   // '402861',
                       overhead._seria_Overhead,overhead._Number_Overhead).getDeliveryCondition
                      );
       //
       resulat_val.Add('<roster totalCostVat="'+overhead._totalCostVat+'" totalExcise="0" totalVat="'+overhead._totalVat+'" totalCost="'+overhead._totalCost+'">');

        for position:=0 to listData.Count-1 do
          begin
            resulat_val.Add(
            TRosterItem.Create(
              IntToStr(position+1),
              TItemESF(listData[position])._Name_Goods  ,'',
              TItemESF(listData[position])._code_okei   ,
              TItemESF(listData[position])._count_Goods ,
              TItemESF(listData[position])._Price_Goods ,
              TItemESF(listData[position])._price,'0',
              TItemESF(listData[position])._NDS,'DECIMAL',
              TItemESF(listData[position])._price_nds    ,
              TItemESF(listData[position])._all_price
            ).getRosterItem);
          end;
       resulat_val.Add('</roster>');
       resulat_val.Add('</issuance>');

       if not countString(overhead._blankCode) then
        begin
          ShowMessageDlg('Ошибка','Не заполнен номер бланка',myError);
          Exit;
        end;
       if not countString( recipient._date_agreement) then
        begin
          ShowMessageDlg('Ошибка','Не заполнена дата договора. Укажите в справочнике.',myError);
          Exit;
        end;

       if (not countString(overhead._idTypeDoc)) OR (overhead._idTypeDoc='-1') then
        begin
          ShowMessageDlg('Ошибка','Не заполнен тип документа',myError);
          Exit;
        end;
       SaveFileUTF8NotBOM(resulat_val.getText,pathsave+pathFileSave+'.xml');

       number.setNewNumber;

       ShowMessageDlg('Уведомление','ЭСЧФ успешно сохранена в файл '+pathFileSave+'.xml',
       myInformation,'Номер документа можно указать в настройках (ЭСЧФ)');

        except on e : Exception do begin
          ShowMessageDlg('Ошибка','Ошибка при создании файла',myError);
          WriteLogNoMessage(e.Message);
        end;
      end;
    end;
end.
