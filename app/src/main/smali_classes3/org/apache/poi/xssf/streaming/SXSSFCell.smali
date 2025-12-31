.class public Lorg/apache/poi/xssf/streaming/SXSSFCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

.field private final _row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

.field private _style:Lorg/apache/poi/ss/usermodel/CellStyle;

.field private _value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method private convertCellValueToBoolean()Z
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected cell type ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_0
    return v2
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TRUE"

    goto :goto_0

    :cond_0
    const-string p1, "FALSE"

    :goto_0
    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz p1, :cond_1

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :pswitch_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Cannot get a "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, " value from a "

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " "

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const-string p0, "formula "

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, ""

    .line 30
    .line 31
    :goto_0
    const-string p1, "cell"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method


# virtual methods
.method public computeTypeFromFormula(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1
.end method

.method public ensureFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_1
    return-void
.end method

.method public ensureRichTextStringType()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :cond_1
    return-void
.end method

.method public ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_0
    return-void
.end method

.method public ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanCellValue()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->getValue()Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->getPreEvaluatedValue()Z

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    return v3
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Comment;

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCellType()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I

    move-result v0

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCellValue()B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->getValue()B

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->getPreEvaluatedValue()B

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    return v3
.end method

.method public getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->getValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->getPreEvaluatedValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPropertyValue(I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyValue(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->getPreEvaluatedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public removeCellComment()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeProperty(I)V

    return-void
.end method

.method public removeHyperlink()V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeProperty(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(II)V

    return-void
.end method

.method public removeProperty(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    iget-object p1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    if-eqz v1, :cond_1

    iput-object p1, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    :cond_2
    :goto_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->setPreEvaluatedValue(B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->setValue(B)V

    :goto_0
    return-void
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->computeTypeFromFormula(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-void
.end method

.method public setCellType(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public setCellValue(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellErrorValue(B)V

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->setPreEvaluatedValue(D)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->setValue(D)V

    :goto_1
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 3

    .line 2
    if-eqz p1, :cond_3

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    instance-of v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->setPreEvaluatedValue(D)V

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->setPreEvaluatedValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :goto_0
    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 2

    .line 3
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellValue(D)V

    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 2

    .line 4
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellValue(D)V

    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 4

    .line 5
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureRichTextStringType()V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->length()I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->hasFormatting()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SXSSF doesn\'t support Shared Strings, rich text formatting information has be lost"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->setValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :goto_0
    return-void
.end method

.method public setCellValue(Z)V
    .locals 2

    .line 6
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->setPreEvaluatedValue(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    :goto_0
    return-void
.end method

.method public setFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>()V

    goto :goto_0

    :goto_1
    instance-of p1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->_value:Ljava/lang/String;

    iput-object v0, p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->_value:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeHyperlink()V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setProperty(ILjava/lang/Object;)V

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 13
    .line 14
    move-object v3, v1

    .line 15
    move-object v1, v0

    .line 16
    move-object v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "Invalid type: "

    .line 39
    .line 40
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_3
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iput-object p1, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method public setType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;-><init>()V

    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_1

    :pswitch_1
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Cell Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
