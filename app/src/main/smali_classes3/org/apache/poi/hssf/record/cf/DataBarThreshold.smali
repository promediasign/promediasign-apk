.class public final Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->copyTo(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    return-object v0
.end method
