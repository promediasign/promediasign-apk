.class Lorg/apache/poi/hpsf/VariantBool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantBool;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return v0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lorg/apache/poi/hpsf/VariantBool;->LOG:Lorg/apache/poi/util/POILogger;

    .line 13
    .line 14
    const-string v3, "VARIANT_BOOL value \'"

    .line 15
    .line 16
    const-string v4, "\' is incorrect"

    .line 17
    .line 18
    invoke-static {p1, v3, v4}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p1, v3, v0

    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 34
    .line 35
    :goto_0
    return-void
.end method
