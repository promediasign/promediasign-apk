.class public Ludt/ServerSession;
.super Ludt/UDTSession;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final endPoint:Ludt/AbstractUDPEndPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/ServerSession;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;Ludt/AbstractUDPEndPoint;Lsk/mimac/slideshow/communication/Peer;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerSession peer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ludt/packets/Destination;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ludt/packets/Destination;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0, v1, p3, p4}, Ludt/UDTSession;-><init>(Ljava/lang/String;Ludt/packets/Destination;Lsk/mimac/slideshow/communication/Peer;I)V

    iput-object p2, p0, Ludt/ServerSession;->endPoint:Ludt/AbstractUDPEndPoint;

    sget-object p2, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p4, v0

    const/4 v0, 0x1

    aput-object p3, p4, v0

    const/4 p3, 0x2

    aput-object p1, p4, p3

    const-string p1, "Created {} talking to {}:{}"

    invoke-interface {p2, p1, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleHandShake(Ludt/packets/ConnectionHandshake;)V
    .locals 6

    new-instance v0, Ludt/packets/ConnectionHandshake;

    invoke-direct {v0}, Ludt/packets/ConnectionHandshake;-><init>()V

    invoke-virtual {p1}, Ludt/packets/ConnectionHandshake;->getPacketSize()J

    move-result-wide v1

    invoke-virtual {p0}, Ludt/UDTSession;->getDatagramSize()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {p1}, Ludt/packets/ConnectionHandshake;->getInitialSeqNo()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ludt/UDTSession;->setInitialSequenceNumber(J)V

    long-to-int v5, v1

    invoke-virtual {p0, v5}, Ludt/UDTSession;->setDatagramSize(I)V

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setPacketSize(J)V

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setUdtVersion(J)V

    invoke-virtual {v0, v3, v4}, Ludt/packets/ConnectionHandshake;->setInitialSeqNo(J)V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setConnectionType(J)V

    invoke-virtual {p1}, Ludt/packets/ConnectionHandshake;->getMaxFlowWndSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setMaxFlowWndSize(J)V

    iget-wide v1, p0, Ludt/UDTSession;->mySocketID:J

    invoke-virtual {v0, v1, v2}, Ludt/packets/ConnectionHandshake;->setSocketID(J)V

    invoke-virtual {p0}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object p1

    invoke-virtual {p1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    invoke-virtual {v0, p0}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    iget p1, p0, Ludt/UDTSession;->methodId:I

    invoke-virtual {v0, p1}, Ludt/packets/ConnectionHandshake;->setMethodId(I)V

    iget-object p1, p0, Ludt/ServerSession;->endPoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V

    return-void
.end method

.method public received(Ludt/UDTPacket;Ludt/packets/Destination;)V
    .locals 5

    instance-of p2, p1, Ludt/packets/ConnectionHandshake;

    const/16 v0, 0x63

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ludt/packets/ConnectionHandshake;

    sget-object v3, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Received {}"

    invoke-interface {v3, v4, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result v3

    if-gt v3, v1, :cond_2

    iget-object p1, p0, Ludt/UDTSession;->destination:Ludt/packets/Destination;

    invoke-virtual {p2}, Ludt/packets/ConnectionHandshake;->getSocketID()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ludt/packets/Destination;->setSocketID(J)V

    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result p1

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, v2}, Ludt/UDTSession;->setState(I)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Ludt/ServerSession;->handleHandShake(Ludt/packets/ConnectionHandshake;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v1}, Ludt/UDTSession;->setState(I)V

    new-instance p1, Ludt/UDTSocket;

    iget-object p2, p0, Ludt/ServerSession;->endPoint:Ludt/AbstractUDPEndPoint;

    invoke-direct {p1, p2, p0}, Ludt/UDTSocket;-><init>(Ludt/AbstractUDPEndPoint;Ludt/UDTSession;)V

    iput-object p1, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    iget-object p1, p0, Ludt/UDTSession;->cc:Ludt/CongestionControl;

    invoke-interface {p1}, Ludt/CongestionControl;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error creating socket"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ludt/UDTSession;->setState(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object p2, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error processing ConnectionHandshake"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ludt/UDTSession;->setState(I)V

    :goto_0
    return-void

    :cond_1
    instance-of p2, p1, Ludt/packets/KeepAlive;

    if-eqz p2, :cond_2

    iget-object p1, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    invoke-virtual {p1}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTReceiver;->resetEXPTimer()V

    iput-boolean v2, p0, Ludt/UDTSession;->active:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Ludt/UDTSession;->getState()I

    move-result p2

    if-ne p2, v1, :cond_5

    iput-boolean v2, p0, Ludt/UDTSession;->active:Z

    instance-of p2, p1, Ludt/packets/Shutdown;

    if-eqz p2, :cond_3

    iget-object p1, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    invoke-virtual {p1}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTReceiver;->stop()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ludt/UDTSession;->setState(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ludt/UDTSession;->active:Z

    sget-object p1, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Connection shutdown initiated by the other side"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-interface {p1}, Ludt/UDTPacket;->forSender()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    invoke-virtual {p2}, Ludt/UDTSocket;->getSender()Ludt/UDTSender;

    move-result-object p2

    invoke-virtual {p2, p1}, Ludt/UDTSender;->receive(Ludt/UDTPacket;)V

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Ludt/UDTSession;->socket:Ludt/UDTSocket;

    invoke-virtual {p2}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object p2

    invoke-virtual {p2, p1}, Ludt/UDTReceiver;->receive(Ludt/UDTPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :goto_1
    sget-object p2, Ludt/ServerSession;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error processing packet"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ludt/UDTSession;->setState(I)V

    :cond_5
    :goto_2
    return-void
.end method
