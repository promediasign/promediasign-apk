.class public abstract Lorg/apache/poi/hssf/record/CFHeaderBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private field_1_numcf:I

.field private field_2_need_recalculation_and_id:I

.field private field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    iput p2, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->clone()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/apache/poi/hssf/record/CFHeaderBase;
.end method

.method public copyTo(Lorg/apache/poi/hssf/record/CFHeaderBase;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public createEmpty()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNeedRecalculation()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNumberOfConditionalFormats()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return v0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public read(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-static {v3, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cellRanges must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setID(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v0

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    :cond_0
    return-void
.end method

.method public setNeedRecalculation(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setNumberOfConditionalFormats(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getRecordName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]\n\t.numCF             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n\t.needRecalc        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n\t.id                = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n\t.enclosingCellRange= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n\t.cfranges=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressList;->countRanges()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    const-string v2, ","

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddress(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]\n[/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getRecordName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
