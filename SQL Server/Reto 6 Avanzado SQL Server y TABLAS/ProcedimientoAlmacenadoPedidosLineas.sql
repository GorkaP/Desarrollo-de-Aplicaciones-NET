USE [CheDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_PedidosyLineas]    Script Date: 22/05/2019 13:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_PedidosyLineas] 
	-- Add the parameters for the stored procedure here
	@ORDER_ID smallint, 
	@ORDER_DATE date,
	@CUSTOMER_ID smallint,
	@lineas [oe].[T_LineasPedido] READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @totalpedido decimal
	SET @totalpedido = (SELECT SUM(total) FROM @lineas)

	SELECT  * FROM @lineas
	print @totalpedido
	-- insertar fila en ORDERS 
	INSERT INTO [oe].[ORDERS] (ORDER_ID, ORDER_DATE, CUSTOMER_ID, ORDER_TOTAL )
	VALUES (@ORDER_ID, @ORDER_DATE, @CUSTOMER_ID, @totalpedido)

	-- insertar filas en order items
	INSERT INTO [oe].[ORDER_ITEMS] ([ORDER_ID], [LINE_ITEM_ID], [PRODUCT_ID], [UNIT_PRICE],[QUANTITY])
	SELECT [codigoPedido], [numLinea], [codProducto], [precio], [cantidad]
	FROM @lineas


END
