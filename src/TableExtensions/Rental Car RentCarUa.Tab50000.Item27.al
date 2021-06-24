tableextension 50000 "Rental Car RentCarUa" extends Item //27
{
    Caption = 'Rental Car';
    
    fields
    {
        field(50000; "Body Style RentCarUa"; Enum "Body Style RentCarUa")
        {
            Caption = 'Body Style';
            DataClassification = CustomerContent;
        }
        field(50001; "Manufacturer Country RentCarUa"; Enum "Manufacturer Country RentCarUa")
        {
            Caption = 'Manufacturer Country';
            DataClassification = CustomerContent;
        }
        field(50002; "Manufacturer Year RentCarUa"; Integer)
        {
            Caption = 'Manufacturer Year';
            DataClassification = CustomerContent;
        }
        field(50003; "Brand&Model RentCarUa"; Enum "Brand&Model RentCarUa")
        {
            Caption = 'Brand&Model';
            DataClassification = CustomerContent;
        }
        field(50004; "Color RentCarUa"; Enum "Color RentCarUa")
        {
            Caption = 'Color';
            DataClassification = CustomerContent;
        }
        field(50005; "Mileage RentCarUa"; Integer)
        {
            Caption = 'Mileage';
            DataClassification = CustomerContent;
        }
        field(50006; "Fuel Type RentCarUa"; Enum "Fuel Type RentCarUa")
        {
            Caption = 'Fuel Type';
            DataClassification = CustomerContent;
        }
        field(50007; "Transmission RentCarUa"; Enum "Transmission RentCarUa")
        {
            Caption = 'Transmission';
            DataClassification = CustomerContent;
        }
        field(50008; "Engine Power RentCarUa"; Decimal)
        {
            Caption = 'Engine Power';
            DataClassification = CustomerContent;
        }
        field(50009; "Registration Number RentCarUa"; Code[20])
        {
            Caption = 'Registration Number';
            DataClassification = CustomerContent;
        }
        field(50010; "Discount RentCarUa"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
        field(50011; "Is Available Now RentCarUa"; Boolean)
        {
            Caption = 'Is Available Now';
            DataClassification = CustomerContent;
        }
        field(50012; "Photo RentCarUa"; Blob)
        {
            Caption = 'Photo';
            DataClassification = CustomerContent;
        }
    }
}
