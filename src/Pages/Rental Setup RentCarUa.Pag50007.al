page 50007 "Rental Setup RentCarUa"
{
    
    Caption = 'Rental Setup RentCarUa';
    SourceTable = "Rental Setup RentCarUa";
    UsageCategory = Administration;
    ApplicationArea = All;
    DeleteAllowed = true;
    InsertAllowed = true;
    PageType = Card;
    
    layout
    {
        area(content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Order Nos."; Rec."Order Nos.")
                {
                    ToolTip = 'Specifies the value of the Order Nos. field';
                    ApplicationArea = All;
                }
                field("Posted Order Nos."; Rec."Posted Order Nos.")
                {
                    ToolTip = 'Specifies the value of the Posted Order Nos. field';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
