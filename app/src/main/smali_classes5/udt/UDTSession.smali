.class public abstract Ludt/UDTSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NEXT_SOCKET_ID:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field protected volatile active:Z

.field protected final cc:Ludt/CongestionControl;

.field protected datagramSize:I

.field protected final destination:Ludt/packets/Destination;

.field private final dgPacket:Ljava/net/DatagramPacket;

.field protected flowWindowSize:I

.field protected initialSequenceNumber:Ljava/lang/Long;

.field protected volatile lastPacket:Ludt/UDTPacket;

.field protected final methodId:I

.field protected final mySocketID:J

.field private final peer:Lsk/mimac/slideshow/communication/Peer;

.field protected receiveBufferSize:I

.field protected volatile socket:Ludt/UDTSocket;

.field private volatile state:I

.field protected final statistics:Ludt/util/UDTStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ludt/UDTSession;->RANDOM:Ljava/util/Random;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Ludt/UDTSession;->NEXT_SOCKET_ID:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ludt/packets/Destination;Lsk/mimac/slideshow/communication/Peer;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ludt/UDTSession;->state:I

    const/high16 v1, 0x80000

    iput v1, p0, Ludt/UDTSession;->receiveBufferSize:I

    const/16 v1, 0x400

    iput v1, p0, Ludt/UDTSession;->flowWindowSize:I

    const/16 v1, 0x4e2

    iput v1, p0, Ludt/UDTSession;->datagramSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Ludt/UDTSession;->initialSequenceNumber:Ljava/lang/Long;

    iput-object p3, p0, Ludt/UDTSession;->peer:Lsk/mimac/slideshow/communication/Peer;

    new-instance p3, Ludt/util/UDTStatistics;

    invoke-direct {p3, p1}, Ludt/util/UDTStatistics;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Ludt/UDTSession;->statistics:Ludt/util/UDTStatistics;

    sget-object p1, Ludt/UDTSession;->NEXT_SOCKET_ID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Ludt/UDTSession;->mySocketID:J

    iput-object p2, p0, Ludt/UDTSession;->destination:Ludt/packets/Destination;

    new-instance p1, Ljava/net/DatagramPacket;

    new-array p3, v0, [B

    invoke-virtual {p2}, Ludt/packets/Destination;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ludt/packets/Destination;->getPort()I

    move-result p2

    invoke-direct {p1, p3, v0, v1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object p1, p0, Ludt/UDTSession;->dgPacket:Ljava/net/DatagramPacket;

    new-instance p1, Ludt/UDTCongestionControl;

    invoke-direct {p1, p0}, Ludt/UDTCongestionControl;-><init>(Ludt/UDTSession;)V

    iput-object p1, p0, Ludt/UDTSession;->cc:Ludt/CongestionControl;

    iput p4, p0, Ludt/UDTSession;->methodId:I

    return-void
.end method


# virtual methods
.method public getCongestionControl()Ludt/CongestionControl;
    .locals 1

    iget-object v0, p0, Ludt/UDTSession;->cc:Ludt/CongestionControl;

    return-object v0
.end method

.method public getDatagram()Ljava/net/DatagramPacket;
    .locals 1

    iget-object v0, p0, Ludt/UDTSession;->dgPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getDatagramSize()I
    .locals 1

    iget v0, p0, Ludt/UDTSession;->datagramSize:I

    return v0
.end method

.method public getDestination()Ludt/packets/Destination;
    .locals 1

    iget-object v0, p0, Ludt/UDTSession;->destination:Ludt/packets/Destination;

    return-object v0
.end method

.method public getFlowWindowSize()I
    .locals 1

    iget v0, p0, Ludt/UDTSession;->flowWindowSize:I

    return v0
.end method

.method public declared-synchronized getInitialSequenceNumber()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ludt/UDTSession;->initialSequenceNumber:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ludt/UDTSession;->initialSequenceNumber:Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ludt/UDTSession;->initialSequenceNumber:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getMethodId()I
    .locals 1

    iget v0, p0, Ludt/UDTSession;->methodId:I

    return v0
.end method

.method public getPeer()Lsk/mimac/slideshow/communication/Peer;
    .locals 1

    iget-object v0, p0, Ludt/UDTSession;->peer:Lsk/mimac/slideshow/communication/Peer;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Ludt/UDTSession;->receiveBufferSize:I

    return v0
.end method

.method public getSocket()Ludt/UDTSocket;
    .locals 1

    iget-object v0, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    return-object v0
.end method

.method public getSocketID()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTSession;->mySocketID:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Ludt/UDTSession;->state:I

    return v0
.end method

.method public getStatistics()Ludt/util/UDTStatistics;
    .locals 1

    iget-object v0, p0, Ludt/UDTSession;->statistics:Ludt/util/UDTStatistics;

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Ludt/UDTSession;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShutdown()Z
    .locals 2

    iget v0, p0, Ludt/UDTSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Ludt/UDTSession;->state:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract received(Ludt/UDTPacket;Ludt/packets/Destination;)V
.end method

.method public setDatagramSize(I)V
    .locals 0

    iput p1, p0, Ludt/UDTSession;->datagramSize:I

    return-void
.end method

.method public declared-synchronized setInitialSequenceNumber(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ludt/UDTSession;->initialSequenceNumber:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Ludt/UDTSession;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [socketID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ludt/UDTSession;->mySocketID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ludt/UDTSession;->peer:Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
