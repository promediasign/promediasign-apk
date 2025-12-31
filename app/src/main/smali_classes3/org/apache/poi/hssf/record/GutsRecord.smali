.class public final Lorg/apache/poi/hssf/record/GutsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x80s


# instance fields
.field private field_1_left_row_gutter:S

.field private field_2_top_col_gutter:S

.field private field_3_row_level_max:S

.field private field_4_col_level_max:S


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

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->clone()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/GutsRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return-object v0
.end method

.method public getColLevelMax()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getLeftRowGutter()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    return v0
.end method

.method public getRowLevelMax()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public getTopColGutter()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getLeftRowGutter()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getTopColGutter()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getRowLevelMax()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getColLevelMax()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setColLevelMax(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return-void
.end method

.method public setLeftRowGutter(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    return-void
.end method

.method public setRowLevelMax(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    return-void
.end method

.method public setTopColGutter(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[GUTS]\n    .leftgutter     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getLeftRowGutter()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .topgutter      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getTopColGutter()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .rowlevelmax    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getRowLevelMax()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .collevelmax    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getColLevelMax()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/GUTS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
