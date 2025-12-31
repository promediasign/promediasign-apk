.class public Lsk/mimac/slideshow/communication/TunnelHttpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final deviceMid:Ljava/lang/String;

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field private final serverSocket:Ljava/net/ServerSocket;

.field private serverThread:Ljava/lang/Thread;

.field private volatile shouldRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/net/ServerSocket;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->semaphore:Ljava/util/concurrent/Semaphore;

    iput-boolean v2, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->shouldRun:Z

    iput-object p1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverSocket:Ljava/net/ServerSocket;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->deviceMid:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;Ludt/UDTClient;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->lambda$processClient$1(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;Ludt/UDTClient;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/communication/TunnelHttpServer;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ludt/UDTClient;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->lambda$processClient$0(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ludt/UDTClient;)V

    return-void
.end method

.method private synthetic lambda$processClient$0(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ludt/UDTClient;)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v6, 0x4b0

    :try_start_0
    invoke-static {p1, p2, v6}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object p1, v5, v4

    aput-object p3, v5, v3

    aput-object p4, v5, v2

    aput-object p2, v5, v1

    aput-object p5, v5, v0

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    :goto_0
    iget-object p1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catchall_0
    move-exception v6

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object p1, v5, v4

    aput-object p3, v5, v3

    aput-object p4, v5, v2

    aput-object p2, v5, v1

    aput-object p5, v5, v0

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    iget-object p1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v6

    :catch_0
    new-array v5, v5, [Ljava/io/Closeable;

    aput-object p1, v5, v4

    aput-object p3, v5, v3

    aput-object p4, v5, v2

    aput-object p2, v5, v1

    aput-object p5, v5, v0

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static synthetic lambda$processClient$1(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;Ludt/UDTClient;)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v6, 0x2000

    :try_start_0
    invoke-static {p0, p1, v6}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object p2, v5, v4

    aput-object p1, v5, v3

    aput-object p0, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object p2, v5, v4

    aput-object p1, v5, v3

    aput-object p0, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    throw v6

    :catch_0
    new-array v5, v5, [Ljava/io/Closeable;

    aput-object p2, v5, v4

    aput-object p1, v5, v3

    aput-object p0, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public static startServer(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->stopServer()V

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    new-instance v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;

    invoke-direct {v1, v0, p0}, Lsk/mimac/slideshow/communication/TunnelHttpServer;-><init>(Ljava/net/ServerSocket;Ljava/lang/String;)V

    sput-object v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    new-instance v2, Ljava/lang/Thread;

    sget-object v3, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    const-string v4, "SocketServer-to-UDT dispatcher thread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverThread:Ljava/lang/Thread;

    sget-object v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    iget-object v1, v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    sget-object v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Started tunnel HTTP server for device {} on port {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public static stopServer()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    if-eqz v0, :cond_0

    sget-object v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Stopping tunnel HTTP server for device {}"

    iget-object v0, v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->deviceMid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->shouldRun:Z

    sget-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    iget-object v0, v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/ServerSocket;)V

    sget-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    iget-object v0, v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->INSTANCE:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    :cond_0
    return-void
.end method


# virtual methods
.method public processClient(Ljava/net/Socket;Ludt/UDTClient;)V
    .locals 12

    sget-object v0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Connecting socket {} with UDTClient {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p2}, Ludt/UDTClient;->getInputStream()Ludt/UDTInputStream;

    move-result-object v1

    invoke-virtual {p2}, Ludt/UDTClient;->getOutputStream()Ludt/UDTOutputStream;

    move-result-object v9

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lg1/g;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v0

    move-object v5, v9

    move-object v6, p1

    move-object v7, v1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lg1/g;-><init>(Lsk/mimac/slideshow/communication/TunnelHttpServer;Ljava/io/InputStream;Ludt/UDTOutputStream;Ljava/io/OutputStream;Ludt/UDTInputStream;Ludt/UDTClient;)V

    const-string v2, "Socket-to-UDT copy thread"

    invoke-direct {v10, v11, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/Thread;

    new-instance v11, Lg1/h;

    move-object v2, v11

    move-object v3, v1

    move-object v4, p1

    move-object v5, v0

    move-object v6, v9

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lg1/h;-><init>(Ludt/UDTInputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ludt/UDTOutputStream;Ludt/UDTClient;)V

    const-string p1, "UDT-to-socket copy thread"

    invoke-direct {v8, v11, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->shouldRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->deviceMid:Ljava/lang/String;

    invoke-static {v1}, Lsk/mimac/slideshow/communication/CommunicationService;->getUdtClient(Ljava/lang/String;)Ludt/UDTClient;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->processClient(Ljava/net/Socket;Ludt/UDTClient;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->shouldRun:Z

    if-eqz v1, :cond_2

    instance-of v1, v0, Ludt/exception/UdtException;

    if-eqz v1, :cond_1

    sget-object v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error while accepting socket: {}"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/communication/TunnelHttpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error while accepting socket"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/ServerSocket;)V

    return-void

    :cond_3
    iget-object v0, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/ServerSocket;)V

    return-void

    :goto_2
    iget-object v1, p0, Lsk/mimac/slideshow/communication/TunnelHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/ServerSocket;)V

    throw v0
.end method
