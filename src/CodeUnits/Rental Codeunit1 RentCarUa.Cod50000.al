codeunit 50000 "Rental Codeunit1 RentCarUa"
{
    procedure Rental_Procedure1_RentCarUa(RentalSalesHeader: Record "Rental Sales Header RentCarUa"; var RentalSalesLine: Record "Rental Sales Line RentCarUa"; IsModify: Boolean)
    var
        Customer: Record Customer;
        Label1Err: Label 'Sorry! Yours driving experience is less than one year! You could not rent a car';
    begin
        if (RentalSalesLine."Ending Date" <> 0D) and (RentalSalesLine."Starting Date" <> 0D) then
            RentalSalesLine."Quantity of Days" := RentalSalesLine."Ending Date" - RentalSalesLine."Starting Date";
        RentalSalesLine.Amount := RentalSalesLine.Quantity * RentalSalesLine."Unit Price" * (RentalSalesLine."Quantity of Days");
        RentalSalesHeader.Get(RentalSalesLine."Document No.");
        Customer.Get(RentalSalesHeader."Customer No.");
        if Customer."Is VIP Client RentCarUa" = true then
            RentalSalesLine.Amount := RentalSalesLine.Amount - (RentalSalesLine.Amount * 0.15);
        if Customer."Driving Exper. Years RentCarUa" < 1 then
            error(Label1Err);
        if IsModify = true then
            RentalSalesLine.Modify();
    end;
}
