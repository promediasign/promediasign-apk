.class public Lorg/apache/mina/filter/ssl/SslFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;,
        Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;
    }
.end annotation


# static fields
.field public static final DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field public static final SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field private static final SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

.field private static final START_HANDSHAKE:Z = true

.field public static final USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final autoStart:Z

.field private client:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private needClientAuth:Z

.field final sslContext:Ljavax/net/ssl/SSLContext;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "session"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "disableOnce"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "useNotification"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "peerAddress"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v1, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v2, "SESSION_SECURED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    new-instance v1, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v2, "SESSION_UNSECURED"

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "nextFilter"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "handler"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sslContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/ssl/SslHandler;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/filter/ssl/SslHandler;->getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not managed by this filter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 2

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Processing the SSL Data "

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushPreHandshakeEvents()V

    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    return-void
.end method

.method private initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->closeOutbound()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SSL session is shut down already."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    :cond_2
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method private initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{} : Starting the first handshake"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private isCloseNotify(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 4

    instance-of v0, p3, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-virtual {v0}, Lorg/apache/mina/core/write/WriteException;->getRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {v0, v1, v2, p3}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v0

    :cond_5
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/filter/ssl/SslFilter$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$1;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v1, v2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_2

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-nez v1, :cond_3

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :cond_3
    throw v0
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{}: Writing Message : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {v0, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isWritingEncryptedData()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/mina/filter/ssl/SslHandler;->encrypt(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    new-instance v1, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_5
    const/4 p1, 0x0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    :cond_6
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v1, :cond_0

    const-string v1, "Session Server"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "Session Client"

    goto :goto_0

    :goto_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/ssl/SslHandler;

    if-nez v1, :cond_1

    const-string p1, "(no sslEngine)"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "(SSL)"

    goto :goto_2

    :cond_2
    const-string p1, "(ssl...)"

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSslSession(Lorg/apache/mina/core/session/IoSession;)Ljavax/net/ssl/SSLSession;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSession;

    return-object p1
.end method

.method public isNeedClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return v0
.end method

.method public isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/ssl/SslHandler;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUseClientMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return v0
.end method

.method public isWantClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{}: Message received : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    check-cast p3, Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    return-void

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljavax/net/ssl/SSLHandshakeException;

    const-string p3, "SSL handshake failed."

    invoke-direct {p2, p3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p1, p2

    :cond_4
    throw p1

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    instance-of v0, p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    invoke-virtual {p3}, Lorg/apache/mina/core/write/WriteRequestWrapper;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1

    iget-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    :cond_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2

    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Adding the SSL Filter {} to the chain"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    sget-object p3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p3, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object p1, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Only one SSL filter is permitted in a chain."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    throw v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return-void
.end method

.method public startSsl(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    return p1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
