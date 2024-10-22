codeunit 50200 "BSCL Book Process eBook Impl." implements "BSB Book Type Process"
{
    procedure StartDeployBook()
    begin
        Message('PDF auf Kundenportal hochladen');
    end;

    procedure StartDeliverBook()
    begin
        Message('Download-Email an den Kunden senden');
    end;
}