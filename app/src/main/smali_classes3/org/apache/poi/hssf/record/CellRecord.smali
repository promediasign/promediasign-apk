.class public abstract Lorg/apache/poi/hssf/record/CellRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# instance fields
.field private _columnIndex:I

.field private _formatIndex:I

.field private _rowIndex:I


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

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    return-void
.end method


# virtual methods
.method public abstract appendValueText(Ljava/lang/StringBuilder;)V
.end method

.method public final copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    return-void
.end method

.method public final getColumn()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public final getDataSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getValueDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public final getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    return v0
.end method

.method public abstract getValueDataSize()I
.end method

.method public final getXFIndex()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;->serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public abstract serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public final setColumn(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    return-void
.end method

.method public final setRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    return-void
.end method

.method public final setXFIndex(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRecordName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n    .row    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .col    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .xfindex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CellRecord;->appendValueText(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
