table 50001 "Rental Sales Line RentCarUa"
{
    Caption = 'Rental Sales Line RentCarUa';
    DataClassification = CustomerContent;
    DrillDownPageID = "Sales Order Subform RentCarUa";
    LookupPageID = "Sales Order Subform RentCarUa";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
            TableRelation = "Rental Sales Header RentCarUa"."Doc. No.";

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(2; "Line No."; Code[20])
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(3; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            DataClassification = CustomerContent;
            TableRelation = Item;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(6; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(7; "Unit of Measure"; Text[50])
        {
            Caption = 'Unit of Measure';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure".Description;
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(9; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = CustomerContent;
            TableRelation = Currency;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(10; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
        field(11; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price" * ("Ending Date" - "Starting Date");
            end;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
