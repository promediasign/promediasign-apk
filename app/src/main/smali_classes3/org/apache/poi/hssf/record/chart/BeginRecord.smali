.class public final Lorg/apache/poi/hssf/record/chart/BeginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1033s


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

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BeginRecord;->clone()Lorg/apache/poi/hssf/record/chart/BeginRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/BeginRecord;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/BeginRecord;-><init>()V

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1033

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[BEGIN]\n[/BEGIN]\n"

    return-object v0
.end method
