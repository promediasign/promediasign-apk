.class public Lcom/illposed/osc/transport/OSCPortIn;
.super Lcom/illposed/osc/transport/OSCPort;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private daemonListener:Z

.field private volatile listening:Z

.field private listeningThread:Ljava/lang/Thread;

.field private final log:Lorg/slf4j/Logger;

.field private final packetListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacketListener;",
            ">;"
        }
    .end annotation
.end field

.field private resilient:Z


# direct methods
.method public constructor <init>(Lcom/illposed/osc/OSCSerializerAndParserBuilder;Ljava/util/List;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/illposed/osc/transport/NetworkProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/illposed/osc/OSCSerializerAndParserBuilder;",
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacketListener;",
            ">;",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lcom/illposed/osc/transport/NetworkProtocol;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p1, p5}, Lcom/illposed/osc/transport/OSCPort;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/illposed/osc/OSCSerializerAndParserBuilder;Lcom/illposed/osc/transport/NetworkProtocol;)V

    const-class p1, Lcom/illposed/osc/transport/OSCPortIn;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/transport/OSCPortIn;->log:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/illposed/osc/transport/OSCPortIn;->listening:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/illposed/osc/transport/OSCPortIn;->daemonListener:Z

    iput-boolean p1, p0, Lcom/illposed/osc/transport/OSCPortIn;->resilient:Z

    iput-object p2, p0, Lcom/illposed/osc/transport/OSCPortIn;->packetListeners:Ljava/util/List;

    return-void
.end method

.method private badPacketReceived(Lcom/illposed/osc/OSCParseException;)V
    .locals 3

    invoke-virtual {p1}, Lcom/illposed/osc/OSCParseException;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/illposed/osc/OSCBadDataEvent;

    invoke-direct {v1, p0, v0, p1}, Lcom/illposed/osc/OSCBadDataEvent;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;Lcom/illposed/osc/OSCParseException;)V

    iget-object v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->packetListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/illposed/osc/OSCPacketListener;

    invoke-interface {v2, v1}, Lcom/illposed/osc/OSCPacketListener;->handleBadData(Lcom/illposed/osc/OSCBadDataEvent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->isResilient()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/illposed/osc/transport/OSCPortIn;->stopListening(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static defaultPacketListener()Lcom/illposed/osc/OSCPacketListener;
    .locals 2

    new-instance v0, Lcom/illposed/osc/OSCPacketDispatcher;

    invoke-direct {v0}, Lcom/illposed/osc/OSCPacketDispatcher;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/illposed/osc/OSCPacketDispatcher;->setAlwaysDispatchingImmediately(Z)V

    return-object v0
.end method

.method public static defaultPacketListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacketListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/illposed/osc/transport/OSCPortIn;->defaultPacketListener()Lcom/illposed/osc/OSCPacketListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getDispatcher(Ljava/util/List;)Lcom/illposed/osc/OSCPacketDispatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacketListener;",
            ">;)",
            "Lcom/illposed/osc/OSCPacketDispatcher;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, LT0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    new-instance v0, LT0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT0/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/illposed/osc/OSCPacketDispatcher;

    return-object p0
.end method

.method private stopListening(Ljava/lang/Exception;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while listening on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/illposed/osc/transport/OSCPortIn;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    instance-of v1, p1, Lcom/illposed/osc/OSCParseException;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/illposed/osc/transport/OSCPortIn;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/illposed/osc/transport/OSCPortIn;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->stopListening()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->stopListening()V

    :cond_0
    invoke-super {p0}, Lcom/illposed/osc/transport/OSCPort;->close()V

    return-void
.end method

.method public getDispatcher()Lcom/illposed/osc/OSCPacketDispatcher;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->packetListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/illposed/osc/transport/OSCPortIn;->getDispatcher(Ljava/util/List;)Lcom/illposed/osc/OSCPacketDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OSCPortIn packet listeners do not include a dispatcher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isListening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->listening:Z

    return v0
.end method

.method public isResilient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->resilient:Z

    return v0
.end method

.method public run()V
    .locals 3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->listening:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPort;->getTransport()Lcom/illposed/osc/transport/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/illposed/osc/transport/Transport;->receive()Lcom/illposed/osc/OSCPacket;

    move-result-object v0

    new-instance v1, Lcom/illposed/osc/OSCPacketEvent;

    invoke-direct {v1, p0, v0}, Lcom/illposed/osc/OSCPacketEvent;-><init>(Ljava/lang/Object;Lcom/illposed/osc/OSCPacket;)V

    iget-object v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->packetListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/illposed/osc/OSCPacketListener;

    invoke-interface {v2, v1}, Lcom/illposed/osc/OSCPacketListener;->handlePacket(Lcom/illposed/osc/OSCPacketEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/illposed/osc/OSCParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/illposed/osc/transport/OSCPortIn;->badPacketReceived(Lcom/illposed/osc/OSCParseException;)V

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->isListening()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/illposed/osc/transport/OSCPortIn;->stopListening(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->stopListening()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startListening()V
    .locals 2

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->listening:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->listeningThread:Ljava/lang/Thread;

    iget-boolean v1, p0, Lcom/illposed/osc/transport/OSCPortIn;->daemonListener:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/illposed/osc/transport/OSCPortIn;->listening:Z

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPort;->getTransport()Lcom/illposed/osc/transport/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/illposed/osc/transport/Transport;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPort;->getTransport()Lcom/illposed/osc/transport/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/illposed/osc/transport/Transport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/illposed/osc/transport/OSCPortIn;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to close OSC transport"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPortIn;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "listening via \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/illposed/osc/transport/OSCPort;->getTransport()Lcom/illposed/osc/transport/Transport;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
