table 50101 "Level_WIG"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = LevelList_WIG;
    LookupPageId = LevelList_WIG;

    fields
    {
        field(1; Level; Enum WarningLeveleENum)
        {
            DataClassification = AccountData;

        }
        field(2; DEscription; Text[30])
        {
            DataClassification = AccountData;

        }
    }

    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}