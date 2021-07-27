report 50000 "Customer Profit RentCarUa"
{
    ApplicationArea = All;
    Caption = 'Customer Profit';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = './src/Reports/CustomerProfit.docx';

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            column(No; "No.")
            {

            }
            column(Name; Name)
            {

            }
            // column(OrdersQty; OrdersQty)
            // {

            // }
            column(OrdersQuantity; "Orders Quantity RentCarUa")
            {

            }
            // column(Amount; Amount)
            // {

            // }
            column(Amount; Amount)
            {

            }

            column(TotalAmount; TotalAmount)
            {

            }

            trigger OnAfterGetRecord()
            var
                // SalesHeader: Record "Sales Header";
                SalesHeader: Record "Rental Order Header RentCarUa";
            begin
                SalesHeader.SetRange("Customer No.", "No.");
                IF SalesHeader.FindSet() then
                    repeat
                        TotalAmount := TotalAmount + Amount;
                        OrdersQuantity := OrdersQuantity + 1;
                    until SalesHeader.Next() = 0;
            end;
        }
    }

    var
        OrdersQuantity: Integer;
        // OrdersQty: Integer;
        TotalAmount: Decimal;

    // trigger OnInitReport()
    // var
    //     cust: Record "Customer";
    // begin
    //     cust.SetRange("No.", '10000');
    //     IF cust.FindFirst() then begin
    //         cust.Amount := 5000;
    //         cust.Modify(true);
    //         Commit();
    //     end;
    // end;
}
