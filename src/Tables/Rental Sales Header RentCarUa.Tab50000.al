table 50000 "Rental Sales Header RentCarUa"
{
    Caption = 'Rental Sales Header RentCarUa';
    DataClassification = CustomerContent;
    DrillDownPageId = "Sales Order List RentCarUa";
    LookupPageId = "Sales Order List RentCarUa";

    fields
    {
        field(1; "Doc. No."; Code[20])
        {
            Caption = 'Doc. No.';
            DataClassification = CustomerContent;
        }
        field(2; "Salesperson No."; Code[20])
        {
            Caption = 'Salesperson No.';
            DataClassification = CustomerContent;
            TableRelation = "Salesperson/Purchaser";
        }
        field(3; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(4; "Order Date"; Date)
        {
            Caption = 'Order Date';
            DataClassification = CustomerContent;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(6; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            DataClassification = CustomerContent;
            TableRelation = Location;
        }
    }
    keys
    {
        key(PK; "Doc. No.")
        {
            Clustered = true;
        }
    }
}
