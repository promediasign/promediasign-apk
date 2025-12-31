.class public Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRGB(I)[B
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/util/HSSFColor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object p0

    aget-short v3, p0, v2

    int-to-byte v3, v3

    aget-short v4, p0, v1

    int-to-byte v4, v4

    aget-short p0, p0, v0

    int-to-byte p0, p0

    const/4 v5, 0x3

    new-array v5, v5, [B

    aput-byte v3, v5, v2

    aput-byte v4, v5, v1

    aput-byte p0, v5, v0

    return-object v5
.end method


# virtual methods
.method public getRGB(I)[B
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;->getDefaultRGB(I)[B

    move-result-object p1

    return-object p1
.end method
