.class public Ludt/UDTClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final clientEndpoint:Ludt/AbstractUDPEndPoint;

.field private clientSession:Ludt/ClientSession;

.field private final methodId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/UDTClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ludt/UDTClient;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ludt/AbstractUDPEndPoint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ludt/UDTClient;->clientEndpoint:Ludt/AbstractUDPEndPoint;

    iput p2, p0, Ludt/UDTClient;->methodId:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0}, Ludt/UDTSession;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    iget-boolean v0, v0, Ludt/UDTSession;->active:Z

    if-eqz v0, :cond_0

    new-instance v0, Ludt/packets/Shutdown;

    invoke-direct {v0}, Ludt/packets/Shutdown;-><init>()V

    iget-object v1, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v1}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object v1

    invoke-virtual {v1}, Ludt/packets/Destination;->getSocketID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    iget-object v1, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0, v1}, Ludt/packets/ControlPacket;->setSession(Ludt/UDTSession;)V

    :try_start_0
    iget-object v1, p0, Ludt/UDTClient;->clientEndpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {v1, v0}, Ludt/AbstractUDPEndPoint;->doSend(Ludt/UDTPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ludt/UDTClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "ERROR: Connection could not be stopped!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->getReceiver()Ludt/UDTReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTReceiver;->stop()V

    :cond_0
    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILsk/mimac/slideshow/communication/Peer;)V
    .locals 2

    new-instance v0, Ludt/packets/Destination;

    invoke-direct {v0, p1, p2}, Ludt/packets/Destination;-><init>(Ljava/net/InetAddress;I)V

    new-instance p1, Ludt/ClientSession;

    iget-object p2, p0, Ludt/UDTClient;->clientEndpoint:Ludt/AbstractUDPEndPoint;

    iget v1, p0, Ludt/UDTClient;->methodId:I

    invoke-direct {p1, p2, v0, p3, v1}, Ludt/ClientSession;-><init>(Ludt/AbstractUDPEndPoint;Ludt/packets/Destination;Lsk/mimac/slideshow/communication/Peer;I)V

    iput-object p1, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    iget-object p2, p0, Ludt/UDTClient;->clientEndpoint:Ludt/AbstractUDPEndPoint;

    invoke-virtual {p1}, Ludt/UDTSession;->getSocketID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p3, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {p2, p1, p3}, Ludt/AbstractUDPEndPoint;->addSession(Ljava/lang/Long;Ludt/UDTSession;)V

    iget-object p1, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {p1}, Ludt/ClientSession;->connect()V

    :goto_0
    iget-object p1, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {p1}, Ludt/UDTSession;->isReady()Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    sget-object p1, Ludt/UDTClient;->LOG:Ljava/util/logging/Logger;

    const-string p2, "The UDTClient is connected"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->flush()V

    return-void
.end method

.method public getInputStream()Ludt/UDTInputStream;
    .locals 1

    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->getInputStream()Ludt/UDTInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ludt/UDTOutputStream;
    .locals 1

    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSocket;->getOutputStream()Ludt/UDTOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public send([B)V
    .locals 1

    iget-object v0, p0, Ludt/UDTClient;->clientSession:Ludt/ClientSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ludt/UDTSocket;->doWrite([B)V

    return-void
.end method
