Page 50109 "LevelWS_WIG"
{
    PageType = Worksheet;
    //ApplicationArea = lists;
    SourceTable = Level_WIG;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Level; Level)
                {
                    ApplicationArea = All;

                }
                field(DEscription; Description)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}