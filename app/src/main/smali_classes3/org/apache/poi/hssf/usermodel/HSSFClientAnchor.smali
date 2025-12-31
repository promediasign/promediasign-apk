.class public final Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
.super Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ClientAnchor;


# static fields
.field public static final MAX_COL:I

.field public static final MAX_ROW:I


# instance fields
.field private _escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    sput v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIISISI)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>(IIII)V

    const-string v0, "dx1"

    const/4 v1, 0x0

    const/16 v2, 0x3ff

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    const-string p1, "dx2"

    invoke-direct {p0, p3, v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    const-string p1, "dy1"

    const/16 p3, 0xff

    invoke-direct {p0, p2, v1, p3, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    const-string p1, "dy2"

    invoke-direct {p0, p4, v1, p3, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    sget p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const-string p2, "col1"

    invoke-direct {p0, p5, v1, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    const-string p2, "col2"

    invoke-direct {p0, p7, v1, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    sget p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const-string p2, "row1"

    invoke-direct {p0, p6, v1, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    const-string p2, "row2"

    invoke-direct {p0, p8, v1, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-static {p5, p7}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    invoke-static {p5, p7}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    invoke-static {p6, p8}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow1(I)V

    invoke-static {p6, p8}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    const/4 p1, 0x1

    if-le p5, p7, :cond_0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isHorizontallyFlipped:Z

    :cond_0
    if-le p6, p8, :cond_1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isVerticallyFlipped:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    return-void
.end method

.method private checkRange(IIILjava/lang/String;)V
    .locals 2

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " must be between "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", but was: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeightInPoints()F

    move-result p1

    return p1
.end method

.method private static unsignedValue(S)I
    .locals 1

    if-gez p0, :cond_0

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method public createEscherAnchor()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v2

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getAnchorHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)F
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x43800000    # 256.0f

    if-ne v2, v3, :cond_0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result p1

    mul-float v0, v0, p1

    goto :goto_1

    :cond_0
    int-to-float v0, v0

    sub-float v0, v4, v0

    div-float/2addr v0, v4

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v5

    mul-float v0, v0, v5

    const/4 v5, 0x0

    :goto_0
    add-float/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v5

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    :goto_1
    return v0
.end method

.method public getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getFlag()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->byId(I)Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v0

    return-object v0
.end method

.method public getCol1()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol1()S

    move-result v0

    return v0
.end method

.method public getCol2()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol2()S

    move-result v0

    return v0
.end method

.method public getDx1()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx1()S

    move-result v0

    return v0
.end method

.method public getDx2()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx2()S

    move-result v0

    return v0
.end method

.method public getDy1()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDy1()S

    move-result v0

    return v0
.end method

.method public getDy2()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDy2()S

    move-result v0

    return v0
.end method

.method public getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    return-object v0
.end method

.method public getRow1()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow1()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->unsignedValue(S)I

    move-result v0

    return v0
.end method

.method public getRow2()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow2()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->unsignedValue(S)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public isHorizontallyFlipped()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isHorizontallyFlipped:Z

    return v0
.end method

.method public isVerticallyFlipped()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isVerticallyFlipped:Z

    return v0
.end method

.method public setAnchor(SIIISIII)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v0

    const-string v1, "dx1"

    const/4 v2, 0x0

    const/16 v3, 0x3ff

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v0

    const-string v1, "dx2"

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v0

    const-string v1, "dy1"

    const/16 v3, 0xff

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v0

    const-string v1, "dy2"

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v0

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const-string v3, "col1"

    invoke-direct {p0, v0, v2, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v0

    const-string v3, "col2"

    invoke-direct {p0, v0, v2, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v0

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const-string v3, "row1"

    invoke-direct {p0, v0, v2, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v0

    const-string v3, "row2"

    invoke-direct {p0, v0, v2, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow1(I)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx1(I)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy1(I)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    invoke-virtual {p0, p6}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    invoke-virtual {p0, p7}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx2(I)V

    invoke-virtual {p0, p8}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy2(I)V

    return-void
.end method

.method public setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    iget-short p1, p1, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->value:S

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setFlag(S)V

    return-void
.end method

.method public setCol1(I)V
    .locals 0

    .line 1
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    return-void
.end method

.method public setCol1(S)V
    .locals 3

    .line 2
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const-string v1, "col1"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol1(S)V

    return-void
.end method

.method public setCol2(I)V
    .locals 0

    .line 1
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    return-void
.end method

.method public setCol2(S)V
    .locals 3

    .line 2
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const-string v1, "col2"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol2(S)V

    return-void
.end method

.method public setDx1(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx1(S)V

    return-void
.end method

.method public setDx2(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx2(S)V

    return-void
.end method

.method public setDy1(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy1(S)V

    return-void
.end method

.method public setDy2(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy2(S)V

    return-void
.end method

.method public setRow1(I)V
    .locals 3

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const-string v1, "row1"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow1(S)V

    return-void
.end method

.method public setRow2(I)V
    .locals 3

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const-string v1, "row2"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow2(S)V

    return-void
.end method
