.class public Ludt/packets/ConnectionHandshake;
.super Ludt/packets/ControlPacket;
.source "SourceFile"


# instance fields
.field private connectionType:J

.field private initialSeqNo:J

.field private maxFlowWndSize:J

.field private methodId:I

.field private packetSize:J

.field private socketID:J

.field private udtVersion:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ludt/packets/ControlPacket;-><init>()V

    const-wide/16 v0, 0x4

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->udtVersion:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->CONNECTION_HANDSHAKE:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ludt/packets/ConnectionHandshake;-><init>()V

    invoke-virtual {p0, p1}, Ludt/packets/ConnectionHandshake;->decode([B)V

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->udtVersion:J

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->packetSize:J

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    const/16 v0, 0x10

    aget-byte v0, p1, v0

    int-to-long v0, v0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    const/16 v0, 0x11

    aget-byte v0, p1, v0

    iput v0, p0, Ludt/packets/ConnectionHandshake;->methodId:I

    const/16 v0, 0x12

    invoke-static {p1, v0}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    return-void
.end method

.method public encodeControlInformation()[B
    .locals 4

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->udtVersion:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->packetSize:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    const/16 v3, 0xc

    invoke-static {v1, v2, v0, v3}, Ludt/packets/PacketUtil;->encode(J[BI)V

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x10

    aput-byte v1, v0, v2

    iget v1, p0, Ludt/packets/ConnectionHandshake;->methodId:I

    int-to-byte v1, v1

    const/16 v2, 0x11

    aput-byte v1, v0, v2

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    const/16 v3, 0x12

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
    check-cast p1, Ludt/packets/ConnectionHandshake;

    iget-wide v3, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    iget-wide v5, p1, Ludt/packets/ConnectionHandshake;->connectionType:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    iget-wide v5, p1, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    iget-wide v5, p1, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Ludt/packets/ConnectionHandshake;->packetSize:J

    iget-wide v5, p1, Ludt/packets/ConnectionHandshake;->packetSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    iget-wide v5, p1, Ludt/packets/ConnectionHandshake;->socketID:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Ludt/packets/ConnectionHandshake;->udtVersion:J

    iget-wide v5, p1, Ludt/packets/ConnectionHandshake;->udtVersion:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getConnectionType()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    return-wide v0
.end method

.method public getInitialSeqNo()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    return-wide v0
.end method

.method public getMaxFlowWndSize()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    return-wide v0
.end method

.method public getMethodId()I
    .locals 1

    iget v0, p0, Ludt/packets/ConnectionHandshake;->methodId:I

    return v0
.end method

.method public getPacketSize()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/ConnectionHandshake;->packetSize:J

    return-wide v0
.end method

.method public getSocketID()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Ludt/packets/ConnectionHandshake;->udtVersion:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Ludt/packets/ConnectionHandshake;->methodId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnectionHandshake()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setConnectionType(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    return-void
.end method

.method public setInitialSeqNo(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    return-void
.end method

.method public setMaxFlowWndSize(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    return-void
.end method

.method public setMethodId(I)V
    .locals 0

    iput p1, p0, Ludt/packets/ConnectionHandshake;->methodId:I

    return-void
.end method

.method public setPacketSize(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ConnectionHandshake;->packetSize:J

    return-void
.end method

.method public setSocketID(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    return-void
.end method

.method public setUdtVersion(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/ConnectionHandshake;->udtVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConnectionHandshake [connectionType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->connectionType:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ludt/packets/ControlPacket;->getSession()Ludt/UDTSession;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v1, ", mySocketID="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->socketID:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", initialSeqNo="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->initialSeqNo:J

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", packetSize="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->packetSize:J

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", maxFlowWndSize="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, Ludt/packets/ConnectionHandshake;->maxFlowWndSize:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", destSocketID="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, Ludt/packets/ControlPacket;->destinationID:J

    .line 77
    .line 78
    const-string v3, "]"

    .line 79
    .line 80
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method
