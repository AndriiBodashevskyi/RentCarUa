page 50000 "Rental Order RentCarUa"
{
    Caption = 'Rental Order';
    PageType = Document;
    SourceTable = "Rental Order Header RentCarUa";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {   
        area(FactBoxes)
        {
            part("Car Details FactBox RentCarUa"; "Car Details FactBox RentCarUa")
            {
                Caption = 'Car Details FactBox';
                ApplicationArea = All;
                Provider = SalesLines;
            }
        }
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
    actions
    {
        area(Processing)
        {
            action("Rental Post")
            {
                ApplicationArea = All;
                Caption = 'Rental Post';
                Image = Post;
                ToolTip = 'Rental Post';

                trigger OnAction()
                var
                    RentalPostOrder: Codeunit "Rental Post Order RentCarUa";
                begin
                    CurrPage.Update(true);
                    Commit();
                    RentalPostOrder.Run(Rec);
                end;
            }
        }
    }  
}
