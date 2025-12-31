.class public final Lorg/apache/poi/hssf/record/RefModeRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final USE_A1_MODE:S = 0x1s

.field public static final USE_R1C1_MODE:S = 0x0s

.field public static final sid:S = 0xfs


# instance fields
.field private field_1_mode:S


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

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMode()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->getMode()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setMode(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[REFMODE]\n    .mode           = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->getMode()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/REFMODE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
