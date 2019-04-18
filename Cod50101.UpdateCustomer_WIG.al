codeunit 50101 "UpdateCustomer_WIG"
{
    trigger OnRun()
    begin
        cust.ModifyAll(WarningLevel_WIG, WarningLevel::Low);
        Message(MsgTxt1);
    end;

    var
        Cust: Record Customer;
        WarningLevel: Enum WarningLeveleENum;
        MsgTxt1: Label 'Done';

}
