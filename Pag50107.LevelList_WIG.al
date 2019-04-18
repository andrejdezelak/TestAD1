page 50107 "LevelList_WIG"
{
    PageType = List;
    //ApplicationArea = lists;
    SourceTable = Level_WIG;
    CardPageId = LevelWS_WIG;
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Level; Level)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    Editable = false;
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
            action("Open Level Worksheet")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    page.Run(50109);
                end;
            }
        }
    }
}

