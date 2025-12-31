.class public final Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x100s


# instance fields
.field private _citmShow:I

.field private _grbit1:I

.field private _grbit2:I

.field private _isxdiShow:I

.field private _isxdiSort:I

.field private _reserved1:I

.field private _reserved2:I

.field private _subtotalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected remaining size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0xffff

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[SXVDEX]\n    .grbit1 ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

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
    const-string v1, "\n    .grbit2 ="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    .line 23
    .line 24
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    const-string v1, "\n    .citmShow ="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    .line 37
    .line 38
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const-string v1, "\n    .isxdiSort ="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    .line 51
    .line 52
    const-string v2, "\n    .isxdiShow ="

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    .line 58
    .line 59
    const-string v2, "\n    .subtotalName ="

    .line 60
    .line 61
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "\n[/SXVDEX]\n"

    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
