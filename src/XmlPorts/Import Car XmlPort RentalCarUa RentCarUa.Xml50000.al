xmlport 50000 "Import Car XmlPort RentalCarUa"
{
    Caption = 'Rental XmlPort';
    Direction = Import;
    Format = Xml;
    UseRequestPage = false;
    
    schema
    {
        textelement(Root)
        {
            tableelement(Car; Item)
            {
                XmlName = 'Car';
                fieldelement(BodyStyleRentCarUa; Car."Body Style RentCarUa")
                {
                }
                fieldelement(BrandModelRentCarUa; Car."Brand&Model RentCarUa")
                {
                }
                fieldelement(ColorRentCarUa; Car."Color RentCarUa")
                {
                }
                fieldelement(DiscountRentCarUa; Car."Discount RentCarUa")
                {
                }
                fieldelement(EnginePowerRentCarUa; Car."Engine Power RentCarUa")
                {
                }
                fieldelement(FuelTypeRentCarUa; Car."Fuel Type RentCarUa")
                {
                }
                fieldelement(ManufacturerCountryRentCarUa; Car."Manufacturer Country RentCarUa")
                {
                }
                fieldelement(ManufacturerYearRentCarUa; Car."Manufacturer Year RentCarUa")
                {
                }
                fieldelement(MileageRentCarUa; Car."Mileage RentCarUa")
                {
                }
                fieldelement(RegistrationNumberRentCarUa; Car."Registration Number RentCarUa")
                {
                }
                fieldelement(TransmissionRentCarUa; Car."Transmission RentCarUa")
                {
                }
            }
        }
    }
}
