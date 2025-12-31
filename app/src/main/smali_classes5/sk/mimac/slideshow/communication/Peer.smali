.class public Lsk/mimac/slideshow/communication/Peer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private additionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private address:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private lastRequest:Ljava/lang/Long;

.field private lastResponse:Ljava/lang/Long;

.field private mid:[B

.field private final pings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Lsk/mimac/slideshow/communication/key/PublicKey;

.field private wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/key/PublicKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->publicKey:Lsk/mimac/slideshow/communication/key/PublicKey;

    invoke-interface {p1}, Lsk/mimac/slideshow/communication/key/PublicKey;->keyToHash()[B

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    return-void
.end method


# virtual methods
.method public addPing(I)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/communication/Peer;

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    iget-object p1, p1, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAdditionalInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->additionalInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->address:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public getAveragePing()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    div-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public getLastRequest()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->lastRequest:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastResponse()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->lastResponse:Ljava/lang/Long;

    return-object v0
.end method

.method public getMid()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    return-object v0
.end method

.method public getMidAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    invoke-static {v0}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPingsSize()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->pings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->publicKey:Lsk/mimac/slideshow/communication/key/PublicKey;

    return-object v0
.end method

.method public getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Peer;->mid:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public setAdditionalInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->additionalInfo:Ljava/util/Map;

    return-void
.end method

.method public setAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->address:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-void
.end method

.method public setLanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-void
.end method

.method public setLastRequest(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->lastRequest:Ljava/lang/Long;

    return-void
.end method

.method public setLastResponse(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->lastResponse:Ljava/lang/Long;

    return-void
.end method

.method public setWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Peer;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Peer{mid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lanAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wanAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Peer{mid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->address:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lanAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wanAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->lastRequest:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Peer;->lastResponse:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
