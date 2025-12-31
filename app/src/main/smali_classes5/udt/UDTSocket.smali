.class public Ludt/UDTSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private volatile active:Z

.field private final endpoint:Ludt/AbstractUDPEndPoint;

.field private inputStream:Ludt/UDTInputStream;

.field private outputStream:Ludt/UDTOutputStream;

.field private receiver:Ludt/UDTReceiver;

.field private sender:Ludt/UDTSender;

.field private final session:Ludt/UDTSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ludt/UDTSocket;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ludt/UDTSocket;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ludt/AbstractUDPEndPoint;Ludt/UDTSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ludt/UDTSocket;->endpoint:Ludt/AbstractUDPEndPoint;

    iput-object p2, p0, Ludt/UDTSocket;->session:Ludt/UDTSession;

    new-instance v0, Ludt/UDTReceiver;

    invoke-direct {v0, p2, p1}, Ludt/UDTReceiver;-><init>(Ludt/UDTSession;Ludt/AbstractUDPEndPoint;)V

    iput-object v0, p0, Ludt/UDTSocket;->receiver:Ludt/UDTReceiver;

    new-instance v0, Ludt/UDTSender;

    invoke-direct {v0, p2, p1}, Ludt/UDTSender;-><init>(Ludt/UDTSession;Ludt/AbstractUDPEndPoint;)V

    iput-object v0, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ludt/UDTSocket;->inputStream:Ludt/UDTInputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-object v0, p0, Ludt/UDTSocket;->outputStream:Ludt/UDTOutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ludt/UDTSocket;->active:Z

    return-void
.end method

.method public doWrite([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ludt/UDTSocket;->doWrite([BII)V

    return-void
.end method

.method public doWrite([BII)V
    .locals 6

    .line 2
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ludt/UDTSocket;->doWrite([BIIILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public doWrite([BIIILjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 3
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    if-lez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    invoke-virtual {p2, p1, p4, p5}, Ludt/UDTSender;->sendUdtPacket(Ljava/nio/ByteBuffer;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Ludt/UDTSocket;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t send data"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ludt/UDTSocket;->active:Z

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ludt/UDTSocket;->active:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    .line 7
    .line 8
    invoke-virtual {v0}, Ludt/UDTSender;->getCurrentSequenceNumber()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-ltz v4, :cond_3

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Ludt/UDTSender;->isSentOut(J)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-boolean v2, p0, Ludt/UDTSocket;->active:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const-wide/16 v2, 0x5

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget-boolean v2, p0, Ludt/UDTSocket;->active:Z

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Ludt/UDTSender;->haveAcknowledgementFor(J)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v1}, Ludt/UDTSender;->waitForAck(J)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v3, "Sequence number is "

    .line 58
    .line 59
    invoke-static {v3, v0, v1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v2
.end method

.method public declared-synchronized getInputStream()Ludt/UDTInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ludt/UDTSocket;->inputStream:Ludt/UDTInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ludt/UDTInputStream;

    invoke-direct {v0, p0}, Ludt/UDTInputStream;-><init>(Ludt/UDTSocket;)V

    iput-object v0, p0, Ludt/UDTSocket;->inputStream:Ludt/UDTInputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ludt/UDTSocket;->inputStream:Ludt/UDTInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputStream()Ludt/UDTOutputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ludt/UDTSocket;->outputStream:Ludt/UDTOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ludt/UDTOutputStream;

    invoke-direct {v0, p0}, Ludt/UDTOutputStream;-><init>(Ludt/UDTSocket;)V

    iput-object v0, p0, Ludt/UDTSocket;->outputStream:Ludt/UDTOutputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ludt/UDTSocket;->outputStream:Ludt/UDTOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getReceiver()Ludt/UDTReceiver;
    .locals 1

    iget-object v0, p0, Ludt/UDTSocket;->receiver:Ludt/UDTReceiver;

    return-object v0
.end method

.method public getSender()Ludt/UDTSender;
    .locals 1

    iget-object v0, p0, Ludt/UDTSocket;->sender:Ludt/UDTSender;

    return-object v0
.end method

.method public final getSession()Ludt/UDTSession;
    .locals 1

    iget-object v0, p0, Ludt/UDTSocket;->session:Ludt/UDTSession;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Ludt/UDTSocket;->active:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UDTSocket{session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ludt/UDTSocket;->session:Ludt/UDTSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
