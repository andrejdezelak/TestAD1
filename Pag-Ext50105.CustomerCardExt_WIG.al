pageextension 50105 "CustomerCardExt_WIG" extends "Customer Card" //MyTargetPageId
{
    layout
    {
        addlast(General)
        {
            field(WarningLevel_WIG; WarningLevel_WIG)
            {
                ApplicationArea = All;
                Caption = 'Warning Level';
            }
        }

    }

    actions

    {
        addlast("F&unctions")
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

