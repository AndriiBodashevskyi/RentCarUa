tableextension 50001 "Rental Salesperson RentCarUa" extends "Salesperson/Purchaser" //13
{
    fields
    {     
         field(50000; "ResponsibilityCenter RentCarUa"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
            DataClassification = CustomerContent;
        }
        field(50001; "Manager RentCarUa"; Boolean)
        {
            Caption = 'Manager';
            DataClassification = CustomerContent;
        }
        field(50002; "Blocked RentCarUa"; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = CustomerContent;
        }
        field(50004; "Age RentCarUa"; Integer)
        {
            Caption = 'Age';
            DataClassification = CustomerContent;
        }
        field(50005; "Work Experience RentCarUa"; Integer)
        {
            Caption = 'Work Experience';
            DataClassification = CustomerContent;
        }
        field(50006; "Working Hours / Week RentCarUa"; Blob)
        {
            Caption = 'Working Hours / Week';
            DataClassification = CustomerContent;
        }
    }
}
