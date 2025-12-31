.class public Lsk/mimac/slideshow/osc/OscService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/OSCMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/osc/OscService$AllMessageSelector;,
        Lsk/mimac/slideshow/osc/OscService$LastMessage;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/osc/OscService;


# instance fields
.field private lastMessage:Lsk/mimac/slideshow/osc/OscService$LastMessage;

.field private portIn:Lcom/illposed/osc/transport/OSCPortIn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/osc/OscService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/osc/OscService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lsk/mimac/slideshow/osc/OscService;
    .locals 2

    const-class v0, Lsk/mimac/slideshow/osc/OscService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/osc/OscService;->instance:Lsk/mimac/slideshow/osc/OscService;

    if-nez v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/osc/OscService;

    invoke-direct {v1}, Lsk/mimac/slideshow/osc/OscService;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/osc/OscService;->instance:Lsk/mimac/slideshow/osc/OscService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lsk/mimac/slideshow/osc/OscService;->instance:Lsk/mimac/slideshow/osc/OscService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acceptMessage(Lcom/illposed/osc/OSCMessageEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessageEvent;->getMessage()Lcom/illposed/osc/OSCMessage;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/osc/OscService;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getArguments()Ljava/util/List;

    move-result-object v2

    const-string v3, "Message received: {} {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lsk/mimac/slideshow/osc/OscService$LastMessage;

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lsk/mimac/slideshow/osc/OscService$LastMessage;-><init>(Lj$/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lsk/mimac/slideshow/osc/OscService;->lastMessage:Lsk/mimac/slideshow/osc/OscService$LastMessage;

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->OSC_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "args"

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getArguments()Ljava/util/List;

    move-result-object p1

    const-string v3, "address"

    invoke-static {v3, v1, v2, p1}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return-void
.end method

.method public getLastMessage()Lsk/mimac/slideshow/osc/OscService$LastMessage;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/osc/OscService;->lastMessage:Lsk/mimac/slideshow/osc/OscService$LastMessage;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/osc/OscService;->portIn:Lcom/illposed/osc/transport/OSCPortIn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 8

    invoke-virtual {p0}, Lsk/mimac/slideshow/osc/OscService;->stop()V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->OSC_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->OSC_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    new-instance v7, Lcom/illposed/osc/transport/OSCPortIn;

    new-instance v2, Lcom/illposed/osc/OSCSerializerAndParserBuilder;

    invoke-direct {v2}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;-><init>()V

    invoke-static {}, Lcom/illposed/osc/transport/OSCPortIn;->defaultPacketListeners()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lcom/illposed/osc/transport/OSCPort;->generateWildcard(Ljava/net/SocketAddress;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v5, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->OSC_PROTOCOL:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v4, Lcom/illposed/osc/transport/NetworkProtocol;

    invoke-virtual {v1, v4}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/illposed/osc/transport/NetworkProtocol;

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/illposed/osc/transport/OSCPortIn;-><init>(Lcom/illposed/osc/OSCSerializerAndParserBuilder;Ljava/util/List;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/illposed/osc/transport/NetworkProtocol;)V

    iput-object v7, p0, Lsk/mimac/slideshow/osc/OscService;->portIn:Lcom/illposed/osc/transport/OSCPortIn;

    invoke-virtual {v7}, Lcom/illposed/osc/transport/OSCPortIn;->getDispatcher()Lcom/illposed/osc/OSCPacketDispatcher;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/osc/OscService$AllMessageSelector;

    invoke-direct {v2}, Lsk/mimac/slideshow/osc/OscService$AllMessageSelector;-><init>()V

    invoke-virtual {v1, v2, p0}, Lcom/illposed/osc/OSCPacketDispatcher;->addListener(Lcom/illposed/osc/MessageSelector;Lcom/illposed/osc/OSCMessageListener;)V

    iget-object v1, p0, Lsk/mimac/slideshow/osc/OscService;->portIn:Lcom/illposed/osc/transport/OSCPortIn;

    invoke-virtual {v1}, Lcom/illposed/osc/transport/OSCPortIn;->startListening()V

    sget-object v1, Lsk/mimac/slideshow/osc/OscService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "OSC listening on port {}"

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/osc/OscService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t start OSC"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/osc/OscService;->portIn:Lcom/illposed/osc/transport/OSCPortIn;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/illposed/osc/transport/OSCPortIn;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/osc/OscService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error while stopping OSC"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/osc/OscService;->portIn:Lcom/illposed/osc/transport/OSCPortIn;

    :cond_0
    return-void
.end method
