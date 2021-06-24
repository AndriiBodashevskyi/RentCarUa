page 50006 "Car Details FactBox RentCarUa"
{
    Caption = 'Car Details';
    PageType = CardPart;
    SourceTable = Item;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Mileage RentCarUa"; Rec."Mileage RentCarUa")
                {
                    ToolTip = 'Specifies the value of the Mileage field';
                    ApplicationArea = All;
                    Caption = 'Mileage';
                    Lookup = true;
                }
                field("Is Available Now RentCarUa"; Rec."Is Available Now RentCarUa")
                {
                    ToolTip = 'Specifies the value of the Is Available Now field';
                    ApplicationArea = All;
                    Caption = 'Is Available Now';
                    Lookup = true;
                }
                field("Photo RentCarUa"; Rec."Photo RentCarUa")
                {
                    ToolTip = 'Specifies the value of the Photo field';
                    ApplicationArea = All;
                    Caption = 'Photo';
                    Lookup = true;
                }
            }
        }
    }
}
