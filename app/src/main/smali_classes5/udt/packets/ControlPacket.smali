.class public abstract Ludt/packets/ControlPacket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ludt/UDTPacket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ludt/packets/ControlPacket$ControlPacketType;
    }
.end annotation


# instance fields
.field protected controlPacketType:I

.field protected destinationID:J

.field private session:Ludt/UDTSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ludt/UDTPacket;

    invoke-virtual {p0, p1}, Ludt/packets/ControlPacket;->compareTo(Ludt/UDTPacket;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ludt/UDTPacket;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Ludt/packets/ControlPacket;->getPacketSequenceNumber()J

    move-result-wide v0

    invoke-interface {p1}, Ludt/UDTPacket;->getPacketSequenceNumber()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public abstract encodeControlInformation()[B
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Ludt/packets/ControlPacket;

    iget v2, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    iget v3, p1, Ludt/packets/ControlPacket;->controlPacketType:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Ludt/packets/ControlPacket;->destinationID:J

    iget-wide v4, p1, Ludt/packets/ControlPacket;->destinationID:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forSender()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdditionalInfo()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getControlPacketType()I
    .locals 1

    iget v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return v0
.end method

.method public getDestinationID()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/ControlPacket;->destinationID:J

    return-wide v0
.end method

.method public getEncoded()[B
    .locals 5

    invoke-virtual {p0}, Ludt/packets/ControlPacket;->getHeader()[B

    move-result-object v0

    invoke-virtual {p0}, Ludt/packets/ControlPacket;->encodeControlInformation()[B

    move-result-object v1

    array-length v2, v0

    if-eqz v1, :cond_0

    array-length v3, v1

    add-int/2addr v2, v3

    :cond_0
    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_1

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2
.end method

.method public getHeader()[B
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    iget v1, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    invoke-static {v1}, Ludt/packets/PacketUtil;->encodeControlPacketType(I)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ludt/packets/ControlPacket;->getAdditionalInfo()J

    move-result-wide v1

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/ControlPacket;->destinationID:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    return-object v0
.end method

.method public getPacketSequenceNumber()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSession()Ludt/UDTSession;
    .locals 1

    iget-object v0, p0, Ludt/packets/ControlPacket;->session:Ludt/UDTSession;

    return-object v0
.end method

.method public isConnectionHandshake()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isControlPacket()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDestinationID(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ControlPacket;->destinationID:J

    return-void
.end method

.method public setSession(Ludt/UDTSession;)V
    .locals 0

    iput-object p1, p0, Ludt/packets/ControlPacket;->session:Ludt/UDTSession;

    return-void
.end method
