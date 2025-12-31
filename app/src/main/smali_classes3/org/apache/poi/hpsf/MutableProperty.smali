.class public Lorg/apache/poi/hpsf/MutableProperty;
.super Lorg/apache/poi/hpsf/Property;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Property;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/hpsf/Property;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    return-void
.end method

.method public constructor <init>(J[BJII)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p7}, Lorg/apache/poi/hpsf/Property;-><init>(J[BJII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/Property;-><init>(Lorg/apache/poi/hpsf/Property;)V

    return-void
.end method
