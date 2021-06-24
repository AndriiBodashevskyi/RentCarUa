table 50000 "Rental Sales Header RentCarUa"
{
    Caption = 'Rental Order Header';
    DataClassification = CustomerContent;
    DrillDownPageId = "Sales Order List RentCarUa";
    LookupPageId = "Sales Order List RentCarUa";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "Document No." <> xRec."Document No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Order No. RentCarUa");
                    "No. Series" := '';
                end;
            end;
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
        field(7; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
    begin
        if "Document No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Order No. RentCarUa");
            NoSeriesMgt.InitSeries(SalesSetup."Order No. RentCarUa", xRec."No. Series", 0D, "Document No.", "No. Series");
        end;
    end;

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
}
