.class public Lorg/apache/mina/filter/firewall/Subnet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final IP_MASK:I = -0x80000000


# instance fields
.field private subnet:Ljava/net/InetAddress;

.field private subnetInt:I

.field private subnetMask:I

.field private suffix:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result p1

    iput p1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    iput p2, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    add-int/lit8 p2, p2, -0x1

    const/high16 p1, -0x80000000

    shr-int/2addr p1, p2

    iput p1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mask has to be an integer between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only IPv4 supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Subnet address can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toInt(Ljava/net/InetAddress;)I
    .locals 3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private toSubnet(Ljava/net/InetAddress;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result p1

    iget v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:I

    and-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/mina/filter/firewall/Subnet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/mina/filter/firewall/Subnet;

    iget v0, p1, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    iget v2, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    iget v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public inSubnet(Ljava/net/InetAddress;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toSubnet(Ljava/net/InetAddress;)I

    move-result p1

    iget v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
