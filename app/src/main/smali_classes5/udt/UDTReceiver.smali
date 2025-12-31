.class public Ludt/UDTReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field public static dropRate:I


# instance fields
.field private final ackHistoryWindow:Ludt/receiver/AckHistoryWindow;

.field private volatile ackInterval:J

.field private volatile ackSequenceNumber:J

.field private ackTimerInterval:J

.field private final bufferSize:J

.field private dataPacketInterval:Ludt/util/MeanValue;

.field private dataProcessTime:Ludt/util/MeanValue;

.field private dgReceiveInterval:Ludt/util/MeanValue;

.field private final endpoint:Ludt/AbstractUDPEndPoint;

.field estimateLinkCapacity:J

.field private volatile expCount:J

.field private final expTimerInterval:J

.field private final handoffQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ludt/UDTPacket;",
            ">;"
        }
    .end annotation
.end field

.field private volatile largestAcknowledgedAckNumber:J

.field private volatile largestReceivedSeqNumber:J

.field private lastAckNumber:J

.field private volatile lastDataPacketArrivalTime:J

.field private n:I

.field private nakTimerInterval:J

.field private nextACK:J

.field private nextEXP:J

.field private nextNAK:J

.field packetArrivalSpeed:J

.field private final packetHistoryWindow:Ludt/receiver/PacketHistoryWindow;

.field private final packetPairWindow:Ludt/receiver/PacketPairWindow;

.field private processTime:Ludt/util/MeanValue;

.field private final receiverLossList:Ludt/receiver/ReceiverLossList;

.field roundTripTime:J

.field roundTripTimeVar:J

.field private final session:Ludt/UDTSession;

.field private final sessionUpSince:J

.field private final statistics:Ludt/util/UDTStatistics;

.field private volatile stopped:Z

.field private final storeStatistics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/UDTReceiver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/UDTReceiver;->LOG:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    sput v0, Ludt/UDTReceiver;->dropRate:I

    return-void
.end method

