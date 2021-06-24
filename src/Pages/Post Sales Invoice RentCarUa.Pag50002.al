page 50002 "Post Sales Invoice RentCarUa"
{
    Caption = 'Posted Rental Invoice';
    PageType = Document;
    SourceTable = "Posted Rental Header RentCarUa";
    UsageCategory = Documents;
    ApplicationArea = All;
    Editable = false;
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Document No.';
                    ToolTip = 'Specifies the value of the Document No. field';
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
            part(SalesLines; "Rental Order Subform RentCarUa")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = FIELD("Document No.");
                UpdatePropagation = Both;
            }
        }
    }   
}
