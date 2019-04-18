pageextension 50108 "SalesReceivablesSetup_WIG" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(General)

        {
            field("Level"; Level_WIG)
            {
                ApplicationArea = All;
                Caption = 'Level';
            }
        }
    }

}

