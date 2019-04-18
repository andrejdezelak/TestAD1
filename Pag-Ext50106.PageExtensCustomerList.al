pageextension 50106 "PageExtensCustomerList" extends "Customer List"
{
    layout
    {
        addafter("Responsibility Center")
        {
            field(WarningLevel_WIG; WarningLevel_WIG)
            {
                ApplicationArea = All;
            }
        }
    }

    actions


    {
        addlast(Display)
        {
            group(UpdateCustomer)
            {
                Action("Update Warning Level")
                {
                    ApplicationArea = All;
                    Caption = 'Update Warning Level!';

                    trigger OnAction();
                    begin
                        Codeunit.Run(50101);
                    end;
                }

            }
        }
    }

}
