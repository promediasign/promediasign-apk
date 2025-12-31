.class public final Lorg/apache/poi/hssf/record/IndexRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x20bs


# instance fields
.field private field_2_first_row:I

.field private field_3_last_row_add1:I

.field private field_4_zero:I

.field private field_5_dbcells:Lorg/apache/poi/util/IntList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    new-instance v1, Lorg/apache/poi/util/IntList;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/IntList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/IntList;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Expected zero for field 1 but got "

    .line 2
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getRecordSizeForBlockCount(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x14

    return p0
.end method


# virtual methods
.method public addDbcell(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/util/IntList;

    invoke-direct {v0}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntList;->add(I)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->clone()Lorg/apache/poi/hssf/record/IndexRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/IndexRecord;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    iput v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    new-instance v1, Lorg/apache/poi/util/IntList;

    invoke-direct {v1}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/IntList;->addAll(Lorg/apache/poi/util/IntList;)Z

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getDbcellAt(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getFirstRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    return v0
.end method

.method public getLastRowAdd1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    return v0
.end method

.method public getNumDbcells()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x20b

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getFirstRow()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getLastRowAdd1()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/IndexRecord;->getDbcellAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDbcell(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/util/IntList;->set(II)I

    return-void
.end method

.method public setFirstRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    return-void
.end method

.method public setLastRowAdd1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[INDEX]\n    .firstrow       = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getFirstRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .lastrowadd1    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getLastRowAdd1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, "    .dbcell_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/IndexRecord;->getDbcellAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "[/INDEX]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
