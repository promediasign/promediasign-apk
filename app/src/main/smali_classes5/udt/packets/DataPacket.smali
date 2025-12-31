.class public Ludt/packets/DataPacket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ludt/UDTPacket;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ludt/UDTPacket;",
        "Ljava/lang/Comparable<",
        "Ludt/UDTPacket;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[B

.field private dataLength:I

.field private destinationID:J

.field private packetSequenceNumber:J

.field private session:Ludt/UDTSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BIILsk/mimac/slideshow/communication/key/PrivateKey;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Ludt/packets/DataPacket;->decode([BIILsk/mimac/slideshow/communication/key/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ludt/UDTPacket;

    invoke-virtual {p0, p1}, Ludt/packets/DataPacket;->compareTo(Ludt/UDTPacket;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ludt/UDTPacket;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    invoke-interface {p1}, Ludt/UDTPacket;->getPacketSequenceNumber()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public decode([BIILsk/mimac/slideshow/communication/key/PrivateKey;)V
    .locals 2

    invoke-static {p1, p2}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/DataPacket;->destinationID:J

    add-int/lit8 p3, p3, -0x8

    new-array v0, p3, [B

    add-int/lit8 p2, p2, 0x8

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p4, v0}, Lsk/mimac/slideshow/communication/key/PrivateKey;->decrypt([B)[B

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x4

    sub-int/2addr p2, p3

    iput p2, p0, Ludt/packets/DataPacket;->dataLength:I

    new-array p4, p2, [B

    iput-object p4, p0, Ludt/packets/DataPacket;->data:[B

    invoke-static {p1, p3, p4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    check-cast p1, Ludt/packets/DataPacket;

    iget-wide v2, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    iget-wide v4, p1, Ludt/packets/DataPacket;->packetSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Ludt/packets/DataPacket;->destinationID:J

    iget-wide v4, p1, Ludt/packets/DataPacket;->destinationID:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Ludt/packets/DataPacket;->dataLength:I

    iget p1, p1, Ludt/packets/DataPacket;->dataLength:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public forSender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getControlPacketType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Ludt/packets/DataPacket;->data:[B

    return-object v0
.end method

.method public getDestinationID()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/DataPacket;->destinationID:J

    return-wide v0
.end method

.method public getEncoded()[B
    .locals 7

    iget v0, p0, Ludt/packets/DataPacket;->dataLength:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-object v2, p0, Ludt/packets/DataPacket;->data:[B

    iget v3, p0, Ludt/packets/DataPacket;->dataLength:I

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ludt/packets/DataPacket;->session:Ludt/UDTSession;

    invoke-virtual {v2}, Ludt/UDTSession;->getPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v2

    invoke-interface {v2, v0}, Lsk/mimac/slideshow/communication/key/PublicKey;->encrypt([B)[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    iget-wide v5, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    invoke-static {v5, v6, v2, v4}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v5, p0, Ludt/packets/DataPacket;->destinationID:J

    invoke-static {v5, v6, v2, v1}, Ludt/packets/PacketUtil;->encode(J[BI)V

    array-length v1, v0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Ludt/packets/DataPacket;->dataLength:I

    return v0
.end method

.method public getPacketSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    return-wide v0
.end method

.method public getSession()Ludt/UDTSession;
    .locals 1

    iget-object v0, p0, Ludt/packets/DataPacket;->session:Ludt/UDTSession;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Ludt/packets/DataPacket;->destinationID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnectionHandshake()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isControlPacket()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Ludt/packets/DataPacket;->data:[B

    array-length p1, p1

    iput p1, p0, Ludt/packets/DataPacket;->dataLength:I

    return-void
.end method

.method public setDestinationID(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/DataPacket;->destinationID:J

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Ludt/packets/DataPacket;->dataLength:I

    return-void
.end method

.method public setPacketSequenceNumber(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/DataPacket;->packetSequenceNumber:J

    return-void
.end method

.method public setSession(Ludt/UDTSession;)V
    .locals 0

    iput-object p1, p0, Ludt/packets/DataPacket;->session:Ludt/UDTSession;

    return-void
.end method
