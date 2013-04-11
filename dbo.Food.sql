CREATE TABLE [dbo].[Food] (
    [IdFood]   INT            NOT NULL IDENTITY,
    [Label]    NVARCHAR (MAX) NOT NULL,
    [Unit]     INT            NULL,
    [Calories] DECIMAL (18)   NULL,
    [Proteins] DECIMAL (18)   NULL,
    [Glucides] DECIMAL (18)   NULL,
    [Lipid]    DECIMAL (18)   NULL,
    PRIMARY KEY CLUSTERED ([IdFood] ASC)
);

