tableextension 50003 "RentalCar C/C Disc. RentCarUa" extends "Price List Line" //7001
{
    Caption = 'Rental Customer/Car Discount';
    fields
    {
        field(50000; "Code RentCarUa"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(50001; "Type RentCarUa"; Enum "Customer/Car RentCarUa")
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(50002; "Value RentCarUa"; Decimal)
        {
            Caption = 'Value';
            DataClassification = CustomerContent;
        }
    }
}
