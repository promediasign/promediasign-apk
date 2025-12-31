.class public Ludt/packets/Acknowledgment2;
.super Ludt/packets/ControlPacket;
.source "SourceFile"


# instance fields
.field private ackSequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ludt/packets/ControlPacket;-><init>()V

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->ACK2:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ludt/packets/Acknowledgment2;-><init>()V

    iput-wide p1, p0, Ludt/packets/Acknowledgment2;->ackSequenceNumber:J

    invoke-virtual {p0, p3}, Ludt/packets/Acknowledgment2;->decode([B)V

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/Acknowledgment2;->ackSequenceNumber:J

    return-void
.end method

.method public encodeControlInformation()[B
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgment2;->ackSequenceNumber:J

    invoke-static {v0, v1}, Ludt/packets/PacketUtil;->encode(J)[B

    move-result-object v0

    return-object v0
.end method

.method public forSender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAckSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Acknowledgment2;->ackSequenceNumber:J

    return-wide v0
.end method

.method public setAckSequenceNumber(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Acknowledgment2;->ackSequenceNumber:J

    return-void
.end method
