unit UnitLicenseServer;

interface
type

TlicenseServer = class
private
   STATUS : Boolean;
   STATUS_INFO : string;
   IP : string;
   BALANCE : string;
   SERVER_VERSION : string;
   LINK_DOWNLOAD : string;
   UPDARE_PROJECT : Boolean;
   CONTRACTOR_NAME,BASE_NAME,PRICE,PROJECT : string;
public
  property __STATUS: Boolean read STATUS write STATUS;
  property __STATUS_INFO: string read STATUS_INFO write STATUS_INFO;
  property __IP: string read IP write IP;
  property __BALANCE: string read BALANCE write BALANCE;
  property __SERVER_VERSION: string read SERVER_VERSION write SERVER_VERSION;
  property __LINK_DOWNLOAD: string read LINK_DOWNLOAD write LINK_DOWNLOAD;
  property __UPDARE_PROJECT: Boolean read UPDARE_PROJECT write UPDARE_PROJECT;
  property __CONTRACTOR_NAME: string read CONTRACTOR_NAME write CONTRACTOR_NAME;
  property __BASE_NAME: string read BASE_NAME write BASE_NAME;
  property __PRICE: string read PRICE write PRICE;
  property __PROJECT: string read PROJECT write PROJECT;
constructor Create(); overload;


 {
         <INFO>
          <STATUS>true</STATUS>
          <STATUS_INFO>Сервер в работе</STATUS_INFO>
          <IP>172.158.15.12</IP>
          <BALANCE>18.82</BALANCE>
          <SERVER_VERSION>1.1.4.42</SERVER_VERSION>
          <LINK_DOWNLOAD>http://www.test.stolinservice.by/_update/ars_store/1.1.4.37.zip</LINK_DOWNLOAD>
        </INFO>
 }
 end;
implementation

constructor TlicenseServer.Create;
  begin
    //
  end;

end.
