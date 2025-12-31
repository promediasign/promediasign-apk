.class public final Lorg/apache/poi/hssf/record/PrecisionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xes


# instance fields
.field public field_1_precision:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrecisionRecord;->field_1_precision:S

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getFullPrecision()Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrecisionRecord;->field_1_precision:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrecisionRecord;->field_1_precision:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFullPrecision(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrecisionRecord;->field_1_precision:S

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrecisionRecord;->field_1_precision:S

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[PRECISION]\n    .precision       = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrecisionRecord;->getFullPrecision()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n[/PRECISION]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
