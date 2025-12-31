.class public final Lorg/apache/poi/hssf/record/chart/ChartRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1002s


# instance fields
.field private field_1_x:I

.field private field_2_y:I

.field private field_3_width:I

.field private field_4_height:I


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

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->clone()Lorg/apache/poi/hssf/record/chart/ChartRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/ChartRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1002

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CHART]\n    .x     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .y     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n[/CHART]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
