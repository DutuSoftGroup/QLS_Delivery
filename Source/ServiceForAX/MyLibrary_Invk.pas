unit MyLibrary_Invk;

{----------------------------------------------------------------------------}
{ This unit was automatically generated by the RemObjects SDK after reading  }
{ the RODL file associated with this project .                               }
{                                                                            }
{ Do not modify this unit manually, or your changes will be lost when this   }
{ unit is regenerated the next time you compile the project.                 }
{----------------------------------------------------------------------------}

{$I RemObjects.inc}

interface

uses
  {vcl:} Classes,
  {RemObjects:} uROXMLIntf, uROServer, uROServerIntf, uROTypes, uROClientIntf,
  {Generated:} MyLibrary_Intf;

type
  TRemService_Invoker = class(TROInvoker)
  private
  protected
  public
    constructor Create; override;
  published
    procedure Invoke_GetServerTime(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
    procedure Invoke_DL2WRZSINFO(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
  end;

implementation

uses
  {RemObjects:} uRORes, uROClient;

{ TRemService_Invoker }

constructor TRemService_Invoker.Create;
begin
  inherited Create;
  FAbstract := False;
end;

procedure TRemService_Invoker.Invoke_GetServerTime(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
{ function GetServerTime: DateTime; }
var
  lResult: DateTime;
begin
  try
    lResult := (__Instance as IRemService).GetServerTime;

    __Message.InitializeResponseMessage(__Transport, 'MyLibrary', 'RemService', 'GetServerTimeResponse');
    __Message.Write('Result', TypeInfo(DateTime), lResult, [paIsDateTime]);
    __Message.Finalize;
    __Message.UnsetAttributes(__Transport);

  finally
  end;
end;

procedure TRemService_Invoker.Invoke_DL2WRZSINFO(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
{ function DL2WRZSINFO(const BusinessType: Widestring; const XMLPrimaryKey: Widestring): Integer; }
var
  BusinessType: Widestring;
  XMLPrimaryKey: Widestring;
  lResult: Integer;
begin
  try
    __Message.Read('BusinessType', TypeInfo(Widestring), BusinessType, []);
    __Message.Read('XMLPrimaryKey', TypeInfo(Widestring), XMLPrimaryKey, []);

    lResult := (__Instance as IRemService).DL2WRZSINFO(BusinessType, XMLPrimaryKey);

    __Message.InitializeResponseMessage(__Transport, 'MyLibrary', 'RemService', 'DL2WRZSINFOResponse');
    __Message.Write('Result', TypeInfo(Integer), lResult, []);
    __Message.Finalize;
    __Message.UnsetAttributes(__Transport);

  finally
  end;
end;

initialization
end.