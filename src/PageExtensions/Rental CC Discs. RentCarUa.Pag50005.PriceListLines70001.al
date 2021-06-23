pageextension 50005 "Rental C/C Discs. RentCarUa" extends "Price List Lines" //70001
{
    Caption = 'Rental Customer/Car Discounts';
    layout
    {
        addlast(Control1)
        {
            field("Code RentCarUa"; Rec."Code RentCarUa")
            {
                ToolTip = 'Specifies the value of the Code field';
                ApplicationArea = All;
            }
            field("Type RentCarUa"; Rec."Type RentCarUa")
            {
                ToolTip = 'Specifies the value of the Type field';
                ApplicationArea = All;
            }
            field("Value RentCarUa"; Rec."Value RentCarUa")
            {
                ToolTip = 'Specifies the value of the Value field';
                ApplicationArea = All;
            }
        }
    }
}
