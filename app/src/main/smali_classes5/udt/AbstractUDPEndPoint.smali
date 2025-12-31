.class public abstract Ludt/AbstractUDPEndPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private lastDestID:J

.field private lastPacket:Ludt/UDTPacket;

.field private lastSession:Ludt/UDTSession;

.field private final lock:Ljava/lang/Object;

.field private n:I

.field protected serverSocketMode:Z

.field protected final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ludt/UDTSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/AbstractUDPEndPoint;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/AbstractUDPEndPoint;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ludt/AbstractUDPEndPoint;->lock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ludt/AbstractUDPEndPoint;->lastDestID:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ludt/AbstractUDPEndPoint;->serverSocketMode:Z

    iput v0, p0, Ludt/AbstractUDPEndPoint;->n:I

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ludt/AbstractUDPEndPoint;->sessions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract acceptSession(Ludt/UDTSession;)V
.end method

.method public addSession(Ljava/lang/Long;Ludt/UDTSession;)V
    .locals 1

    iget-object v0, p0, Ludt/AbstractUDPEndPoint;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract doSend(Ludt/UDTPacket;)V
.end method

.method public processReceivedPacket(Ljava/net/DatagramPacket;Lsk/mimac/slideshow/communication/key/PrivateKey;Lsk/mimac/slideshow/communication/Peer;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ludt/packets/Destination;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ludt/packets/Destination;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v2, v3, v4, p2}, Ludt/packets/PacketFactory;->createPacket([BIILsk/mimac/slideshow/communication/key/PrivateKey;)Ludt/UDTPacket;

    move-result-object p2

    iput-object p2, p0, Ludt/AbstractUDPEndPoint;->lastPacket:Ludt/UDTPacket;

    invoke-interface {p2}, Ludt/UDTPacket;->isConnectionHandshake()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Ludt/AbstractUDPEndPoint;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {p2}, Ludt/UDTPacket;->getDestinationID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Ludt/AbstractUDPEndPoint;->sessions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ludt/UDTSession;

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Ludt/ServerSession;

    move-object v3, p2

    check-cast v3, Ludt/packets/ConnectionHandshake;

    invoke-virtual {v3}, Ludt/packets/ConnectionHandshake;->getMethodId()I

    move-result v3

    invoke-direct {v4, p1, p0, p3, v3}, Ludt/ServerSession;-><init>(Ljava/net/DatagramPacket;Ludt/AbstractUDPEndPoint;Lsk/mimac/slideshow/communication/Peer;I)V

    invoke-virtual {v4}, Ludt/UDTSession;->getSocketID()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Ludt/AbstractUDPEndPoint;->addSession(Ljava/lang/Long;Ludt/UDTSession;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p2

    check-cast p1, Ludt/packets/ConnectionHandshake;

    invoke-virtual {p1}, Ludt/packets/ConnectionHandshake;->getSocketID()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ludt/packets/Destination;->setSocketID(J)V

    invoke-virtual {v4, p2, v1}, Ludt/UDTSession;->received(Ludt/UDTPacket;Ludt/packets/Destination;)V

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Ludt/AbstractUDPEndPoint;->serverSocketMode:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4}, Ludt/AbstractUDPEndPoint;->acceptSession(Ludt/UDTSession;)V

    :cond_2
    monitor-exit v2

    goto :goto_3

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    invoke-interface {p2}, Ludt/UDTPacket;->getDestinationID()J

    move-result-wide v4

    iget-wide v6, p0, Ludt/AbstractUDPEndPoint;->lastDestID:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_4

    iget-object p1, p0, Ludt/AbstractUDPEndPoint;->lastSession:Ludt/UDTSession;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ludt/AbstractUDPEndPoint;->sessions:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ludt/UDTSession;

    iput-object p1, p0, Ludt/AbstractUDPEndPoint;->lastSession:Ludt/UDTSession;

    iput-wide v4, p0, Ludt/AbstractUDPEndPoint;->lastDestID:J

    :goto_2
    if-nez p1, :cond_5

    iget p1, p0, Ludt/AbstractUDPEndPoint;->n:I

    add-int/2addr p1, v3

    iput p1, p0, Ludt/AbstractUDPEndPoint;->n:I

    rem-int/lit8 p1, p1, 0x64

    if-ne p1, v3, :cond_6

    sget-object p1, Ludt/AbstractUDPEndPoint;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Unknown session {} requested from {} packet type {}"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object p3, v4, v3

    const/4 p3, 0x2

    aput-object p2, v4, p3

    invoke-interface {p1, v1, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, p2, v1}, Ludt/UDTSession;->received(Ludt/UDTPacket;Ludt/packets/Destination;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Ludt/AbstractUDPEndPoint;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ludt/UDTSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v1

    invoke-virtual {v1}, Ludt/UDTSocket;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method
