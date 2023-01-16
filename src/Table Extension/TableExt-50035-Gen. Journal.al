tableextension 50035 "Gen. Journal Dim" extends "Gen. Journal Line"
{
    fields
    {
        modify("Location Code")
        {
            trigger OnAfterValidate()
            var
                RecLocation: Record 14;
            begin
                If RecLocation.get("Location Code") then begin
                    Validate("Shortcut Dimension 1 Code", RecLocation."Global Dimension 1 Code");
                    Validate("Shortcut Dimension 2 Code", RecLocation."Global Dimension 2 Code");
                end;
            end;
        }
    }
    
    var
        myInt: Integer;
}