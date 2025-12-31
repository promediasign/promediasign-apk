.class public Ludt/UDTSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final ackCondition:Ljava/util/concurrent/locks/Condition;

.field private final ackLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final chunksize:I

.field private volatile currentSequenceNumber:J

.field private dgSendInterval:Ludt/util/MeanValue;

.field private dgSendTime:Ludt/util/MeanValue;

.field private final endpoint:Ludt/AbstractUDPEndPoint;

.field private final flowWindow:Ludt/sender/FlowWindow;

.field iterationStart:J

.field private volatile largestSentSequenceNumber:J

.field private volatile lastAckSequenceNumber:J

.field private volatile paused:Z

.field private final retransmit:Ludt/packets/DataPacket;

.field private final sendBuffer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private final sendLock:Ljava/lang/Object;

.field private final senderLossList:Ludt/sender/SenderLossList;

.field private final session:Ludt/UDTSession;

.field private volatile startLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile started:Z

.field private final statistics:Ludt/util/UDTStatistics;

.field private volatile stopped:Z

.field private final storeStatistics:Z

.field private throughput:Ludt/util/MeanThroughput;

.field private final unacknowledged:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/UDTSender;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/UDTSender;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ludt/UDTSession;Ludt/AbstractUDPEndPoint;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ludt/UDTSender;->sendLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/UDTSender;->unacknowledged:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ludt/UDTSender;->currentSequenceNumber:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ludt/UDTSender;->largestSentSequenceNumber:J

    iput-boolean v1, p0, Ludt/UDTSender;->started:Z

    iput-boolean v1, p0, Ludt/UDTSender;->stopped:Z

    iput-boolean v1, p0, Ludt/UDTSender;->paused:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ludt/UDTSender;->startLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ludt/UDTSender;->ackCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ludt/packets/DataPacket;

    invoke-direct {v0}, Ludt/packets/DataPacket;-><init>()V

    iput-object v0, p0, Ludt/UDTSender;->retransmit:Ludt/packets/DataPacket;

    invoke-virtual {p1}, Ludt/UDTSession;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Ludt/UDTSender;->endpoint:Ludt/AbstractUDPEndPoint;

    iput-object p1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getStatistics()Ludt/util/UDTStatistics;

    move-result-object p2

    iput-object p2, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    new-instance p2, Ludt/sender/SenderLossList;

    invoke-direct {p2}, Ludt/sender/SenderLossList;-><init>()V

    iput-object p2, p0, Ludt/UDTSender;->senderLossList:Ludt/sender/SenderLossList;

    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ludt/UDTSession;->getFlowWindowSize()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p2, p0, Ludt/UDTSender;->sendBuffer:Ljava/util/Map;

    invoke-virtual {p1}, Ludt/UDTSession;->getDatagramSize()I

    move-result p2

    add-int/lit8 p2, p2, -0x18

    iput p2, p0, Ludt/UDTSender;->chunksize:I

    new-instance v0, Ludt/sender/FlowWindow;

    invoke-virtual {p1}, Ludt/UDTSession;->getFlowWindowSize()I

    move-result v1

    invoke-direct {v0, v1, p2}, Ludt/sender/FlowWindow;-><init>(II)V

    iput-object v0, p0, Ludt/UDTSender;->flowWindow:Ludt/sender/FlowWindow;

    invoke-virtual {p1}, Ludt/UDTSession;->getInitialSequenceNumber()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTSender;->lastAckSequenceNumber:J

    invoke-virtual {p1}, Ludt/UDTSession;->getInitialSequenceNumber()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Ludt/UDTSender;->currentSequenceNumber:J

    const-string p1, "udt.sender.storeStatistics"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ludt/UDTSender;->storeStatistics:Z

    invoke-direct {p0}, Ludt/UDTSender;->initMetrics()V

    invoke-direct {p0}, Ludt/UDTSender;->doStart()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "UDTSession is not ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Ludt/UDTSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ludt/UDTSender;->lambda$doStart$0()V

    return-void
