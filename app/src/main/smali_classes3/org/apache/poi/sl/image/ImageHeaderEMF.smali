.class public Lorg/apache/poi/sl/image/ImageHeaderEMF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final deviceBounds:Ljava/awt/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x1

    const/4 v3, 0x5

    if-eq v2, v1, :cond_0

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Invalid EMF picture - invalid type"

    aput-object v1, p2, v0

    invoke-virtual {p1, v3, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance p1, Ljava/awt/Rectangle;

    const/16 p2, 0xc8

    invoke-direct {p1, v0, v0, p2, p2}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-void

    :cond_0
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    add-int/lit8 v4, p2, 0xc

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    add-int/lit8 v5, p2, 0x10

    invoke-static {p1, v5}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    add-int/lit8 v6, p2, 0x14

    invoke-static {p1, v6}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    new-instance v7, Ljava/awt/Rectangle;

    sub-int/2addr v5, v2

    sub-int/2addr v6, v4

    invoke-direct {v7, v2, v4, v5, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v7, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    add-int/lit8 p2, p2, 0x28

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x4

    sget-object v5, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p1, " EMF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Invalid EMF picture - invalid signature"

    aput-object v1, p2, v0

    invoke-virtual {p1, v3, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-object v0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v0}, Ljava/awt/Rectangle;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method
