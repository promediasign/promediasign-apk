.class public Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
.super Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ClientAnchor;


# static fields
.field private static final EMPTY_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;


# instance fields
.field private anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

.field private cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

.field private cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

.field private position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

.field private sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field private size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->EMPTY_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    iget-object p5, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v0, p1

    invoke-interface {p5, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {p1, p6}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long p5, p2

    invoke-interface {p1, p5, p6}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {p1, p7}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long p2, p3

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {p1, p8}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long p2, p4

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->DONT_MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_DONT_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    return-void
.end method

.method private calcCell(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;JJ)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 8

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/Units;->columnWidthToEMU(I)I

    move-result v3

    int-to-long v4, v3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getColOff()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_0
    cmp-long v6, v4, p2

    if-gez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/Units;->columnWidthToEMU(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    int-to-long v2, v3

    sub-long/2addr v4, p2

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRowHeight(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRowOff()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :goto_1
    cmp-long p1, v2, p4

    if-gez p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRowHeight(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p2

    int-to-long v4, p2

    add-long/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    int-to-long p1, p2

    sub-long/2addr v2, p4

    sub-long/2addr p1, v2

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    return-object v0
.end method

.method private getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->EMPTY_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->calcCell(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;JJ)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->calcCell(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;JJ)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getRowHeight(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)F
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getHeightInPoints()F

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    return-object v0
.end method

.method public getCol1()S
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getCol2()S
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getDx1()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getColOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDx2()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getColOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDy1()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRowOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDy2()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRowOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    return-object v0
.end method

.method public getRow1()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v0

    return v0
.end method

.method public getRow2()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v0

    return v0
.end method

.method public getSize()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    return-object v0
.end method

.method public getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public isSet()Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    return-void
.end method

.method public setCol1(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    return-void
.end method

.method public setCol2(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    return-void
.end method

.method public setDx1(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    return-void
.end method

.method public setDx2(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    return-void
.end method

.method public setDy1(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    return-void
.end method

.method public setDy2(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    return-void
.end method

.method public setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    return-void
.end method

.method public setPosition(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    return-void
.end method

.method public setRow1(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    return-void
.end method

.method public setRow2(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    return-void
.end method

.method public setSize(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    return-void
.end method

.method public setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "from : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