.end method

.method private doStart()V
    .locals 4

    .line 1
    new-instance v0, LB/c;

    .line 2
    .line 3
    const/16 v1, 0xd

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
    iget-object v1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

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
    const-string v2, "UDTSender-"

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

.method private initMetrics()V
    .locals 3

    iget-boolean v0, p0, Ludt/UDTSender;->storeStatistics:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ludt/util/MeanValue;

    const-string v1, "SENDER: Datagram send time"

    invoke-direct {v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ludt/UDTSender;->dgSendTime:Ludt/util/MeanValue;

    iget-object v1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    new-instance v0, Ludt/util/MeanValue;

    const-string v1, "SENDER: Datagram send interval"

    invoke-direct {v0, v1}, Ludt/util/MeanValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ludt/UDTSender;->dgSendInterval:Ludt/util/MeanValue;

    iget-object v1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    new-instance v0, Ludt/util/MeanThroughput;

    iget-object v1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getDatagramSize()I

    move-result v1

    const-string v2, "SENDER: Throughput"

    invoke-direct {v0, v2, v1}, Ludt/util/MeanThroughput;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ludt/UDTSender;->throughput:Ludt/util/MeanThroughput;

    iget-object v1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v1, v0}, Ludt/util/UDTStatistics;->addMetric(Ludt/util/MeanValue;)V

    return-void
.end method

.method private synthetic lambda$doStart$0()V
    .locals 3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ludt/UDTSender;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ludt/UDTSender;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ludt/UDTSender;->paused:Z

    invoke-virtual {p0}, Ludt/UDTSender;->senderAlgorithm()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    sget-object v1, Ludt/UDTSender;->LOG:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Ludt/UDTSender;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping sender for {}"

    iget-object v2, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private send(Ludt/packets/DataPacket;)V
    .locals 5

    iget-object v0, p0, Ludt/UDTSender;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ludt/UDTSender;->storeStatistics:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ludt/UDTSender;->dgSendInterval:Ludt/util/MeanValue;

    invoke-virtual {v1}, Ludt/util/MeanValue;->end()V

    iget-object v1, p0, Ludt/UDTSender;->dgSendTime:Ludt/util/MeanValue;

    invoke-virtual {v1}, Ludt/util/MeanValue;->begin()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Ludt/UDTSender;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {v1, p1}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    iget-boolean v1, p0, Ludt/UDTSender;->storeStatistics:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ludt/UDTSender;->dgSendTime:Ludt/util/MeanValue;

    invoke-virtual {v1}, Ludt/util/MeanValue;->end()V

    iget-object v1, p0, Ludt/UDTSender;->dgSendInterval:Ludt/util/MeanValue;

    invoke-virtual {v1}, Ludt/util/MeanValue;->begin()V

    iget-object v1, p0, Ludt/UDTSender;->throughput:Ludt/util/MeanThroughput;

    invoke-virtual {v1}, Ludt/util/MeanValue;->end()V

    iget-object v1, p0, Ludt/UDTSender;->throughput:Ludt/util/MeanThroughput;

    invoke-virtual {v1}, Ludt/util/MeanValue;->begin()V

    :cond_1
    invoke-virtual {p1}, Ludt/packets/DataPacket;->getLength()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1}, Ludt/packets/DataPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ludt/UDTSender;->sendBuffer:Ljava/util/Map;

    invoke-virtual {p1}, Ludt/packets/DataPacket;->getPacketSequenceNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ludt/UDTSender;->unacknowledged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->incNumberOfSentDataPackets()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public getCurrentSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTSender;->currentSequenceNumber:J

    return-wide v0
.end method

.method public getNextSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTSender;->currentSequenceNumber:J

    invoke-static {v0, v1}, Ludt/util/SequenceNumber;->increment(J)J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTSender;->currentSequenceNumber:J

    iget-wide v0, p0, Ludt/UDTSender;->currentSequenceNumber:J

    return-wide v0
