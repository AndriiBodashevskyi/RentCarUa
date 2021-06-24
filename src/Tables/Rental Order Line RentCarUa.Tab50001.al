table 50001 "Rental Order Line RentCarUa"
{
    Caption = 'Rental Order Line';
    DataClassification = CustomerContent;
    DrillDownPageID = "Rental Order Subform RentCarUa";
    LookupPageID = "Rental Order Subform RentCarUa";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
            TableRelation = "Rental Order Header RentCarUa"."Document No.";

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
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, false);
            end;
        }
        field(3; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            DataClassification = CustomerContent;
            TableRelation = Item;

            trigger OnValidate()
            var
                Item: Record Item;
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, false);
                if Item.Get("Car No.") then
                    Name := Item.Description;
            end;
        }
        field(4; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
            end;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
            end;
        }
        field(6; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
            RentalCalcAmount: Codeunit "Rental Calc. Amount RentCarUa";
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
                RentalCalcAmount.Calculate_Discount(); // need to finish because i didn't understand how price list line works 
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
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
            end;
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
            end;
        }
        field(9; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = CustomerContent;
            TableRelation = Currency;

            trigger OnValidate()
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
            end;
        }
        field(10; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
            end;
        }
        field(11; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                RentalCalcAmount.Rental_Calc_Amount_RentCarUa(RentalSalesHader, rec, true);
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
    var
        RentalSalesHader: Record "Rental Order Header RentCarUa";
        RentalCalcAmount: Codeunit "Rental Calc. Amount RentCarUa";
}



