table 50001 "Rental Sales Line RentCarUa"
{
    Caption = 'Rental Sales Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
            TableRelation = "Rental Sales Header RentCarUa"."Doc. No.";
        }
        field(2; "Line No."; Code[20])
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            DataClassification = CustomerContent;
            TableRelation = Item;
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(6; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;
        }
        field(7; "Unit of Measure"; Text[50])
        {
            Caption = 'Unit of Measure';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure".Description;
            ValidateTableRelation = false;
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(9; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = CustomerContent;
            TableRelation = Currency;
        }
        field(10; "Starting Date"; Date)        
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;
        }
        field(11; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            DataClassification = CustomerContent;
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