.end method

.method public handleRetransmit(Ljava/lang/Long;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ludt/UDTSender;->sendBuffer:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    iget-object v1, p0, Ludt/UDTSender;->retransmit:Ludt/packets/DataPacket;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ludt/packets/DataPacket;->setPacketSequenceNumber(J)V

    iget-object p1, p0, Ludt/UDTSender;->retransmit:Ludt/packets/DataPacket;

    iget-object v1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {p1, v1}, Ludt/packets/DataPacket;->setSession(Ludt/UDTSession;)V

    iget-object p1, p0, Ludt/UDTSender;->retransmit:Ludt/packets/DataPacket;

    iget-object v1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object v1

    invoke-virtual {v1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ludt/packets/DataPacket;->setDestinationID(J)V

    iget-object p1, p0, Ludt/UDTSender;->retransmit:Ludt/packets/DataPacket;

    invoke-virtual {p1, v0}, Ludt/packets/DataPacket;->setData([B)V

    iget-object p1, p0, Ludt/UDTSender;->endpoint:Ludt/AbstractUDPEndPoint;

    iget-object v0, p0, Ludt/UDTSender;->retransmit:Ludt/packets/DataPacket;

    invoke-virtual {p1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    iget-object p1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->incNumberOfRetransmittedDataPackets()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Ludt/UDTSender;->LOG:Lorg/slf4j/Logger;

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public haveAcknowledgementFor(J)Z
    .locals 3

    iget-wide v0, p0, Ludt/UDTSender;->lastAckSequenceNumber:J

    invoke-static {p1, p2, v0, v1}, Ludt/util/SequenceNumber;->compare(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public haveLostPackets()Z
    .locals 1

    iget-object v0, p0, Ludt/UDTSender;->senderLossList:Ludt/sender/SenderLossList;

    invoke-virtual {v0}, Ludt/sender/SenderLossList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSentOut(J)Z
    .locals 3

    iget-wide v0, p0, Ludt/UDTSender;->largestSentSequenceNumber:J

    invoke-static {v0, v1, p1, p2}, Ludt/util/SequenceNumber;->compare(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAcknowledge(Ludt/packets/Acknowledgement;)V
    .locals 8

    iget-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Ludt/UDTSender;->ackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v0

    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getRoundTripTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getRoundTripTimeVar()J

    move-result-wide v5

    invoke-interface {v0, v1, v2, v5, v6}, Ludt/CongestionControl;->setRTT(JJ)V

    iget-object v7, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v7, v1, v2, v5, v6}, Ludt/util/UDTStatistics;->setRTT(JJ)V

    :cond_0
    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getPacketReceiveRate()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getEstimatedLinkCapacity()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Ludt/CongestionControl;->updatePacketArrivalRate(JJ)V

    iget-object v1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-interface {v0}, Ludt/CongestionControl;->getPacketArrivalRate()J

    move-result-wide v2

    invoke-interface {v0}, Ludt/CongestionControl;->getEstimatedLinkCapacity()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ludt/util/UDTStatistics;->setPacketArrivalRate(JJ)V

    :cond_1
    invoke-virtual {p1}, Ludt/packets/Acknowledgement;->getAckNumber()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ludt/CongestionControl;->onACK(J)V

    iget-object p1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-interface {v0}, Ludt/CongestionControl;->getCongestionWindowSize()D

    move-result-wide v3

    double-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Ludt/util/UDTStatistics;->setCongestionWindowSize(J)V

    iget-wide v3, p0, Ludt/UDTSender;->lastAckSequenceNumber:J

    :goto_0
    cmp-long p1, v3, v1

    if-gez p1, :cond_4

    iget-object p1, p0, Ludt/UDTSender;->sendLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ludt/UDTSender;->sendBuffer:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Ludt/UDTSender;->senderLossList:Ludt/sender/SenderLossList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ludt/sender/SenderLossList;->remove(Ljava/lang/Long;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    iget-object p1, p0, Ludt/UDTSender;->unacknowledged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_3
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-wide v3, p0, Ludt/UDTSender;->lastAckSequenceNumber:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Ludt/UDTSender;->lastAckSequenceNumber:J

    invoke-virtual {p0, v1, v2}, Ludt/UDTSender;->sendAck2(J)V

    iget-object p1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->incNumberOfACKReceived()V

    iget-boolean p1, p0, Ludt/UDTSender;->storeStatistics:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {p1}, Ludt/util/UDTStatistics;->storeParameters()V

    :cond_5
    return-void
.end method

.method public onNAKPacketReceived(Ludt/packets/NegativeAcknowledgement;)V
    .locals 5

    invoke-virtual {p1}, Ludt/packets/NegativeAcknowledgement;->getDecodedLossInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Ludt/UDTSender;->senderLossList:Ludt/sender/SenderLossList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ludt/sender/SenderLossList;->insert(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v0

    invoke-virtual {p1}, Ludt/packets/NegativeAcknowledgement;->getDecodedLossInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ludt/CongestionControl;->onLoss(Ljava/util/List;)V

    iget-object v0, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTReceiver;->resetEXPTimer()V

    iget-object v0, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v0}, Ludt/util/UDTStatistics;->incNumberOfNAKReceived()V

    sget-object v0, Ludt/UDTSender;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ludt/packets/NegativeAcknowledgement;->getDecodedLossInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v1

    invoke-interface {v1}, Ludt/CongestionControl;->getSendInterval()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "NAK for {} packets lost, set send period to {}"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public putUnacknowledgedPacketsIntoLossList()V
    .locals 4

    iget-object v0, p0, Ludt/UDTSender;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ludt/UDTSender;->sendBuffer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Ludt/UDTSender;->senderLossList:Ludt/sender/SenderLossList;

    invoke-virtual {v3, v2}, Ludt/sender/SenderLossList;->insert(Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receive(Ludt/UDTPacket;)V
    .locals 1

    instance-of v0, p1, Ludt/packets/Acknowledgement;

    if-eqz v0, :cond_0

    check-cast p1, Ludt/packets/Acknowledgement;

    invoke-virtual {p0, p1}, Ludt/UDTSender;->onAcknowledge(Ludt/packets/Acknowledgement;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ludt/packets/NegativeAcknowledgement;

    if-eqz v0, :cond_1

    check-cast p1, Ludt/packets/NegativeAcknowledgement;

    invoke-virtual {p0, p1}, Ludt/UDTSender;->onNAKPacketReceived(Ludt/packets/NegativeAcknowledgement;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Ludt/packets/KeepAlive;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTReceiver;->resetEXPCount()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendAck2(J)V
    .locals 1

    new-instance v0, Ludt/packets/Acknowledgment2;

    invoke-direct {v0}, Ludt/packets/Acknowledgment2;-><init>()V

    invoke-virtual {v0, p1, p2}, Ludt/packets/Acknowledgment2;->setAckSequenceNumber(J)V

    iget-object p1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0, p1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget-object p1, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {p1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object p1

    invoke-virtual {p1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-object p1, p0, Ludt/UDTSender;->endpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    return-void
.end method

.method public sendUdtPacket(Ljava/nio/ByteBuffer;ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    iget-boolean p2, p0, Ludt/UDTSender;->started:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ludt/UDTSender;->start()V

    :cond_0
    iget-object p2, p0, Ludt/UDTSender;->flowWindow:Ludt/sender/FlowWindow;

    invoke-virtual {p2}, Ludt/sender/FlowWindow;->getForProducer()Ludt/packets/DataPacket;

    move-result-object p2

    if-nez p2, :cond_1

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ludt/UDTSender;->getNextSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ludt/packets/DataPacket;->setPacketSequenceNumber(J)V

    iget-object p3, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {p2, p3}, Ludt/packets/DataPacket;->setSession(Ludt/UDTSession;)V

    iget-object p3, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {p3}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object p3

    invoke-virtual {p3}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ludt/packets/DataPacket;->setDestinationID(J)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    iget v0, p0, Ludt/UDTSender;->chunksize:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2}, Ludt/packets/DataPacket;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ludt/packets/DataPacket;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ludt/UDTSender;->flowWindow:Ludt/sender/FlowWindow;

    invoke-virtual {p1}, Ludt/sender/FlowWindow;->produce()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ludt/UDTSender;->flowWindow:Ludt/sender/FlowWindow;

    invoke-virtual {p2}, Ludt/sender/FlowWindow;->produce()V

    throw p1
.end method

.method public senderAlgorithm()V
    .locals 9

    :cond_0
    iget-boolean v0, p0, Ludt/UDTSender;->paused:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ludt/UDTSender;->stopped:Z

    if-nez v0, :cond_6

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Ludt/UDTSender;->iterationStart:J

    iget-object v0, p0, Ludt/UDTSender;->senderLossList:Ludt/sender/SenderLossList;

    invoke-virtual {v0}, Ludt/sender/SenderLossList;->getFirstEntry()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0xa

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ludt/UDTSender;->handleRetransmit(Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ludt/UDTSender;->unacknowledged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v3, v0

    iget-object v5, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v5}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v5

    invoke-interface {v5}, Ludt/CongestionControl;->getCongestionWindowSize()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_3

    iget-object v5, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v5}, Ludt/UDTSession;->getFlowWindowSize()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Ludt/UDTSender;->flowWindow:Ludt/sender/FlowWindow;

    invoke-virtual {v0}, Ludt/sender/FlowWindow;->consumeData()Ludt/packets/DataPacket;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Ludt/UDTSender;->send(Ludt/packets/DataPacket;)V

    invoke-virtual {v0}, Ludt/packets/DataPacket;->getPacketSequenceNumber()J

    move-result-wide v3

    iput-wide v3, p0, Ludt/UDTSender;->largestSentSequenceNumber:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v0}, Ludt/util/UDTStatistics;->incNumberOfMissingDataEvents()V

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v0

    invoke-interface {v0}, Ludt/CongestionControl;->getCongestionWindowSize()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    iget-object v0, p0, Ludt/UDTSender;->statistics:Ludt/util/UDTStatistics;

    invoke-virtual {v0}, Ludt/util/UDTStatistics;->incNumberOfCCWindowExceededEvents()V

    :cond_4
    invoke-virtual {p0}, Ludt/UDTSender;->waitForAck()V

    :goto_0
    iget-wide v3, p0, Ludt/UDTSender;->largestSentSequenceNumber:J

    const-wide/16 v5, 0x10

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ludt/UDTSender;->stopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getCongestionControl()Ludt/CongestionControl;

    move-result-object v0

    invoke-interface {v0}, Ludt/CongestionControl;->getSendInterval()D

    move-result-wide v3

    double-to-long v3, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {}, Ludt/util/Util;->getCurrentTime()J

    move-result-wide v5

    iget-wide v7, p0, Ludt/UDTSender;->iterationStart:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const-wide/16 v0, 0xc8

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, p0, Ludt/UDTSender;->stopped:Z

    if-eqz v0, :cond_0

    :cond_6
    return-void
.end method

.method public start()V
    .locals 3

    sget-object v0, Ludt/UDTSender;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Starting sender for {}"

    iget-object v2, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ludt/UDTSender;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTSender;->started:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTSender;->stopped:Z

    return-void
.end method

.method public waitForAck()V
    .locals 4

    .line 1
    iget-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Ludt/UDTSender;->ackCondition:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public waitForAck(J)V
    .locals 4

    .line 2
    :goto_0
    iget-object v0, p0, Ludt/UDTSender;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ludt/UDTSender;->haveAcknowledgementFor(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Ludt/UDTSender;->ackCondition:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ludt/UDTSender;->ackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_0
    return-void
.end method
