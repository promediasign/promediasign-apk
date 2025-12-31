.class public Ludt/UDTCongestionControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ludt/CongestionControl;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field protected ackInterval:J

.field averageNACKNum:J

.field protected congestionWindowSize:D

.field decCount:J

.field decreaseRandom:J

.field protected estimatedLinkCapacity:J

.field private lastAckSeqNumber:J

.field private lastDecreaseSeqNo:J

.field private loss:Z

.field private nACKCount:J

.field protected packetArrivalRate:J

.field protected packetSendingPeriod:D

.field protected roundTripTime:J

.field protected final session:Ludt/UDTSession;

.field private slowStartPhase:Z

.field protected final statistics:Ludt/util/UDTStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/UDTCongestionControl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/UDTCongestionControl;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ludt/UDTSession;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ludt/UDTCongestionControl;->roundTripTime:J

    iput-wide v0, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    iput-wide v0, p0, Ludt/UDTCongestionControl;->estimatedLinkCapacity:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    iput-wide v0, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTCongestionControl;->slowStartPhase:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ludt/UDTCongestionControl;->lastAckSeqNumber:J

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Ludt/UDTCongestionControl;->nACKCount:J

    iput-wide v2, p0, Ludt/UDTCongestionControl;->decCount:J

    iput-wide v2, p0, Ludt/UDTCongestionControl;->decreaseRandom:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Ludt/UDTCongestionControl;->loss:Z

    iput-wide v0, p0, Ludt/UDTCongestionControl;->ackInterval:J

    iput-object p1, p0, Ludt/UDTCongestionControl;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getStatistics()Ludt/util/UDTStatistics;

    move-result-object v0

    iput-object v0, p0, Ludt/UDTCongestionControl;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/UDTSession;->getInitialSequenceNumber()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTCongestionControl;->lastDecreaseSeqNo:J

    return-void
.end method

.method private computeNumOfIncreasingPacket()D
    .locals 6

    iget-wide v0, p0, Ludt/UDTCongestionControl;->estimatedLinkCapacity:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    iget-wide v4, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const-wide v0, 0x3f4a36e2eb1c432dL    # 8.0E-4

    return-wide v0

    :cond_0
    const-wide v4, 0x4093880000000000L    # 1250.0

    mul-double v0, v0, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x3e149da7e361ce4cL    # 1.2E-9

    mul-double v0, v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAckInterval()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->ackInterval:J

    return-wide v0
.end method

.method public getCongestionWindowSize()D
    .locals 2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    return-wide v0
.end method

.method public getEstimatedLinkCapacity()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->estimatedLinkCapacity:J

    return-wide v0
.end method

.method public getPacketArrivalRate()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    return-wide v0
.end method

.method public getSendInterval()D
    .locals 2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    return-wide v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public onACK(J)V
    .locals 10

    iget-boolean v0, p0, Ludt/UDTCongestionControl;->slowStartPhase:Z

    const-wide v1, 0x412e848000000000L    # 1000000.0

    const/4 v3, 0x0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    if-eqz v0, :cond_1

    iget-wide v6, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    iget-wide v8, p0, Ludt/UDTCongestionControl;->lastAckSeqNumber:J

    sub-long v8, p1, v8

    long-to-double v8, v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    iput-wide p1, p0, Ludt/UDTCongestionControl;->lastAckSeqNumber:J

    iget-object p1, p0, Ludt/UDTCongestionControl;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getFlowWindowSize()I

    move-result p1

    int-to-double p1, p1

    cmpl-double v0, v6, p1

    if-lez v0, :cond_2

    iput-boolean v3, p0, Ludt/UDTCongestionControl;->slowStartPhase:Z

    iget-wide p1, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-lez v0, :cond_0

    long-to-double p1, p1

    div-double/2addr v1, p1

    iput-wide v1, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    iget-wide v0, p0, Ludt/UDTCongestionControl;->roundTripTime:J

    long-to-double v0, v0

    add-double/2addr v0, v4

    div-double/2addr p1, v0

    iput-wide p1, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    long-to-double p1, p1

    div-double/2addr p1, v1

    iget-wide v0, p0, Ludt/UDTCongestionControl;->roundTripTime:J

    long-to-double v6, v0

    add-double/2addr v6, v4

    mul-double v6, v6, p1

    double-to-long p1, v6

    const-wide/16 v6, 0x14

    add-long/2addr p1, v6

    long-to-double p1, p1

    iput-wide p1, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    sget-object p1, Ludt/UDTCongestionControl;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object v0, v2, p2

    const/4 p2, 0x2

    aput-object v1, v2, p2

    const-string p2, "Receive rate: {}, rtt: {}, set to window size: {}"

    invoke-interface {p1, p2, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Ludt/UDTCongestionControl;->slowStartPhase:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-boolean p1, p0, Ludt/UDTCongestionControl;->loss:Z

    if-eqz p1, :cond_4

    iput-boolean v3, p0, Ludt/UDTCongestionControl;->loss:Z

    return-void

    :cond_4
    invoke-direct {p0}, Ludt/UDTCongestionControl;->computeNumOfIncreasingPacket()D

    move-result-wide p1

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    mul-double p1, p1, v0

    add-double/2addr p1, v4

    div-double/2addr v4, p1

    mul-double v4, v4, v0

    iput-wide v4, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    iget-object p1, p0, Ludt/UDTCongestionControl;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1, v4, v5}, Ludt/util/UDTStatistics;->setSendPeriod(D)V

    return-void
