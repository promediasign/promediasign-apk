.class public final Lorg/apache/poi/hssf/record/BlankRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x201s


# instance fields
.field private field_1_row:I

.field private field_2_col:S

.field private field_3_xf:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->clone()Lorg/apache/poi/hssf/record/BlankRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/BlankRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return-object v0
.end method

.method public getColumn()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x201

    return v0
.end method

.method public getXFIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setColumn(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    return-void
.end method

.method public setRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    return-void
.end method

.method public setXFIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[BLANK]\n    row= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getRow()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    col= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getColumn()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    xf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/BLANK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
