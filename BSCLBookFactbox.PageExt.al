pageextension 50200 "BSCL Book Factbox" extends "BSB Book Factbox"
{
    layout
    {
        addlast(Content)
        {
            //TODO FlowField-Upadte in Factbox machen
            field("BSCL No. of Customer Likes"; Rec."BSCL No. of Customer Likes")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the No. of Customer Likes field.', Comment = '%';
            }
        }
    }
}