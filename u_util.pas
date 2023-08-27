unit u_util;

interface

uses Vcl.Mask, System.SysUtils;

type
  TUtil = class
    private

    public
      class function RemoveMascara(Value : TMaskEdit): string;
  end;

implementation

{ TUtil }

class function TUtil.RemoveMascara(Value: TMaskEdit): string;
  var texto : string;
begin
  texto := Value.Text;
  texto := StringReplace(texto,'-','', [rfReplaceAll, rfIgnoreCase]);
  texto := StringReplace(texto,'/','', [rfReplaceAll, rfIgnoreCase]);
  texto := StringReplace(texto,'.','', [rfReplaceAll, rfIgnoreCase]);
  Result :=  texto;
end;

end.
