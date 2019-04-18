codeunit 50100 "SalesEvents_WIG"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post",

    'OnBeforePostSalesDoc', '', true, true)]

    procedure OnBeforePostSalesDocument(SalesHeader: Record "Sales Header")
    var

        Cust: Record Customer;
        WL: Enum WarningLeveleENum;
    begin
        IF Cust.get(SalesHeader."Bill-to Customer No.") then begin
            IF Cust.WarningLevel_WIG = WL::Low then
                Message('Customer Warning Level is Low');
            IF Cust.WarningLevel_WIG = WL::Hight then
                Error('Customer Warning Level is Hight!!!!!!!!!!');
        end;
    end;



}