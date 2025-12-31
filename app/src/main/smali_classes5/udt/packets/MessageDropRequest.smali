.class public Ludt/packets/MessageDropRequest;
.super Ludt/packets/ControlPacket;
.source "SourceFile"


# instance fields
.field private msgFirstSeqNo:J

.field private msgLastSeqNo:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ludt/packets/ControlPacket;-><init>()V

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->MESSAGE_DROP_REQUEST:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ludt/packets/MessageDropRequest;-><init>()V

    invoke-virtual {p0, p1}, Ludt/packets/MessageDropRequest;->decode([B)V

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/MessageDropRequest;->msgFirstSeqNo:J

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/MessageDropRequest;->msgLastSeqNo:J

    return-void
.end method

.method public encodeControlInformation()[B
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v1, p0, Ludt/packets/MessageDropRequest;->msgFirstSeqNo:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/MessageDropRequest;->msgLastSeqNo:J

    const/4 v3, 0x4

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
    check-cast p1, Ludt/packets/MessageDropRequest;

    iget-wide v3, p0, Ludt/packets/MessageDropRequest;->msgFirstSeqNo:J

    iget-wide v5, p1, Ludt/packets/MessageDropRequest;->msgFirstSeqNo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Ludt/packets/MessageDropRequest;->msgLastSeqNo:J

    iget-wide v5, p1, Ludt/packets/MessageDropRequest;->msgLastSeqNo:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ludt/packets/MessageDropRequest;->msgFirstSeqNo:J

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
