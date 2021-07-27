report 50001 "Test RentCarUa"
{
    ApplicationArea = All;
    Caption = 'Test';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            var
                CustomerRec: Record Customer;
                // JSON: Codeunit "Json Text Reader/Writer";
                MyJsonObject: JsonObject;
            begin
                if CustomerRec.FindSet() then
                    repeat
                        if MyJsonObject.Contains('Name') then
                            MyJsonObject.Remove('Name');
                        if MyJsonObject.Contains('Phone') then
                            MyJsonObject.Remove('Phone');
                        if MyJsonObject.Contains('E-Mail') then
                            MyJsonObject.Remove('E-Mail');
                        MyJsonObject.Add('Name', CustomerRec.Name);
                        MyJsonObject.Add('Phone', CustomerRec."Phone No.");
                        MyJsonObject.Add('E-Mail', CustomerRec."E-Mail");
                        Message(Format(MyJsonObject));
                    until CustomerRec.Next() = 0;
            end;
        }
    }
}
