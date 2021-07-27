pageextension 50002 "Rental Customers RentCarUa" extends "Customer List" //22
{
    Caption = 'Rental Customers';
    layout
    {
        addlast(Control1)
        {
            field("Amount RentCarUa"; Rec.Amount)
            {
                ToolTip = 'Specifies the value of the Amount field';
                ApplicationArea = All;
            }
            field("Orders Quantity RentCarUa"; Rec."Orders Quantity RentCarUa")
            {
                ToolTip = 'Specifies the value of the Orders Quantity field';
                ApplicationArea = All;
            }
            field("Additional Details RentCarUa"; Rec."Additional Details RentCarUa")
            {
                ToolTip = 'Specifies the value of the Additional Details field';
                ApplicationArea = All;
            }
            field("Birth Date RentCarUa"; Rec."Birth Date RentCarUa")
            {
                ToolTip = 'Specifies the value of the Birth Date field';
                ApplicationArea = All;
            }
            field("Credit Card Number RentCarUa"; Rec."Credit Card Number RentCarUa")
            {
                ToolTip = 'Specifies the value of the Credit Card Number field';
                ApplicationArea = All;
            }
            field("Driving Exper. Years RentCarUa"; Rec."Driving Exper. Years RentCarUa")
            {
                ToolTip = 'Specifies the value of the Driving Experience field';
                ApplicationArea = All;
            }
            field("Licence Number RentCarUa"; Rec."Licence Number RentCarUa")
            {
                ToolTip = 'Specifies the value of the Driving Licence Number field';
                ApplicationArea = All;
            }
            field("Is VIP Client RentCarUa"; Rec."Is VIP Client RentCarUa")
            {
                ToolTip = 'Specifies the value of the VIP Client field';
                ApplicationArea = All;
            }
            field("Discount RentCarUa"; Rec."Discount RentCarUa")
            {
                ToolTip = 'Specifies the value of the Discount field';
                ApplicationArea = All;
            }
        }
    }
}
