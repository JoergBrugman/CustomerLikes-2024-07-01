pageextension 50201 "BSCL Customer Card" extends "Customer Card"
{
    actions
    {
        addlast(Category_Category9)
        {
            actionref(FavoriteBookCard_Promoted; "BSCL FavoriteBookCard") { }
        }
        addfirst(navigation)
        {
            action("BSCL FavoriteBookCard")
            {
                Caption = 'Book Card';
                Image = Card;
                ApplicationArea = All;
                ToolTip = 'Executes the Book Card action.';

                trigger OnAction()
                begin
                    Rec.ShowFavoriteBook();
                end;
            }
        }
    }
}