page 50000 "Sales Order RentCarUa"
{
    Caption = 'Sales Order RentCarUa';
    PageType = Document;
    SourceTable = "Rental Sales Header RentCarUa";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Doc. No."; Rec."Doc. No.")
                {
                    Caption = 'Doc. No.';
                    ToolTip = 'Specifies the value of the Doc. No. field';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                    ToolTip = 'Specifies the value of the Customer No. field';
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Caption = 'Location Code';
                    ToolTip = 'Specifies the value of the Location Code field';
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    Caption = 'Order Date';
                    ToolTip = 'Specifies the value of the Order Date field';
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                    ToolTip = 'Specifies the value of the Posting Date field';
                    ApplicationArea = All;
                }
            }
            part(SalesLines; "Sales Order Subform RentCarUa")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = FIELD("Doc. No.");
                UpdatePropagation = Both;
            }
        }
    }   
}
