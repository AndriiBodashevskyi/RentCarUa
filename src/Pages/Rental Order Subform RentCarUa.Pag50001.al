page 50001 "Rental Order Subform RentCarUa"
{
    // AutoSplitKey = true;
    Caption = 'Rental Order Lines';
    // DelayedInsert = true;
    // LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Rental Order Line RentCarUa";
    
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("Car No."; Rec."Car No.")
                {
                    Caption = 'Car No.';
                    ToolTip = 'Specifies the value of the Car No. field';
                    ApplicationArea = All;
                }
                field("Order No."; Rec."Order No.")
                {
                    Caption = 'Order No.';
                    ToolTip = 'Specifies the value of the Order No. field';
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    Caption = 'Line No';
                    ToolTip = 'Specifies the value of the Line No. field';
                    ApplicationArea = All;
                    Editable = false;
                    Visible = false;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                    ToolTip = 'Specifies the value of the Unit Price field';
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    Caption = 'Unit of Measure';
                    ToolTip = 'Specifies the value of the Unit of Measure field';
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                    ToolTip = 'Specifies the value of the Currency Code field';
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies the value of the Starting Date field';
                    ApplicationArea = All;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ToolTip = 'Specifies the value of the Ending Date field';
                    ApplicationArea = All;
                }
                field("Quantity of Days"; Rec."Quantity of Days")
                {
                    ToolTip = 'Specifies the value of the Quantity of Days field';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Amount; Rec.Amount)
                {
                    Caption = 'Amount';
                    ToolTip = 'Specifies the value of the Amount field';
                    ApplicationArea = All;
                }
            }
        }
    }
}