.end method

.method public onLoss(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTCongestionControl;->loss:Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    iget-wide v3, p0, Ludt/UDTCongestionControl;->nACKCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Ludt/UDTCongestionControl;->nACKCount:J

    iget-boolean p1, p0, Ludt/UDTCongestionControl;->slowStartPhase:Z

    if-eqz p1, :cond_1

    iget-wide v1, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    long-to-double v1, v1

    div-double/2addr v3, v1

    iput-wide v3, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Ludt/UDTCongestionControl;->congestionWindowSize:D

    iget-wide v3, p0, Ludt/UDTCongestionControl;->roundTripTime:J

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    :goto_0
    iput-boolean v0, p0, Ludt/UDTCongestionControl;->slowStartPhase:Z

    return-void

    :cond_1
    iget-object p1, p0, Ludt/UDTCongestionControl;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTSocket;->getSender()Ludt/UDTSender;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTSender;->getCurrentSequenceNumber()J

    move-result-wide v3

    iget-wide v7, p0, Ludt/UDTCongestionControl;->lastDecreaseSeqNo:J

    const-wide/high16 v9, 0x3ff2000000000000L    # 1.125

    cmp-long p1, v1, v7

    if-lez p1, :cond_2

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    mul-double v0, v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    iget-wide v0, p0, Ludt/UDTCongestionControl;->averageNACKNum:J

    long-to-double v0, v0

    const-wide/high16 v7, 0x3fec000000000000L    # 0.875

    mul-double v0, v0, v7

    iget-wide v7, p0, Ludt/UDTCongestionControl;->nACKCount:J

    long-to-double v7, v7

    const-wide/high16 v9, 0x3fc0000000000000L    # 0.125

    mul-double v7, v7, v9

    add-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Ludt/UDTCongestionControl;->averageNACKNum:J

    iput-wide v5, p0, Ludt/UDTCongestionControl;->nACKCount:J

    iput-wide v5, p0, Ludt/UDTCongestionControl;->decCount:J

    sub-long/2addr v0, v5

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double v5, v5, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Ludt/UDTCongestionControl;->decreaseRandom:J

    :goto_1
    iput-wide v3, p0, Ludt/UDTCongestionControl;->lastDecreaseSeqNo:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Ludt/UDTCongestionControl;->decCount:J

    const-wide/16 v7, 0x5

    cmp-long p1, v0, v7

    if-gtz p1, :cond_3

    iget-wide v7, p0, Ludt/UDTCongestionControl;->nACKCount:J

    iget-wide v11, p0, Ludt/UDTCongestionControl;->decreaseRandom:J

    mul-long v0, v0, v11

    cmp-long p1, v7, v0

    if-nez p1, :cond_3

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    mul-double v0, v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    iget-wide v0, p0, Ludt/UDTCongestionControl;->decCount:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Ludt/UDTCongestionControl;->decCount:J

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Ludt/UDTCongestionControl;->statistics:Ludt/util/UDTStatistics;

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetSendingPeriod:D

    invoke-virtual {p1, v0, v1}, Ludt/util/UDTStatistics;->setSendPeriod(D)V

    return-void
.end method

.method public setRTT(JJ)V
    .locals 0

    iput-wide p1, p0, Ludt/UDTCongestionControl;->roundTripTime:J

    return-void
.end method

.method public updatePacketArrivalRate(JJ)V
    .locals 9

    iget-wide v0, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    const-wide/16 v2, 0x8

    const-wide/16 v4, 0x7

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    mul-long v0, v0, v4

    add-long/2addr v0, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Ludt/UDTCongestionControl;->packetArrivalRate:J

    :goto_0
    iget-wide p1, p0, Ludt/UDTCongestionControl;->estimatedLinkCapacity:J

    cmp-long v0, p1, v6

    if-lez v0, :cond_1

    mul-long p1, p1, v4

    add-long/2addr p1, p3

    div-long/2addr p1, v2

    iput-wide p1, p0, Ludt/UDTCongestionControl;->estimatedLinkCapacity:J

    goto :goto_1

    :cond_1
    iput-wide p3, p0, Ludt/UDTCongestionControl;->estimatedLinkCapacity:J

    :goto_1
    return-void
.end method
