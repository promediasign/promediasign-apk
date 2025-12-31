.class public final Lorg/apache/poi/hssf/record/common/FeatSmartTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/SharedFeature;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatSmartTag;->data:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FeatSmartTag;->data:[B

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatSmartTag;->data:[B

    array-length v0, v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatSmartTag;->data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, " [FEATURE SMART TAGS]\n [/FEATURE SMART TAGS]\n"

    return-object v0
.end method
