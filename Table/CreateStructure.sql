create table dbo.SKU (
    ID int identity,
    Code as "s" + ID,
    Name vacrhar(64)
)

create table dbo.Family (
    ID int identity,
    SurName varchar(64),
    BudgetValue int
)

create table dbo.Basket (
    ID int identity,
    ID_SKU int foreign key references dbo.SKU(ID),
    ID_Family int foreign key references dbo.Family(ID),
    Quantity int,
    Value int,
    PurchaseDate datetime default getdate(),
    DiscountValue int,
    check(Quantity >= 0 and Value >= 0)
)
