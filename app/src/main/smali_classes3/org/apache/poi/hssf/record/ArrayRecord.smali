.class public final Lorg/apache/poi/hssf/record/ArrayRecord;
.super Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x221s


# instance fields
.field private _field3notUsed:I

.field private _formula:Lorg/apache/poi/ss/formula/Formula;

.field private _options:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/Formula;Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    iput p2, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->clone()Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/ArrayRecord;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/ss/formula/Formula;Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    iget v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    return-object v0
.end method

.method public getExtraDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x221

    return v0
.end method

.method public isAlwaysRecalculate()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCalculateOnOpen()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, " [ARRAY]\n range="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string v1, "\n options="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    .line 33
    .line 34
    const-string v2, "\n notUsed="

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    .line 40
    .line 41
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const-string v1, "\n formula:\n"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    :goto_0
    array-length v3, v1

    .line 61
    if-ge v2, v3, :cond_0

    .line 62
    .line 63
    aget-object v3, v1, v2

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    const-string v3, "\n"

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v1, "]"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
