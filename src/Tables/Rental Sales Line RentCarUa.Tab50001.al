table 50001 "Rental Sales Line RentCarUa"
{
    Caption = 'Rental Order Line';
    DataClassification = CustomerContent;
    DrillDownPageID = "Sales Order Subform RentCarUa";
    LookupPageID = "Sales Order Subform RentCarUa";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
            TableRelation = "Rental Sales Header RentCarUa"."Document No.";

            // trigger OnValidate()
            // var
            //     RentalSalesHader: Record "Rental Sales Header RentCarUa";
            //     Customer: Record Customer;
            // begin
            //     "Quantity of Days" := "Ending Date" - "Starting Date";
            //     Amount := Quantity * "Unit Price" * ("Quantity of Days");
            //     RentalSalesHader.Get(Rec."Document No.");
            //     Customer.Get(RentalSalesHader."Customer No.");
            //     if Customer."Is VIP Client RentCarUa" = true then
            //         Amount := Amount - (Amount * 0.15);
            //     if Customer."Driving Exper. Years RentCarUa" < 1 then
            //         error('Sorry! Yours driving experience is less than one year! You could not rent a car');
            //     Modify();
            // end;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                // Modify();
            end;
        }
        field(3; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            DataClassification = CustomerContent;
            TableRelation = Item;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                // Modify();
            end;
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(6; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(7; "Unit of Measure"; Text[50])
        {
            Caption = 'Unit of Measure';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure".Description;
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(9; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = CustomerContent;
            TableRelation = Currency;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(10; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(11; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RentalSalesHader: Record "Rental Sales Header RentCarUa";
                Customer: Record Customer;
                Label1Err : Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
                Amount := Quantity * "Unit Price" * ("Quantity of Days");
                RentalSalesHader.Get(Rec."Document No.");
                Customer.Get(RentalSalesHader."Customer No.");
                if Customer."Is VIP Client RentCarUa" = true then
                    Amount := Amount - (Amount * 0.15);
                if Customer."Driving Exper. Years RentCarUa" < 1 then
                    error(Label1Err);
                Modify();
            end;
        }
        field(12; "Quantity of Days"; Integer)
        {
            Caption = 'Quantity of Days';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                "Quantity of Days" := "Ending Date" - "Starting Date";
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

//TODO: 1) проверка на пустые даты
//TODO: 2) Quantity of days, starting date and ending date
//TODO: 3) field Name не в ручную
//TODO: 4) Discount
//TODO: 5) CodeUnit
//TODO: 6) Labels



