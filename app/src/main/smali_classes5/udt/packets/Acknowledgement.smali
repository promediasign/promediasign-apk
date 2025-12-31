.class public Ludt/packets/Acknowledgement;
.super Ludt/packets/ControlPacket;
.source "SourceFile"


# instance fields
.field private ackNumber:J

.field private ackSequenceNumber:J

.field private bufferSize:J

.field private estimatedLinkCapacity:J

.field private pktArrivalSpeed:J

.field private roundTripTime:J

.field private roundTripTimeVariance:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ludt/packets/ControlPacket;-><init>()V

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->ACK:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ludt/packets/Acknowledgement;-><init>()V

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->ackSequenceNumber:J

    invoke-virtual {p0, p3}, Ludt/packets/Acknowledgement;->decodeControlInformation([B)V

    return-void
.end method


# virtual methods
.method public decodeControlInformation([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgement;->ackNumber:J

    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-static {p1, v1}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgement;->roundTripTime:J

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgement;->roundTripTimeVariance:J

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgement;->bufferSize:J

    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    invoke-static {p1, v1}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgement;->pktArrivalSpeed:J

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgement;->estimatedLinkCapacity:J

    :cond_1
    return-void
.end method

.method public encodeControlInformation()[B
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [B

    iget-wide v1, p0, Ludt/packets/Acknowledgement;->ackNumber:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/Acknowledgement;->roundTripTime:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/Acknowledgement;->roundTripTimeVariance:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/Acknowledgement;->bufferSize:J

    const/16 v3, 0xc

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/Acknowledgement;->pktArrivalSpeed:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/Acknowledgement;->estimatedLinkCapacity:J

    const/16 v3, 0x14

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Ludt/packets/ControlPacket;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    check-cast p1, Ludt/packets/Acknowledgement;

    iget-wide v3, p0, Ludt/packets/Acknowledgement;->ackNumber:J

    iget-wide v5, p1, Ludt/packets/Acknowledgement;->ackNumber:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Ludt/packets/Acknowledgement;->roundTripTime:J

    iget-wide v5, p1, Ludt/packets/Acknowledgement;->roundTripTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Ludt/packets/Acknowledgement;->roundTripTimeVariance:J

    iget-wide v5, p1, Ludt/packets/Acknowledgement;->roundTripTimeVariance:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Ludt/packets/Acknowledgement;->bufferSize:J

    iget-wide v5, p1, Ludt/packets/Acknowledgement;->bufferSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Ludt/packets/Acknowledgement;->estimatedLinkCapacity:J

    iget-wide v5, p1, Ludt/packets/Acknowledgement;->estimatedLinkCapacity:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Ludt/packets/Acknowledgement;->pktArrivalSpeed:J

    iget-wide v5, p1, Ludt/packets/Acknowledgement;->pktArrivalSpeed:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAckNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->ackNumber:J

    return-wide v0
.end method

.method public getAckSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->ackSequenceNumber:J

    return-wide v0
.end method

.method public getAdditionalInfo()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->ackSequenceNumber:J

    return-wide v0
.end method

.method public getEstimatedLinkCapacity()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->estimatedLinkCapacity:J

    return-wide v0
.end method

.method public getPacketReceiveRate()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->pktArrivalSpeed:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->roundTripTime:J

    return-wide v0
.end method

.method public getRoundTripTimeVar()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->roundTripTimeVariance:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ludt/packets/Acknowledgement;->ackNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAckNumber(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->ackNumber:J

    return-void
.end method

.method public setAckSequenceNumber(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->ackSequenceNumber:J

    return-void
.end method

.method public setBufferSize(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->bufferSize:J

    return-void
.end method

.method public setEstimatedLinkCapacity(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->estimatedLinkCapacity:J

    return-void
.end method

.method public setPacketReceiveRate(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->pktArrivalSpeed:J

    return-void
.end method

.method public setRoundTripTime(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->roundTripTime:J

    return-void
.end method

.method public setRoundTripTimeVar(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgement;->roundTripTimeVariance:J

    return-void
.end method
