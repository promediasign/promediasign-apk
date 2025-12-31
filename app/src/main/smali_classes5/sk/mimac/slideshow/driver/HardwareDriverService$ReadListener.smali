.class Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadListener"
.end annotation


# instance fields
.field private buffer:[B

.field private final lock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->buffer:[B

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/driver/HardwareDriverService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public discardData()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [B

    iput-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->buffer:[B

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getData(I)[B
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->buffer:[B

    array-length v1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->lock:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->buffer:[B

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->buffer:[B

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNewData([B)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->buffer:[B

    iget-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
