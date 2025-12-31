.class public Ludt/UDTInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ludt/UDTInputStream$AppData;
    }
.end annotation


# instance fields
.field private volatile blocking:Z

.field private volatile closed:Z

.field private currentChunk:Ludt/UDTInputStream$AppData;

.field private final expectMoreData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field offset:I

.field private final receiveBuffer:Ludt/util/ReceiveBuffer;

.field private final single:[B

.field private final socket:Ludt/UDTSocket;


# direct methods
.method public constructor <init>(Ludt/UDTSocket;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ludt/UDTInputStream;->expectMoreData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ludt/UDTInputStream;->closed:Z

    iput-boolean v1, p0, Ludt/UDTInputStream;->blocking:Z

    new-array v1, v1, [B

    iput-object v1, p0, Ludt/UDTInputStream;->single:[B

    const/4 v1, 0x0

    iput-object v1, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;

    iput v0, p0, Ludt/UDTInputStream;->offset:I

    iput-object p1, p0, Ludt/UDTInputStream;->socket:Ludt/UDTSocket;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ludt/UDTSocket;->getSession()Ludt/UDTSession;

    move-result-object v0

    invoke-virtual {v0}, Ludt/UDTSession;->getFlowWindowSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ludt/UDTSocket;->getSession()Ludt/UDTSession;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTSession;->getInitialSequenceNumber()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x1

    :goto_1
    new-instance p1, Ludt/util/ReceiveBuffer;

    invoke-direct {p1, v0, v1, v2}, Ludt/util/ReceiveBuffer;-><init>(IJ)V

    iput-object p1, p0, Ludt/UDTInputStream;->receiveBuffer:Ludt/util/ReceiveBuffer;

    return-void
.end method

.method private updateCurrentChunk(Z)V
    .locals 2

    iget-object v0, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Ludt/UDTInputStream;->receiveBuffer:Ludt/util/ReceiveBuffer;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ludt/util/ReceiveBuffer;->poll(ILjava/util/concurrent/TimeUnit;)Ludt/UDTInputStream$AppData;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;

    iget-boolean p1, p0, Ludt/UDTInputStream;->closed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;

    if-nez p1, :cond_2

    iget-object p1, p0, Ludt/UDTInputStream;->receiveBuffer:Ludt/util/ReceiveBuffer;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Ludt/util/ReceiveBuffer;->poll(ILjava/util/concurrent/TimeUnit;)Ludt/UDTInputStream$AppData;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ludt/UDTInputStream;->receiveBuffer:Ludt/util/ReceiveBuffer;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ludt/util/ReceiveBuffer;->poll(ILjava/util/concurrent/TimeUnit;)Ludt/UDTInputStream$AppData;

    move-result-object p1

    iput-object p1, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Ludt/UDTInputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTInputStream;->closed:Z

    invoke-virtual {p0}, Ludt/UDTInputStream;->noMoreData()V

    return-void
.end method

.method public haveNewData(J[B)Z
    .locals 2

    iget-object v0, p0, Ludt/UDTInputStream;->receiveBuffer:Ludt/util/ReceiveBuffer;

    new-instance v1, Ludt/UDTInputStream$AppData;

    invoke-direct {v1, p1, p2, p3}, Ludt/UDTInputStream$AppData;-><init>(J[B)V

    invoke-virtual {v0, v1}, Ludt/util/ReceiveBuffer;->offer(Ludt/UDTInputStream$AppData;)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ludt/UDTInputStream;->closed:Z

    return v0
.end method

.method public noMoreData()V
    .locals 2

    iget-object v0, p0, Ludt/UDTInputStream;->expectMoreData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Ludt/UDTInputStream;->single:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    iget-object v1, p0, Ludt/UDTInputStream;->single:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    return v1
.end method

.method public read([BII)I
    .locals 7

    .line 2
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ludt/UDTInputStream;->updateCurrentChunk(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;

    if-eqz v3, :cond_3

    iget-object v3, v3, Ludt/UDTInputStream$AppData;->data:[B

    sub-int v4, p3, v2

    array-length v5, v3

    iget v6, p0, Ludt/UDTInputStream;->offset:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Ludt/UDTInputStream;->offset:I

    add-int v6, p2, v2

    invoke-static {v3, v5, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    iget v5, p0, Ludt/UDTInputStream;->offset:I

    add-int/2addr v5, v4

    iput v5, p0, Ludt/UDTInputStream;->offset:I

    array-length v3, v3

    if-lt v5, v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Ludt/UDTInputStream;->currentChunk:Ludt/UDTInputStream$AppData;

    iput v1, p0, Ludt/UDTInputStream;->offset:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_1
    if-ne v2, p3, :cond_1

    return v2

    :cond_1
    iget-boolean v3, p0, Ludt/UDTInputStream;->blocking:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v3}, Ludt/UDTInputStream;->updateCurrentChunk(Z)V

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    return v2

    :cond_4
    iget-boolean p1, p0, Ludt/UDTInputStream;->closed:Z

    const/4 p2, -0x1

    if-eqz p1, :cond_5

    return p2

    :cond_5
    iget-object p1, p0, Ludt/UDTInputStream;->expectMoreData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Ludt/UDTInputStream;->receiveBuffer:Ludt/util/ReceiveBuffer;

    invoke-virtual {p1}, Ludt/util/ReceiveBuffer;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    return p2

    :cond_7
    :goto_3
    return v1

    :goto_4
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method
