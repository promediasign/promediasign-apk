.class public final Lorg/apache/poi/hssf/record/SharedFormulaRecord;
.super Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x4bcs


# instance fields
.field private field_5_reserved:I

.field private field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    sget-object p1, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    iput v1, v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getExtraDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFormulaTokens(Lorg/apache/poi/hssf/record/FormulaRecord;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->isInRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/ss/formula/SharedFormula;

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/SharedFormula;-><init>(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/SharedFormula;->convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shared Formula Conversion: Coding Error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x4bc

    return v0
.end method

.method public isFormulaSame(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    iget-object p1, p1, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->isSame(Lorg/apache/poi/ss/formula/Formula;)Z

    move-result p1

    return p1
.end method

.method public serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[SHARED FORMULA ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x4bc

    .line 9
    .line 10
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, "]\n    .range      = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    const-string v1, "\n    .reserved    = "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    .line 35
    .line 36
    const-string v2, "\n"

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v3, 0x0

    .line 48
    :goto_0
    array-length v4, v1

    .line 49
    if-ge v3, v4, :cond_0

    .line 50
    .line 51
    const-string v4, "Formula["

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    const-string v4, "]"

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    aget-object v4, v1, v3

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "[/SHARED FORMULA]\n"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method
