.class public final Lorg/apache/poi/hssf/record/EndSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    and-int/lit16 p1, p2, 0xff

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Unexpected size ("

    const-string v1, ")"

    .line 2
    invoke-static {p2, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EndSubRecord;->clone()Lorg/apache/poi/hssf/record/EndSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/EndSubRecord;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EndSubRecord;->clone()Lorg/apache/poi/hssf/record/EndSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[ftEnd]\n[/ftEnd]\n"

    return-object v0
.end method
