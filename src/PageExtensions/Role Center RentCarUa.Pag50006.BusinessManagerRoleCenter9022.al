pageextension 50006 "Role Center RentCarUa" extends "Business Manager Role Center" //9022
{
    actions
    {
        addafter(Action41)
        {
            group("Rental RentCarUa")
            {
                Caption = 'RentCarUa';
                ToolTip = 'Make rental orders and find car for rent';
                action("Cars RentCarUa")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cars';
                    RunObject = page "Item List";
                }
                action("Rental Orders RentCarUa")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Rental Orders';
                    RunObject = page "Sales Order List RentCarUa";
                }
                action("Rental Customers RentCarUa")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customers';
                    RunObject = page "Customer List";
                }
            }
        }
        addafter("Sales Invoice")
        {
            action("Rental Order RentCarUa")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Rental Order';
                RunObject = page "Sales Order RentCarUa";
                RunPageMode = Create;
                ToolTip = 'Create a new rental order';
            }
        }
    }
}
