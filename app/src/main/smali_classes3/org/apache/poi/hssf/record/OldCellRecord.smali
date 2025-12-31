.class public abstract Lorg/apache/poi/hssf/record/OldCellRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final field_1_row:I

.field private final field_2_column:S

.field private field_3_cell_attrs:I

.field private field_3_xf_index:S

.field private final isBiff2:Z

.field private final sid:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->sid:S

    iput-boolean p2, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2:Z

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_1_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_2_column:S

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_xf_index:S

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract appendValueText(Ljava/lang/StringBuilder;)V
.end method

.method public getCellAttrs()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    return v0
.end method

.method public final getColumn()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_2_column:S

    return v0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public final getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_1_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->sid:S

    return v0
.end method

.method public final getXFIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_xf_index:S

    return v0
.end method

.method public isBiff2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getRecordName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n    .row    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getRow()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .col    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getColumn()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "    .cellattrs = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getCellAttrs()I

    move-result v3

    :goto_0
    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "    .xfindex   = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getXFIndex()S

    move-result v3

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/OldCellRecord;->appendValueText(Ljava/lang/StringBuilder;)V

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
