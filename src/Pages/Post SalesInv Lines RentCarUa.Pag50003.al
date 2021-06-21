page 50003 "Post SalesInv Lines RentCarUa"
{
    AutoSplitKey = true;
    Caption = 'Posted Sales Invoice Lines RentCarUa';
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Posted Rental Line RentCarUa";
    
layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field(Amount; Rec.Amount)
                {
                    Caption = 'Amount';
                    ToolTip = 'Specifies the value of the Amount field';
                    ApplicationArea = All;
                }
                field("Car No."; Rec."Car No.")
                {
                    Caption = 'Car No.';
                    ToolTip = 'Specifies the value of the Car No. field';
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                    ToolTip = 'Specifies the value of the Currency Code field';
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Document No.';
                    ToolTip = 'Specifies the value of the Document No. field';
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    Caption = 'Line No';
                    ToolTip = 'Specifies the value of the Line No. field';
                    ApplicationArea = All;
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
            }
        }
    }
}




//TODO: филды начало аренды, конец аренды
