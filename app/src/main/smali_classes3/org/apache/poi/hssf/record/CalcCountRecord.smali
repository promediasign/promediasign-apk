.class public final Lorg/apache/poi/hssf/record/CalcCountRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0xcs


# instance fields
.field private field_1_iterations:S


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

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->clone()Lorg/apache/poi/hssf/record/CalcCountRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CalcCountRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getIterations()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->getIterations()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setIterations(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CALCCOUNT]\n    .iterations     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->getIterations()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/CALCCOUNT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
