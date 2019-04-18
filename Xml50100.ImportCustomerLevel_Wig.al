xmlport 50100 "ImportCustomerLevel_Wig"
{
    Caption = 'Import Warning Level';
    DefaultNamespace = 'ImportWarningLevel';
    FormatEvaluate = Xml;
    UseDefaultNamespace = true;
    Direction = Import;
    schema
    {
        textelement(Customer)
        {
            MaxOccurs = Once;
            tableelement(rCustomer; Customer)
            {
                MinOccurs = Zero;
                XmlName = 'Customer';
                fieldelement(CustomerNo; rCustomer."No.")
                {
                }
                fieldelement(CustomerN; rCustomer.Name)
                {
                    trigger OnAfterAssignField();
                    begin
                        CustomerRec.Get(rCustomer."No.");
                        CustomerRec.Name := rCustomer.Name;
                        CustomerRec.Modify();
                    end;
                }
            }
        }
    }
    var
        CustomerRec: Record Customer;
}