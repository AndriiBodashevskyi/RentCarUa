tableextension 50002 "Rental Customer RentCarUa" extends Customer //18
{
    fields
    {
        field(50000; "VIP Client RentCarUa"; Boolean)
        {
            Caption = 'VIP Client';
            DataClassification = CustomerContent;
        }
        field(50001; "Licence Number RentCarUa"; Code[20])
        {
            Caption = 'Driving Licence Number';
            DataClassification = CustomerContent;
        }
        field(50002; "Birth Date RentCarUa"; Date)
        {
            Caption = 'Birth Date';
            DataClassification = CustomerContent;
        }
        field(50003; "Credit Card Number RentCarUa"; Code[20])
        {
            Caption = 'Credit Card Number';
            DataClassification = CustomerContent;
        }
        field(50004; "Additional Details RentCarUa"; Text[2048])
        {
            Caption = 'Additional Details';
            DataClassification = CustomerContent;
        }
        field(50005; "Driving Experience RentCarUa"; Decimal)
        {
            Caption = 'Driving Experience';
            DataClassification = CustomerContent;
        }
        field(50006; "Discount RentCarUa"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
    }
}
