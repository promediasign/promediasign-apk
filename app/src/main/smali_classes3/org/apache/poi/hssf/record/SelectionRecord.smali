.class public final Lorg/apache/poi/hssf/record/SelectionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1ds


# instance fields
.field private field_1_pane:B

.field private field_2_row_active_cell:I

.field private field_3_col_active_cell:I

.field private field_4_active_cell_ref_index:I

.field private field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    iput p2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    new-instance v1, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v1, p1, p1, p2, p2}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    const/4 p1, 0x1

    new-array p1, p1, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    aput-object v1, p1, v0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    iget v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(II)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    iget v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    iput v1, v0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-object v0
.end method

.method public getActiveCellCol()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    return v0
.end method

.method public getActiveCellRef()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    return v0
.end method

.method public getActiveCellRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getEncodedSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public getPane()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getPane()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRef()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActiveCellCol(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    return-void
.end method

.method public setActiveCellRef(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    return-void
.end method

.method public setActiveCellRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    return-void
.end method

.method public setPane(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[SELECTION]\n    .pane            = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getPane()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .activecellrow   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .activecellcol   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .activecellref   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRef()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .numrefs         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v1, v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/SELECTION]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
