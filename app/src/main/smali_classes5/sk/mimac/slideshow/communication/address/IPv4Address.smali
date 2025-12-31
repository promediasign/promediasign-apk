.class public Lsk/mimac/slideshow/communication/address/IPv4Address;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/address/IPAddress;


# instance fields
.field private final ip:[B

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    iput p2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    iput p2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    iput p2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/communication/address/IPv4Address;

    iget v2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    iget v3, p1, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    iget-object p1, p1, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public formatIp()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIp()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->ip:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public toSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/address/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget v2, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/address/IPv4Address;->formatIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/communication/address/IPv4Address;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
