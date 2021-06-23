pageextension 50004 "Rental SPerson Card RentCarUa" extends "Salesperson/Purchaser Card" //5116
{
layout
    {
        addlast(General)
        {
            field("Age RentCarUa"; Rec."Age RentCarUa")
            {
                ToolTip = 'Specifies the value of the Age field';
                ApplicationArea = All;
            }
            field("Blocked RentCarUa"; Rec."Blocked RentCarUa")
            {
                ToolTip = 'Specifies the value of the Blocked field';
                ApplicationArea = All;
            }
            field("Manager RentCarUa"; Rec."Manager RentCarUa")
            {
                ToolTip = 'Specifies the value of the Manager field';
                ApplicationArea = All;
            }
            field("ResponsibilityCenter RentCarUa"; Rec."ResponsibilityCenter RentCarUa")
            {
                ToolTip = 'Specifies the value of the Responsibility Center field';
                ApplicationArea = All;
            }
            field("Work Experience RentCarUa"; Rec."Work Experience RentCarUa")
            {
                ToolTip = 'Specifies the value of the Work Experience field';
                ApplicationArea = All;
            }
            field("Working Hours / Week RentCarUa"; Rec."Working Hours / Week RentCarUa")
            {
                ToolTip = 'Specifies the value of the Working Hours / Week field';
                ApplicationArea = All;
            }
        }
    }
}
