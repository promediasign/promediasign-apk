.class public Ludt/util/UDTStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final componentDescription:Ljava/lang/String;

.field private volatile congestionWindowSize:J

.field private volatile estimatedLinkCapacity:J

.field first:Z

.field private initialTime:J

.field private final metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ludt/util/MeanValue;",
            ">;"
        }
    .end annotation
.end field

.field private final numberOfACKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfACKSent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfCCSlowDownEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfCCWindowExceededEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfDuplicateDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfMissingDataEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfNAKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfNAKSent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfReceivedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfRetransmittedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfSentDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile packetArrivalRate:J

.field private volatile roundTripTime:J

.field private volatile roundTripTimeVariance:J

.field private volatile sendPeriod:D

.field private final statsHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ludt/util/StatisticsHistoryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfSentDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfReceivedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfDuplicateDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfMissingDataEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfNAKSent:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfNAKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfRetransmittedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfACKSent:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfACKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfCCSlowDownEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ludt/util/UDTStatistics;->numberOfCCWindowExceededEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ludt/util/UDTStatistics;->metrics:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ludt/util/UDTStatistics;->statsHistory:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/util/UDTStatistics;->first:Z

    iput-object p1, p0, Ludt/util/UDTStatistics;->componentDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMetric(Ludt/util/MeanValue;)V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->metrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNumberOfACKReceived()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfACKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfACKSent()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfACKSent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfDuplicateDataPackets()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfDuplicateDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfNAKReceived()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfNAKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfNAKSent()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfNAKSent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfReceivedDataPackets()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfReceivedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfRetransmittedDataPackets()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfRetransmittedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNumberOfSentDataPackets()I
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfSentDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public incNumberOfACKReceived()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfACKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfACKSent()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfACKSent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfCCWindowExceededEvents()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfCCWindowExceededEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfMissingDataEvents()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfMissingDataEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfNAKReceived()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfNAKReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfNAKSent()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfNAKSent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfReceivedDataPackets()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfReceivedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfRetransmittedDataPackets()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfRetransmittedDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public incNumberOfSentDataPackets()V
    .locals 1

    iget-object v0, p0, Ludt/util/UDTStatistics;->numberOfSentDataPackets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public setCongestionWindowSize(J)V
    .locals 0

    iput-wide p1, p0, Ludt/util/UDTStatistics;->congestionWindowSize:J

    return-void
.end method

.method public setPacketArrivalRate(JJ)V
    .locals 0

    iput-wide p1, p0, Ludt/util/UDTStatistics;->packetArrivalRate:J

    iput-wide p3, p0, Ludt/util/UDTStatistics;->estimatedLinkCapacity:J

    return-void
.end method

.method public setRTT(JJ)V
    .locals 0

    iput-wide p1, p0, Ludt/util/UDTStatistics;->roundTripTime:J

    iput-wide p3, p0, Ludt/util/UDTStatistics;->roundTripTimeVariance:J

    return-void
.end method

.method public setSendPeriod(D)V
    .locals 0

    iput-wide p1, p0, Ludt/util/UDTStatistics;->sendPeriod:D

    return-void
.end method

.method public storeParameters()V
    .locals 8

    iget-object v0, p0, Ludt/util/UDTStatistics;->statsHistory:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ludt/util/UDTStatistics;->first:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Ludt/util/UDTStatistics;->first:Z

    iget-object v1, p0, Ludt/util/UDTStatistics;->statsHistory:Ljava/util/List;

    new-instance v3, Ludt/util/StatisticsHistoryEntry;

    iget-object v4, p0, Ludt/util/UDTStatistics;->metrics:Ljava/util/List;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v5, v6, v7, v4}, Ludt/util/StatisticsHistoryEntry;-><init>(ZJLjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ludt/util/UDTStatistics;->initialTime:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Ludt/util/UDTStatistics;->statsHistory:Ljava/util/List;

    new-instance v3, Ludt/util/StatisticsHistoryEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ludt/util/UDTStatistics;->initialTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Ludt/util/UDTStatistics;->metrics:Ljava/util/List;

    invoke-direct {v3, v2, v4, v5, v6}, Ludt/util/StatisticsHistoryEntry;-><init>(ZJLjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Statistics for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ludt/util/UDTStatistics;->componentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSent data packets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfSentDataPackets()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nReceived data packets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfReceivedDataPackets()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nDuplicate data packets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfDuplicateDataPackets()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nACK received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfACKReceived()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nNAK received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfNAKReceived()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nRetransmitted data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfRetransmittedDataPackets()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nNAK sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfNAKSent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nACK sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ludt/util/UDTStatistics;->getNumberOfACKSent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->roundTripTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-string v2, "RTT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->roundTripTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " var. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->roundTripTimeVariance:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Ludt/util/UDTStatistics;->packetArrivalRate:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v2, "Packet rate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->packetArrivalRate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/sec., link capacity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->estimatedLinkCapacity:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/sec.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Ludt/util/UDTStatistics;->numberOfMissingDataEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "Sender without data events: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ludt/util/UDTStatistics;->numberOfMissingDataEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Ludt/util/UDTStatistics;->numberOfCCSlowDownEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "CC rate slowdown events: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ludt/util/UDTStatistics;->numberOfCCSlowDownEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Ludt/util/UDTStatistics;->numberOfCCWindowExceededEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "CC window slowdown events: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ludt/util/UDTStatistics;->numberOfCCWindowExceededEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "CC parameter SND:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->sendPeriod:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nCC parameter CWND: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ludt/util/UDTStatistics;->congestionWindowSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ludt/util/UDTStatistics;->metrics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ludt/util/MeanValue;

    invoke-virtual {v3}, Ludt/util/MeanValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ludt/util/MeanValue;->getFormattedMean()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
