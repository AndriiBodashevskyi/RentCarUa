codeunit 50001 "Rental Post Order RentCarUa"
{
    TableNo = "Rental Order Header RentCarUa";

    trigger OnRun()
    begin
        CopyRentalOrderToPostedRO(Rec);
    end;

    local procedure CopyRentalOrderToPostedRO(var RentalSalesHeader: Record "Rental Order Header RentCarUa")
    var
        PostedRentalHeader: Record "Posted Rental Header RentCarUa";
    begin
        PostedRentalHeader."Document No." := '';
        PostedRentalHeader.Insert(true);
        CopyRentalOrderLineToPostedROLine(RentalSalesHeader, PostedRentalHeader."Document No.");
    end;

    local procedure CopyRentalOrderLineToPostedROLine(var RentalSalesHeader: Record "Rental Order Header RentCarUa"; PostDocumentNo: Code[20])
    var
        RentalOrderLine: Record "Rental Order Line RentCarUa";
        PostedRentalLine: Record "Posted Rental Line RentCarUa";
        TempRentalOrderLine: Record "Rental Order Line RentCarUa" temporary;
    begin
        RentalOrderLine.SetRange("Document No.", RentalSalesHeader."Document No.");
        if not RentalOrderLine.FindSet(false, false) then 
            exit;

            repeat
                PostedRentalLine."Document No." := PostDocumentNo;
                PostedRentalLine."Line No." := RentalOrderLine."Line No.";
                PostedRentalLine.Insert(true);
                PostedRentalLine.TransferFields(RentalOrderLine);
                PostedRentalLine.Modify(true);
            until RentalOrderLine.Next() = 0;
    end;
}