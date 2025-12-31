.class Lorg/apache/mina/filter/ssl/SslHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final filterWriteEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private firstSSLNegociation:Z

.field private handshakeComplete:Z

.field private handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final messageReceivedEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final preHandshakeEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private sslEngine:Ljavax/net/ssl/SSLEngine;

.field private final sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

.field private writingEncryptedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private checkStatus(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 3

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSLEngine error during decrypt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inNetBuffer: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "appBuffer: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method private createOutNetBuffer(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    return-void
.end method

.method private destroyOutNetBuffer()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method private doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method private renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    :cond_0
    return-void
.end method

.method private unwrap()Ljavax/net/ssl/SSLEngineResult;
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_2

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_2
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_4

    :cond_3
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v1, :cond_1

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v1, :cond_1

    :cond_4
    return-object v0
.end method

.method private unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_4
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object p1
.end method


# virtual methods
.method public closeOutbound()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    shl-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return v3

    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Improper close state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return v1
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception from SSLEngine.closeInbound()."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_2

    :catch_1
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroyOutNetBuffer()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroyOutNetBuffer()V

    throw v0

    :goto_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public encrypt(Ljava/nio/ByteBuffer;)V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_4
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSLEngine error during encrypt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " src: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "outNetBuffer: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flushPreHandshakeEvents()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flushScheduledEvents()V
    .locals 3

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    return-object v0
.end method

.method public handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 6

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} processing the NEED_WRAP state"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    :goto_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    shl-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Handshaking State"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while processing the Handshake for session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} processing the NEED_UNWRAP state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    return-void

    :cond_9
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} processing the NEED_TASK state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} processing the FINISHED state"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    iget-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {p1, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{} is now secured"

    :goto_2
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {p1, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{} is not secured yet"

    goto :goto_2

    :cond_f
    :goto_3
    return-void
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} Initializing the SSL Handler"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, v1, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, v2, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->isUseClientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    :cond_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    iput-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} SSL Handler Initialization done."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public isHandshakeComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isOutboundDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isWritingEncryptedData()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V
    .locals 4

    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    const-string v2, "{} Processing the received message"

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p1

    :goto_2
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_6
    return-void
.end method

.method public needToCompleteHandshake()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSLStatus <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v1, :cond_0

    const-string v1, "SSL established"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "Processing Handshake; Status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    goto :goto_0

    :goto_1
    const-string v1, ", HandshakeComplete :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v2, v3}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v5, v1, v2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    :goto_0
    invoke-virtual {v3, p1, v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->needToCompleteHandshake()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v2, v3}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v5, v1, v2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "SSL handshake failed."

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    return-object v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    throw p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
