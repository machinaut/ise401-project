-- psql $DBNAME -f project.sql
CREATE TABLE distribution (
    Invoice_Number      text,
    Invoice_Date        date,
    Bill_to_Agency_No   text,
    Name                text,
    Agency_County       text,
    Shipment_Method_Code text,
    Shipping_Agent_Code text,
    Gross_Weight        double precision,
    Amount_Including_Tax double precision
);


CREATE TABLE receiving (
    Order_No            text,
    Document_No         text,
    Item_No             text,
    Description         text,
    Source_No           numeric,
    Donor               text,
    UNC_Product_Source_Code text,
    Posting_Date        date,
    Lot_No              numeric,
    Expiration_Date     date,
    Quantity            numeric,
    Unit_of_Measure     text,
    Gross_Weight        numeric
);

CREATE TABLE waste (
    Journal_Batch_Name  text,
    Item_No             text,
    Description         text,
    Posting_Date        date,
    Entry_Type          text,
    Document_No         text,
    Quantity            numeric,
    Total_Weight        numeric
);    

