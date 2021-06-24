codeunit 50001 "Rental Post Order RentCarUa"
{
    TableNo = "Rental Order Header RentCarUa";

    trigger OnRun()
    var
        DoneMsg: Label 'Done';
    begin
        CopyRentalOrderToPostedRO(Rec);
        Message(DoneMsg);
    end;

    local procedure CopyRentalOrderToPostedRO(var RentalSalesHeader: Record "Rental Order Header RentCarUa")
    var
        PostedRentalHeader: Record "Posted Rental Header RentCarUa";
        PostDocumentNo: Code[20];
    begin
        PostedRentalHeader."Order No." := '';
        PostedRentalHeader.Insert(true);
        PostDocumentNo := PostedRentalHeader."Order No.";
        PostedRentalHeader.TransferFields(RentalSalesHeader);
        PostedRentalHeader."Order No." := PostDocumentNo;
        PostedRentalHeader.Modify(true);
        CopyRentalOrderLineToPostedROLine(RentalSalesHeader, PostDocumentNo);
        RentalSalesHeader.Delete(true);
    end;

    local procedure CopyRentalOrderLineToPostedROLine(var RentalSalesHeader: Record "Rental Order Header RentCarUa"; PostDocumentNo: Code[20])
    var
        RentalOrderLine: Record "Rental Order Line RentCarUa";
        PostedRentalLine: Record "Posted Rental Line RentCarUa";
        TempRentalOrderLine: Record "Rental Order Line RentCarUa" temporary;
    begin
        RentalOrderLine.SetRange("Order No.", RentalSalesHeader."Order No.");
        if not RentalOrderLine.FindSet(false, false) then
            exit;

        repeat
            PostedRentalLine."Order No." := PostDocumentNo;
            PostedRentalLine."Line No." := RentalOrderLine."Line No.";
            PostedRentalLine.Insert(true);
            PostedRentalLine.TransferFields(RentalOrderLine);
            PostedRentalLine."Order No." := PostDocumentNo;
            PostedRentalLine.Modify(true);
        until RentalOrderLine.Next() = 0;
    end;
}