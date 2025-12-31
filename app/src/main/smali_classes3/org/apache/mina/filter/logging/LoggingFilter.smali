.class public Lorg/apache/mina/filter/logging/LoggingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# instance fields
.field private exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final logger:Lorg/slf4j/Logger;

.field private messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final name:Ljava/lang/String;

.field private sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    if-nez p1, :cond_0

    const-class p1, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "EXCEPTION :"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getExceptionCaughtLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageReceivedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageSentLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionClosedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionCreatedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionIdleLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionOpenedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "RECEIVED: {}"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SENT: {}"

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CLOSED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CREATED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "IDLE"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "OPENED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public setExceptionCaughtLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setMessageReceivedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setMessageSentLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionClosedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionCreatedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionIdleLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionOpenedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method
