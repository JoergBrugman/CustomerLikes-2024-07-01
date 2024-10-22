codeunit 50201 "BSCL Subscriber Store"
{
    [EventSubscriber(ObjectType::Table, Database::"BSB Book", OnBeforeOnDelete, '', false, false)]
    local procedure "BSB Book_OnBeforeOnDelete"(var Rec: Record "BSB Book"; var IsHandled: Boolean)
    var
        Customer: Record Customer;
    begin
        if IsHandled then
            exit;

        // Rec.CalcFields("BSCL No. of Customer Likes"); //RoundTrip zum SQL-Server!!
        // if Rec."BSCL No. of Customer Likes" > 0 then 
        //   Error('XXX');

        Customer.SetCurrentKey("BSB Favorite Book No."); // Nur machen, wenn Key vorhanden oder SQL-Server hat gute Statistik-Tabellen
        Customer.SetRange("BSB Favorite Book No.", Rec."No.");
        if not Customer.IsEmpty then
            Error(OnDeleteBookErr, Rec.TableCaption, Rec."No.");

        IsHandled := true;
    end;

    var
        OnDeleteBookErr: Label 'You are not allowed to delete %1 %2 because it ist liked by one or more customer', Comment = 'de-DE=Sie dürfen das %1 %2 nicht löschen, da es von einem oder mehreren Debitoren geliked wurde';
}