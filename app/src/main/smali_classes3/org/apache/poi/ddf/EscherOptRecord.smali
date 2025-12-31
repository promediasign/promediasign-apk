.class public Lorg/apache/poi/ddf/EscherOptRecord;
.super Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtOPT"

.field public static final RECORD_ID:S = -0xff5s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setInstance(S)V

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getInstance()S

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getVersion()S

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "Opt"

    return-object v0
.end method

.method public getVersion()S
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->setVersion(S)V

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result v0

    return v0
.end method

.method public setVersion(S)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setVersion(S)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "msofbtOPT can have only \'0x3\' version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
