.class public abstract Lsk/mimac/slideshow/communication/AsyncCommandHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final responseWaitingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lsk/mimac/slideshow/communication/payload/Payload;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/AsyncCommandHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->responseWaitingMap:Ljava/util/Map;

    return-void
.end method

.method public static awaitResponse(Ljava/lang/Long;I)Lsk/mimac/slideshow/communication/payload/Payload;
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->responseWaitingMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->extractResponse(Ljava/lang/Long;)Lsk/mimac/slideshow/communication/payload/Payload;

    move-result-object p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v1, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Exception while waiting for response from MQTT"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p0}, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->extractResponse(Ljava/lang/Long;)Lsk/mimac/slideshow/communication/payload/Payload;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1
    invoke-static {p0}, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->extractResponse(Ljava/lang/Long;)Lsk/mimac/slideshow/communication/payload/Payload;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static extractResponse(Ljava/lang/Long;)Lsk/mimac/slideshow/communication/payload/Payload;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->responseWaitingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/communication/payload/Payload;

    return-object p0
.end method

.method public static publishResponse(Ljava/lang/Long;Lsk/mimac/slideshow/communication/payload/Payload;)Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->responseWaitingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
