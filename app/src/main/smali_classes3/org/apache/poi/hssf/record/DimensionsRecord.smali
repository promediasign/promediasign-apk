.class public final Lorg/apache/poi/hssf/record/DimensionsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;

.field public static final sid:S = 0x200s


# instance fields
.field private field_1_first_row:I

.field private field_2_last_row:I

.field private field_3_first_col:S

.field private field_4_last_col:S

.field private field_5_zero:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DimensionsRecord has extra 2 bytes."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->clone()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/DimensionsRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    iget v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public getFirstCol()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    return v0
.end method

.method public getLastCol()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    return v0
.end method

.method public getLastRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFirstCol(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    return-void
.end method

.method public setFirstRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    return-void
.end method

.method public setLastCol(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    return-void
.end method

.method public setLastRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[DIMENSIONS]\n    .firstrow       = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .lastrow        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .firstcol       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .lastcol        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .zero           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/DIMENSIONS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
