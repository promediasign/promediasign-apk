.class public final Lorg/apache/poi/hssf/record/ColumnInfoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final collapsed:Lorg/apache/poi/util/BitField;

.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final outlevel:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x7ds


# instance fields
.field private _colWidth:I

.field private _firstCol:I

.field private _lastCol:I

.field private _options:I

.field private _xfIndex:I

.field private field_6_reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x700

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x8e3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    const/16 v1, 0xf

    iput v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unusual record size remaining=("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    return-object v0
.end method

.method public containsColumn(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iget p1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    if-eq v0, p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getCollapsed()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getColumnWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getFirstColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    return v0
.end method

.method public getHidden()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    return v0
.end method

.method public getOutlineLevel()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x7d

    return v0
.end method

.method public getXFIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    return v0
.end method

.method public isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iget p1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    return-void
.end method

.method public setFirstColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    return-void
.end method

.method public setLastColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    return-void
.end method

.method public setOutlineLevel(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    return-void
.end method

.method public setXFIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[COLINFO]\n  colfirst = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  collast  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  colwidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  xfindex  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  options  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    hidden   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    olevel   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    collapsed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n[/COLINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
