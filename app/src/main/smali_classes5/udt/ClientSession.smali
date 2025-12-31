.class public Ludt/ClientSession;
.super Ludt/UDTSession;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final endPoint:Ludt/AbstractUDPEndPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/ClientSession;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ludt/AbstractUDPEndPoint;Ludt/packets/Destination;Lsk/mimac/slideshow/communication/Peer;I)V
    .locals 1

    const-string v0, "ClientSession"

    invoke-direct {p0, v0, p2, p3, p4}, Ludt/UDTSession;-><init>(Ljava/lang/String;Ludt/packets/Destination;Lsk/mimac/slideshow/communication/Peer;I)V

    iput-object p1, p0, Ludt/ClientSession;->endPoint:Ludt/AbstractUDPEndPoint;

    sget-object p1, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Created {}"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ludt/ClientSession;->sendHandShake()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result v1

    const/16 v3, 0x63

    if-eq v1, v3, :cond_1

    const/16 v1, 0xb

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    mul-int/lit8 v1, v0, 0x7d

    add-int/lit16 v1, v1, 0x8c

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    new-instance v1, Ludt/exception/UdtException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ludt/UDTSession;->destination:Ludt/packets/Destination;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " handshakes sent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ludt/exception/UdtException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Ludt/UDTSession;->cc:Ludt/CongestionControl;

    invoke-interface {v1}, Ludt/CongestionControl;->init()V

    sget-object v1, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Connected, {} handshake packets sent"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public received(Ludt/UDTPacket;Ludt/packets/Destination;)V
    .locals 7

    iput-object p1, p0, Ludt/UDTSession;->lastPacket:Ludt/UDTPacket;

    instance-of v0, p1, Ludt/packets/ConnectionHandshake;

    const/16 v1, 0x63

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ludt/packets/ConnectionHandshake;

    sget-object v3, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Received connection handshake from {}: {}"

    invoke-interface {v3, v4, p2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result p2

    if-eq p2, v2, :cond_1

    invoke-virtual {v0}, Ludt/packets/ConnectionHandshake;->getSocketID()J

    move-result-wide p1

    iget-object v3, p0, Ludt/UDTSession;->destination:Ludt/packets/Destination;

    invoke-virtual {v3, p1, p2}, Ludt/packets/Destination;->setSocketID(J)V

    invoke-virtual {v0}, Ludt/packets/ConnectionHandshake;->getConnectionType()J

    move-result-wide p1

    const-wide/16 v3, 0x1

    const-string v5, "Error creating socket"

    cmp-long v6, p1, v3

    if-nez v6, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Ludt/ClientSession;->sendConfirmation(Ludt/packets/ConnectionHandshake;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p2, v5, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Ludt/UDTSession;->setState(I)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Ludt/UDTSession;->setState(I)V

    new-instance p1, Ludt/UDTSocket;

    iget-object p2, p0, Ludt/ClientSession;->endPoint:Ludt/AbstractUDPEndPoint;

    invoke-direct {p1, p2, p0}, Ludt/UDTSocket;-><init>(Ludt/AbstractUDPEndPoint;Ludt/UDTSession;)V

    iput-object p1, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p2, v5, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Ludt/UDTSession;->setState(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result p2

    if-ne p2, v2, :cond_4

    instance-of p2, p1, Ludt/packets/Shutdown;

    if-eqz p2, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ludt/UDTSession;->setState(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ludt/UDTSession;->active:Z

    sget-object p1, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Connection shutdown initiated by the other side."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Ludt/UDTSession;->active:Z

    :try_start_2
    invoke-interface {p1}, Ludt/UDTPacket;->forSender()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    invoke-virtual {p1}, Ludt/UDTSocket;->getSender()Ludt/UDTSender;

    move-result-object p1

    iget-object p2, p0, Ludt/UDTSession;->lastPacket:Ludt/UDTPacket;

    invoke-virtual {p1, p2}, Ludt/UDTSender;->receive(Ludt/UDTPacket;)V

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    invoke-virtual {p1}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object p1

    iget-object p2, p0, Ludt/UDTSession;->lastPacket:Ludt/UDTPacket;

    invoke-virtual {p1, p2}, Ludt/UDTReceiver;->receive(Ludt/UDTPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :goto_2
    sget-object p2, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Error in {}"

    invoke-interface {p2, v0, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ludt/UDTSession;->setState(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public sendConfirmation(Ludt/packets/ConnectionHandshake;)V
    .locals 3

    new-instance v0, Ludt/packets/ConnectionHandshake;

    invoke-direct {v0}, Ludt/packets/ConnectionHandshake;-><init>()V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setConnectionType(J)V

    invoke-virtual {p1}, Ludt/packets/ConnectionHandshake;->getInitialSeqNo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setInitialSeqNo(J)V

    invoke-virtual {p1}, Ludt/packets/ConnectionHandshake;->getPacketSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setPacketSize(J)V

    iget-wide v1, p0, Ludt/UDTSession;->mySocketID:J

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setSocketID(J)V

    iget p1, p0, Ludt/UDTSession;->flowWindowSize:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setMaxFlowWndSize(J)V

    invoke-virtual {v0, p0}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget p1, p0, Ludt/UDTSession;->methodId:I

    invoke-virtual {v0, p1}, Ludt/packets/ConnectionHandshake;->setMethodId(I)V

    sget-object p1, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Sending confirmation {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Ludt/ClientSession;->endPoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    return-void
.end method

.method public sendHandShake()V
    .locals 3

    new-instance v0, Ludt/packets/ConnectionHandshake;

    invoke-direct {v0}, Ludt/packets/ConnectionHandshake;-><init>()V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setConnectionType(J)V

    invoke-static {}, Ludt/util/SequenceNumber;->random()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ludt/UDTSession;->setInitialSequenceNumber(J)V

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setInitialSeqNo(J)V

    invoke-virtual {p0}, Ludt/UDTSession;->getDatagramSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setPacketSize(J)V

    iget-wide v1, p0, Ludt/UDTSession;->mySocketID:J

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setSocketID(J)V

    iget v1, p0, Ludt/UDTSession;->flowWindowSize:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setMaxFlowWndSize(J)V

    invoke-virtual {v0, p0}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget v1, p0, Ludt/UDTSession;->methodId:I

    invoke-virtual {v0, v1}, Ludt/packets/ConnectionHandshake;->setMethodId(I)V

    sget-object v1, Ludt/ClientSession;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Sending {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ludt/ClientSession;->endPoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {v1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    return-void
.end method
