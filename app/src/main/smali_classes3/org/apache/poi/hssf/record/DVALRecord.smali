.class public final Lorg/apache/poi/hssf/record/DVALRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1b2s


# instance fields
.field private field_1_options:S

.field private field_2_horiz_pos:I

.field private field_3_vert_pos:I

.field private field_5_dv_no:I

.field private field_cbo_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->clone()Lorg/apache/poi/hssf/record/DVALRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/DVALRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-object v0
.end method

.method public getDVRecNo()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getHorizontalPos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    return v0
.end method

.method public getObjectID()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    return v0
.end method

.method public getOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1b2

    return v0
.end method

.method public getVerticalPos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getHorizontalPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getVerticalPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getObjectID()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getDVRecNo()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setDVRecNo(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method

.method public setHorizontalPos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    return-void
.end method

.method public setObjectID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    return-void
.end method

.method public setVerticalPos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[DVAL]\n    .options      = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .horizPos     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getHorizontalPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .vertPos      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getVerticalPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .comboObjectID   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getObjectID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .DVRecordsNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getDVRecNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/DVAL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