.method public constructor <init>(Ludt/UDTSession;Ludt/AbstractUDPEndPoint;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ludt/UDTReceiver;->lastDataPacketArrivalTime:J

    iput-wide v0, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    iput-wide v0, p0, Ludt/UDTReceiver;->lastAckNumber:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ludt/UDTReceiver;->largestAcknowledgedAckNumber:J

    iput-wide v0, p0, Ludt/UDTReceiver;->expCount:J

    iput-wide v0, p0, Ludt/UDTReceiver;->roundTripTime:J

    const-wide/16 v4, 0x2

    div-long v4, v0, v4

    iput-wide v4, p0, Ludt/UDTReceiver;->roundTripTimeVar:J

    const-wide/16 v4, 0x2710

    iput-wide v4, p0, Ludt/UDTReceiver;->ackTimerInterval:J

    iput-wide v4, p0, Ludt/UDTReceiver;->nakTimerInterval:J

    const-wide/32 v4, 0xf4240

    iput-wide v4, p0, Ludt/UDTReceiver;->expTimerInterval:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Ludt/UDTReceiver;->stopped:Z

    iput-wide v2, p0, Ludt/UDTReceiver;->ackInterval:J

    iput v4, p0, Ludt/UDTReceiver;->n:I

    iput-wide v0, p0, Ludt/UDTReceiver;->ackSequenceNumber:J

    iput-object p2, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    iput-object p1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTReceiver;->sessionUpSince:J

    invoke-virtual {p1}, Ludt/UDTSession;->getStatistics()Ludt/util/UDTStatistics;

    move-result-object p2

    iput-object p2, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/UDTSession;->isReady()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ludt/receiver/AckHistoryWindow;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Ludt/receiver/AckHistoryWindow;-><init>(I)V

    iput-object p2, p0, Ludt/UDTReceiver;->ackHistoryWindow:Ludt/receiver/AckHistoryWindow;

    new-instance p2, Ludt/receiver/PacketHistoryWindow;

    invoke-direct {p2, v0}, Ludt/receiver/PacketHistoryWindow;-><init>(I)V

    iput-object p2, p0, Ludt/UDTReceiver;->packetHistoryWindow:Ludt/receiver/PacketHistoryWindow;

    new-instance p2, Ludt/receiver/ReceiverLossList;

    invoke-direct {p2}, Ludt/receiver/ReceiverLossList;-><init>()V

    iput-object p2, p0, Ludt/UDTReceiver;->receiverLossList:Ludt/receiver/ReceiverLossList;

    new-instance p2, Ludt/receiver/PacketPairWindow;

    invoke-direct {p2, v0}, Ludt/receiver/PacketPairWindow;-><init>(I)V

    iput-object p2, p0, Ludt/UDTReceiver;->packetPairWindow:Ludt/receiver/PacketPairWindow;

    invoke-virtual {p1}, Ludt/UDTSession;->getInitialSequenceNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    invoke-virtual {p1}, Ludt/UDTSession;->getReceiveBufferSize()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Ludt/UDTReceiver;->bufferSize:J

    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ludt/UDTSession;->getFlowWindowSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {p2, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Ludt/UDTReceiver;->handoffQueue:Ljava/util/concurrent/BlockingQueue;

    const-string p1, "udt.receiver.storeStatistics"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ludt/UDTReceiver;->storeStatistics:Z

    invoke-direct {p0}, Ludt/UDTReceiver;->initMetrics()V

    invoke-direct {p0}, Ludt/UDTReceiver;->start()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "UDTSession is not ready."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Ludt/UDTReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ludt/UDTReceiver;->lambda$start$0()V

    return-void
.end method

.method private buildLightAcknowledgement(J)Ludt/packets/Acknowledgement;
    .locals 3

    new-instance v0, Ludt/packets/Acknowledgement;

    invoke-direct {v0}, Ludt/packets/Acknowledgement;-><init>()V

    invoke-virtual {v0, p1, p2}, Ludt/packets/Acknowledgement;->setAckNumber(J)V

    iget-wide p1, p0, Ludt/UDTReceiver;->ackSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Ludt/UDTReceiver;->ackSequenceNumber:J

    invoke-virtual {v0, p1, p2}, Ludt/packets/Acknowledgement;->setAckSequenceNumber(J)V

    iget-wide p1, p0, Ludt/UDTReceiver;->roundTripTime:J

    invoke-virtual {v0, p1, p2}, Ludt/packets/Acknowledgement;->setRoundTripTime(J)V

    iget-wide p1, p0, Ludt/UDTReceiver;->roundTripTimeVar:J

    invoke-virtual {v0, p1, p2}, Ludt/packets/Acknowledgement;->setRoundTripTimeVar(J)V

    iget-wide p1, p0, Ludt/UDTReceiver;->bufferSize:J

    invoke-virtual {v0, p1, p2}, Ludt/packets/Acknowledgement;->setBufferSize(J)V

    iget-object p1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object p1

    invoke-virtual {p1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-object p1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0, p1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    return-object v0
.end method

.method private initMetrics()V
    .locals 2

    iget-boolean v0, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ludt/util/MeanValue;

    const-string v1, "RECEIVER: UDT receive interval"

    invoke-direct {v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ludt/UDTReceiver;->dgReceiveInterval:Ludt/util/MeanValue;

    iget-object v1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    new-instance v0, Ludt/util/MeanValue;

    const-string v1, "RECEIVER: Data packet interval"

    invoke-direct {v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ludt/UDTReceiver;->dataPacketInterval:Ludt/util/MeanValue;

    iget-object v1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    new-instance v0, Ludt/util/MeanValue;

    const-string v1, "RECEIVER: UDT packet process time"

    invoke-direct {v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ludt/UDTReceiver;->processTime:Ludt/util/MeanValue;

    iget-object v1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    new-instance v0, Ludt/util/MeanValue;

    const-string v1, "RECEIVER: Data packet process time"

    invoke-direct {v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ludt/UDTReceiver;->dataProcessTime:Ludt/util/MeanValue;

    iget-object v1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 6

    :try_start_0
    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/UDTReceiver;->ackTimerInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTReceiver;->nextACK:J

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Ludt/UDTReceiver;->nakTimerInterval:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v4

    add-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Ludt/UDTReceiver;->nextNAK:J

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v2, 0x1e8480

    add-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTReceiver;->nextEXP:J

    iget-object v0, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v0

    invoke-interface {v0}, Ludt/CongestionControl;->getAckInterval()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTReceiver;->ackInterval:J

    :goto_0
    iget-boolean v0, p0, Ludt/UDTReceiver;->stopped:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ludt/UDTReceiver;->receiverAlgorithm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ludt/UDTReceiver;->LOG:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Ludt/UDTReceiver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping receiver for {}"

    iget-object v2, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private start()V
    .locals 4

    .line 1
    new-instance v0, LB/c;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, LB/c;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ludt/util/UDTThreadFactory;->get()Ludt/util/UDTThreadFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Ludt/util/UDTThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    .line 17
    .line 18
    instance-of v1, v1, Ludt/ServerSession;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "ServerSession"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "ClientSession"

    .line 26
    .line 27
    :goto_0
    const-string v2, "UDTReceiver-"

    .line 28
    .line 29
    const-string v3, "-"

    .line 30
    .line 31
    invoke-static {v2, v1, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public onAck2PacketReceived(Ludt/packets/Acknowledgment2;)V
    .locals 12

    iget-object v0, p0, Ludt/UDTReceiver;->ackHistoryWindow:Ludt/receiver/AckHistoryWindow;

    invoke-virtual {p1}, Ludt/packets/Acknowledgment2;->getAckSequenceNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/receiver/AckHistoryWindow;->getEntry(J)Ludt/receiver/AckHistoryEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ludt/receiver/AckHistoryEntry;->getAckNumber()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/UDTReceiver;->largestAcknowledgedAckNumber:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTReceiver;->largestAcknowledgedAckNumber:J

    invoke-virtual {p1}, Ludt/receiver/AckHistoryEntry;->getAge()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/UDTReceiver;->roundTripTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    const-wide/16 v4, 0x7

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    iput-wide v2, p0, Ludt/UDTReceiver;->roundTripTime:J

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Ludt/UDTReceiver;->roundTripTime:J

    :goto_0
    iget-wide v2, p0, Ludt/UDTReceiver;->roundTripTimeVar:J

    const-wide/16 v4, 0x3

    mul-long v4, v4, v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    add-long/2addr v0, v4

    const-wide/16 v4, 0x4

    div-long/2addr v0, v4

    iput-wide v0, p0, Ludt/UDTReceiver;->roundTripTimeVar:J

    iget-wide v10, p0, Ludt/UDTReceiver;->roundTripTime:J

    const-wide/16 v8, 0x2710

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v2

    iput-wide v2, p0, Ludt/UDTReceiver;->ackTimerInterval:J

    iput-wide v2, p0, Ludt/UDTReceiver;->nakTimerInterval:J

    iget-object p1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1, v10, v11, v0, v1}, Ludt/util/UDTStatistics;->setRTT(JJ)V

    :cond_1
    return-void
.end method

.method public onDataPacketReceived(Ludt/packets/DataPacket;)V
    .locals 10

    invoke-virtual {p1}, Ludt/packets/DataPacket;->getPacketSequenceNumber()J

    move-result-wide v0

    iget-object v2, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v2}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v2

    invoke-virtual {v2}, Ludt/UDTSocket;->getInputStream()Ludt/UDTInputStream;

    move-result-object v2

    invoke-virtual {p1}, Ludt/packets/DataPacket;->getData()[B

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Ludt/UDTInputStream;->haveNewData(J[B)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    rem-long v4, v0, v4

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    iget-wide v4, p0, Ludt/UDTReceiver;->lastDataPacketArrivalTime:J

    cmp-long p1, v4, v8

    if-lez p1, :cond_1

    iget-wide v4, p0, Ludt/UDTReceiver;->lastDataPacketArrivalTime:J

    sub-long v4, v2, v4

    iget-object p1, p0, Ludt/UDTReceiver;->packetPairWindow:Ludt/receiver/PacketPairWindow;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ludt/util/CircularArray;->add(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Ludt/UDTReceiver;->packetHistoryWindow:Ludt/receiver/PacketHistoryWindow;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ludt/util/CircularArray;->add(Ljava/lang/Object;)V

    iput-wide v2, p0, Ludt/UDTReceiver;->lastDataPacketArrivalTime:J

    iget-wide v2, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ludt/util/SequenceNumber;->compare(JJ)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-lez p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ludt/UDTReceiver;->sendNAK(J)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    invoke-static {v0, v1, v2, v3}, Ludt/util/SequenceNumber;->compare(JJ)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-gez p1, :cond_3

    iget-object p1, p0, Ludt/UDTReceiver;->receiverLossList:Ludt/receiver/ReceiverLossList;

    invoke-virtual {p1, v0, v1}, Ludt/receiver/ReceiverLossList;->remove(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->incNumberOfReceivedDataPackets()V

    iget-wide v2, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    invoke-static {v0, v1, v2, v3}, Ludt/util/SequenceNumber;->compare(JJ)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-lez p1, :cond_4

    iput-wide v0, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    :cond_4
    iget-wide v0, p0, Ludt/UDTReceiver;->ackInterval:J

    cmp-long p1, v0, v8

    if-lez p1, :cond_5

    iget p1, p0, Ludt/UDTReceiver;->n:I

    int-to-long v0, p1

    iget-wide v2, p0, Ludt/UDTReceiver;->ackInterval:J

    rem-long/2addr v0, v2

    cmp-long p1, v0, v8

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ludt/UDTReceiver;->processACKEvent(Z)V

    :cond_5
    return-void
.end method

.method public onShutdown()V
    .locals 0

    invoke-virtual {p0}, Ludt/UDTReceiver;->stop()V

    return-void
.end method

.method public processACKEvent(Z)V
    .locals 9

    iget-object v0, p0, Ludt/UDTReceiver;->receiverLossList:Ludt/receiver/ReceiverLossList;

    invoke-virtual {v0}, Ludt/receiver/ReceiverLossList;->getFirstEntry()Ludt/receiver/ReceiverLossListEntry;

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ludt/receiver/ReceiverLossListEntry;->getSequenceNumber()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Ludt/UDTReceiver;->largestAcknowledgedAckNumber:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-wide v2, p0, Ludt/UDTReceiver;->lastAckNumber:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v4, p0, Ludt/UDTReceiver;->ackHistoryWindow:Ludt/receiver/AckHistoryWindow;

    invoke-virtual {v4, v2, v3}, Ludt/receiver/AckHistoryWindow;->getTime(J)J

    move-result-wide v2

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x2

    iget-wide v6, p0, Ludt/UDTReceiver;->roundTripTime:J

    mul-long v6, v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0, v0, v1}, Ludt/UDTReceiver;->sendLightAcknowledgment(J)J

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1}, Ludt/UDTReceiver;->sendAcknowledgment(J)J

    move-result-wide v3

    new-instance p1, Ludt/receiver/AckHistoryEntry;

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v7

    move-object v2, p1

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Ludt/receiver/AckHistoryEntry;-><init>(JJJ)V

    iget-object v2, p0, Ludt/UDTReceiver;->ackHistoryWindow:Ludt/receiver/AckHistoryWindow;

    invoke-virtual {v2, p1}, Ludt/util/CircularArray;->add(Ljava/lang/Object;)V

    iput-wide v0, p0, Ludt/UDTReceiver;->lastAckNumber:J

    return-void
.end method

.method public processEXPEvent()V
    .locals 6

    iget-object v0, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->getSender()Ludt/UDTSender;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSender;->putUnacknowledgedPacketsIntoLossList()V

    iget-wide v1, p0, Ludt/UDTReceiver;->expCount:J

    const-wide/16 v3, 0x10

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ludt/UDTReceiver;->sessionUpSince:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-boolean v1, p0, Ludt/UDTReceiver;->stopped:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ludt/UDTReceiver;->sendShutdown()V

    invoke-virtual {p0}, Ludt/UDTReceiver;->stop()V

    sget-object v0, Ludt/UDTReceiver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Session {} expired"

    iget-object v2, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ludt/UDTSender;->haveLostPackets()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ludt/UDTReceiver;->sendKeepAlive()V

    :cond_2
    iget-wide v0, p0, Ludt/UDTReceiver;->expCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTReceiver;->expCount:J

    :cond_3
    :goto_0
    return-void
.end method

.method public processNAKEvent()V
    .locals 4

    iget-object v0, p0, Ludt/UDTReceiver;->receiverLossList:Ludt/receiver/ReceiverLossList;

    iget-wide v1, p0, Ludt/UDTReceiver;->roundTripTime:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ludt/receiver/ReceiverLossList;->getFilteredSequenceNumbers(JZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ludt/UDTReceiver;->sendNAK(Ljava/util/List;)V

    return-void
.end method

.method public processUDTPacket(Ludt/UDTPacket;)V
    .locals 2

    invoke-interface {p1}, Ludt/UDTPacket;->isControlPacket()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Ludt/packets/DataPacket;

    iget-boolean v0, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ludt/UDTReceiver;->dataPacketInterval:Ludt/util/MeanValue;

    invoke-virtual {v0}, Ludt/util/MeanValue;->end()V

    iget-object v0, p0, Ludt/UDTReceiver;->dataProcessTime:Ludt/util/MeanValue;

    invoke-virtual {v0}, Ludt/util/MeanValue;->begin()V

    :cond_0
    invoke-virtual {p0, p1}, Ludt/UDTReceiver;->onDataPacketReceived(Ludt/packets/DataPacket;)V

    iget-boolean p1, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Ludt/UDTReceiver;->dataProcessTime:Ludt/util/MeanValue;

    invoke-virtual {p1}, Ludt/util/MeanValue;->end()V

    iget-object p1, p0, Ludt/UDTReceiver;->dataPacketInterval:Ludt/util/MeanValue;

    invoke-virtual {p1}, Ludt/util/MeanValue;->begin()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ludt/UDTPacket;->getControlPacketType()I

    move-result v0

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->ACK2:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    check-cast p1, Ludt/packets/Acknowledgment2;

    invoke-virtual {p0, p1}, Ludt/UDTReceiver;->onAck2PacketReceived(Ludt/packets/Acknowledgment2;)V

    goto :goto_0

    :cond_2
    instance-of p1, p1, Ludt/packets/Shutdown;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ludt/UDTReceiver;->onShutdown()V

    :cond_3
    :goto_0
    return-void
.end method

.method public receive(Ludt/UDTPacket;)V
    .locals 1

    iget-boolean v0, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ludt/UDTReceiver;->dgReceiveInterval:Ludt/util/MeanValue;

    invoke-virtual {v0}, Ludt/util/MeanValue;->end()V

    :cond_0
    iget-object v0, p0, Ludt/UDTReceiver;->handoffQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ludt/UDTReceiver;->dgReceiveInterval:Ludt/util/MeanValue;

    invoke-virtual {p1}, Ludt/util/MeanValue;->begin()V

    :cond_1
    return-void
.end method

.method public receiverAlgorithm()V
    .locals 7

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/UDTReceiver;->nextACK:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-wide v2, p0, Ludt/UDTReceiver;->ackTimerInterval:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ludt/UDTReceiver;->nextACK:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ludt/UDTReceiver;->processACKEvent(Z)V

    :cond_0
    iget-wide v2, p0, Ludt/UDTReceiver;->nextNAK:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    iget-wide v2, p0, Ludt/UDTReceiver;->nakTimerInterval:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ludt/UDTReceiver;->nextNAK:J

    invoke-virtual {p0}, Ludt/UDTReceiver;->processNAKEvent()V

    :cond_1
    iget-wide v2, p0, Ludt/UDTReceiver;->nextEXP:J

    const-wide/32 v4, 0xf4240

    cmp-long v6, v2, v0

    if-gez v6, :cond_2

    add-long/2addr v0, v4

    iput-wide v0, p0, Ludt/UDTReceiver;->nextEXP:J

    invoke-virtual {p0}, Ludt/UDTReceiver;->processEXPEvent()V

    :cond_2
    iget-object v0, p0, Ludt/UDTReceiver;->handoffQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ludt/UDTPacket;

    if-eqz v0, :cond_6

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Ludt/UDTReceiver;->expCount:J

    invoke-interface {v0}, Ludt/UDTPacket;->isControlPacket()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ludt/packets/ControlPacket;

    invoke-virtual {v1}, Ludt/packets/ControlPacket;->getControlPacketType()I

    move-result v1

    sget-object v2, Ludt/packets/ControlPacket$ControlPacketType;->ACK:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_3

    sget-object v2, Ludt/packets/ControlPacket$ControlPacketType;->NAK:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v1

    add-long/2addr v1, v4

    iput-wide v1, p0, Ludt/UDTReceiver;->nextEXP:J

    :cond_4
    iget-boolean v1, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Ludt/UDTReceiver;->processTime:Ludt/util/MeanValue;

    invoke-virtual {v1}, Ludt/util/MeanValue;->begin()V

    :cond_5
    invoke-virtual {p0, v0}, Ludt/UDTReceiver;->processUDTPacket(Ludt/UDTPacket;)V

    iget-boolean v0, p0, Ludt/UDTReceiver;->storeStatistics:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Ludt/UDTReceiver;->processTime:Ludt/util/MeanValue;

    invoke-virtual {v0}, Ludt/util/MeanValue;->end()V

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method

.method public resetEXPCount()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ludt/UDTReceiver;->expCount:J

    return-void
.end method

.method public resetEXPTimer()V
    .locals 4

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    add-long/2addr v0, v2

    iput-wide v0, p0, Ludt/UDTReceiver;->nextEXP:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ludt/UDTReceiver;->expCount:J

    return-void
.end method

.method public sendAcknowledgment(J)J
    .locals 4

    invoke-direct {p0, p1, p2}, Ludt/UDTReceiver;->buildLightAcknowledgement(J)Ludt/packets/Acknowledgement;

    move-result-object p1

    iget-object p2, p0, Ludt/UDTReceiver;->packetPairWindow:Ludt/receiver/PacketPairWindow;

    invoke-virtual {p2}, Ludt/receiver/PacketPairWindow;->getEstimatedLinkCapacity()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTReceiver;->estimateLinkCapacity:J

    invoke-virtual {p1, v0, v1}, Ludt/packets/Acknowledgement;->setEstimatedLinkCapacity(J)V

    iget-object p2, p0, Ludt/UDTReceiver;->packetHistoryWindow:Ludt/receiver/PacketHistoryWindow;

    invoke-virtual {p2}, Ludt/receiver/PacketHistoryWindow;->getPacketArrivalSpeed()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTReceiver;->packetArrivalSpeed:J

    invoke-virtual {p1, v0, v1}, Ludt/packets/Acknowledgement;->setPacketReceiveRate(J)V

    iget-object p2, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p2, p1}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    iget-object p2, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p2}, Ludt/util/UDTStatistics;->incNumberOfACKSent()V

    iget-object p2, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    iget-wide v0, p0, Ludt/UDTReceiver;->packetArrivalSpeed:J

    iget-wide v2, p0, Ludt/UDTReceiver;->estimateLinkCapacity:J

    invoke-virtual {p2, v0, v1, v2, v3}, Ludt/util/UDTStatistics;->setPacketArrivalRate(JJ)V

    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getAckSequenceNumber()J

    move-result-wide p1

    return-wide p1
.end method

.method public sendKeepAlive()V
    .locals 3

    new-instance v0, Ludt/packets/KeepAlive;

    invoke-direct {v0}, Ludt/packets/KeepAlive;-><init>()V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object v1

    invoke-virtual {v1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0, v1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget-object v1, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {v1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    return-void
.end method

.method public sendLightAcknowledgment(J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Ludt/UDTReceiver;->buildLightAcknowledgement(J)Ludt/packets/Acknowledgement;

    move-result-object p1

    iget-object p2, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p2, p1}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    iget-object p2, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p2}, Ludt/util/UDTStatistics;->incNumberOfACKSent()V

    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getAckSequenceNumber()J

    move-result-wide p1

    return-wide p1
.end method

.method public sendNAK(J)V
    .locals 7

    .line 1
    new-instance v0, Ludt/packets/NegativeAcknowledgement;

    invoke-direct {v0}, Ludt/packets/NegativeAcknowledgement;-><init>()V

    iget-wide v1, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Ludt/packets/NegativeAcknowledgement;->addLossInfo(JJ)V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0, v1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object v1

    invoke-virtual {v1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-wide v1, p0, Ludt/UDTReceiver;->largestReceivedSeqNumber:J

    :goto_0
    add-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-gez v5, :cond_0

    new-instance v5, Ludt/receiver/ReceiverLossListEntry;

    invoke-direct {v5, v1, v2}, Ludt/receiver/ReceiverLossListEntry;-><init>(J)V

    iget-object v6, p0, Ludt/UDTReceiver;->receiverLossList:Ludt/receiver/ReceiverLossList;

    invoke-virtual {v6, v5}, Ludt/receiver/ReceiverLossList;->insert(Ludt/receiver/ReceiverLossListEntry;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    iget-object p1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->incNumberOfNAKSent()V

    return-void
.end method

.method public sendNAK(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ludt/packets/NegativeAcknowledgement;

    invoke-direct {v0}, Ludt/packets/NegativeAcknowledgement;-><init>()V

    invoke-virtual {v0, p1}, Ludt/packets/NegativeAcknowledgement;->addLossInfo(Ljava/util/List;)V

    iget-object p1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0, p1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget-object p1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object p1

    invoke-virtual {p1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-object p1, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    iget-object p1, p0, Ludt/UDTReceiver;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->incNumberOfNAKSent()V

    return-void
.end method

.method public sendShutdown()V
    .locals 3

    new-instance v0, Ludt/packets/Shutdown;

    invoke-direct {v0}, Ludt/packets/Shutdown;-><init>()V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object v1

    invoke-virtual {v1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0, v1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget-object v1, p0, Ludt/UDTReceiver;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {v1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTReceiver;->stopped:Z

    iget-object v0, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->close()V

    iget-object v0, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->getSender()Ludt/UDTSender;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSender;->stop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UDTReceiver "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ludt/UDTReceiver;->session:Ludt/UDTSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nLossList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ludt/UDTReceiver;->receiverLossList:Ludt/receiver/ReceiverLossList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
