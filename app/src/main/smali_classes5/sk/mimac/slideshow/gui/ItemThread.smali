.class public abstract Lsk/mimac/slideshow/gui/ItemThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private backward:Z

.field private confirmedCode:Ljava/lang/String;

.field private confirmedPosition:Ljava/lang/Integer;

.field private volatile currentPlayId:Ljava/lang/Integer;

.field private currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

.field protected volatile currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

.field private volatile eventualToRun:Lsk/mimac/slideshow/utils/InterruptableRunnable;

.field private final itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

.field private volatile itemWasPaused:Z

.field protected lastFileName:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field protected final mainPanel:Z

.field private volatile nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

.field private volatile paused:Z

.field private playlistSyncCode:Ljava/lang/String;

.field private volatile setLength:J

.field private volatile shouldStop:Z

.field private final toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

.field private final toRunQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lsk/mimac/slideshow/utils/InterruptableRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForConfirmPlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/gui/ToPlayResolver;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toRunQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->eventualToRun:Lsk/mimac/slideshow/utils/InterruptableRunnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->shouldStop:Z

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->backward:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    new-instance v0, Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-direct {v0, p0, p1}, Lsk/mimac/slideshow/utils/InterruptableThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/ItemThread;->mainPanel:Z

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/ItemThread;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->lambda$interruptIfPlayId$0(I)Z

    move-result p0

    return p0
.end method

.method private checkExternalToRun()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toRunQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/InterruptableRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    iget-boolean v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->mainPanel:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->finishLastItem()V

    :cond_0
    invoke-interface {v0}, Lsk/mimac/slideshow/utils/InterruptableRunnable;->run()V

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/InterruptableThread;->checkInterrupt()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->eventualToRun:Lsk/mimac/slideshow/utils/InterruptableRunnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->eventualToRun:Lsk/mimac/slideshow/utils/InterruptableRunnable;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->eventualToRun:Lsk/mimac/slideshow/utils/InterruptableRunnable;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->mainPanel:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->finishLastItem()V

    :cond_2
    invoke-interface {v0}, Lsk/mimac/slideshow/utils/InterruptableRunnable;->run()V

    :cond_3
    return-void
.end method

.method public static formatPositionDuration(II)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-gez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    div-int/lit16 p1, p1, 0x3e8

    if-gtz p1, :cond_1

    div-int/lit16 p1, p0, 0xe10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    rem-int/lit16 v4, p0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v4, v3, v1

    aput-object p0, v3, v0

    const-string p0, "(%02d:%02d:%02d)"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    div-int/lit16 v4, p0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/lit16 v5, p0, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    div-int/lit16 v6, p1, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    rem-int/lit16 v7, p1, 0xe10

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v5, v8, v1

    aput-object p0, v8, v0

    aput-object v6, v8, v3

    const/4 p0, 0x4

    aput-object v7, v8, p0

    const/4 p0, 0x5

    aput-object p1, v8, p0

    const-string p0, "(%02d:%02d:%02d / %02d:%02d:%02d)"

    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentMillis()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextFromPlaylist(Lsk/mimac/slideshow/gui/play/ToPlay;Z)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->canGoBackward()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->resolveCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-object p1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Current playlist is null"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>(Z)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getSyncCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-nez p2, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, -0x2

    :goto_0
    invoke-virtual {v2, p1, v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolve(Lsk/mimac/slideshow/playlist/PlaylistWrapper;I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    iget-boolean p2, p0, Lsk/mimac/slideshow/gui/ItemThread;->mainPanel:Z

    if-nez p2, :cond_6

    invoke-virtual {p1, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setSyncCode(Ljava/lang/String;)V

    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->setLength:J

    return-object p1
.end method

.method private synthetic lambda$interruptIfPlayId$0(I)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentPlayId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentPlayId:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private play(Lsk/mimac/slideshow/gui/play/ToPlay;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    invoke-static {v1, v3}, Lsk/mimac/slideshow/communication/CommunicationService;->sendRunNext(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iput-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    iput-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    iput-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    iput-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    sget-object v1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Waiting for: {}"

    iget-object v3, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Playing: {}"

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentPlayId:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->playInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private prepare(Ljava/lang/Integer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-direct {p0, p1, v1}, Lsk/mimac/slideshow/gui/ItemThread;->getNextFromPlaylist(Lsk/mimac/slideshow/gui/play/ToPlay;Z)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lsk/mimac/slideshow/communication/CommunicationService;->sendPrepareNext(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lsk/mimac/slideshow/communication/CommunicationService;->sendPrepareNext(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    iget-object v4, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_7

    :cond_5
    iget-object v4, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-direct {p0, v4, v1}, Lsk/mimac/slideshow/gui/ItemThread;->getNextFromPlaylist(Lsk/mimac/slideshow/gui/play/ToPlay;Z)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v4

    iput-object v4, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_6

    sget-object v1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Requested position is {}, but active playlist can\'t reach this position"

    :goto_1
    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    add-int/2addr v3, v1

    const/16 v4, 0xc8

    if-le v3, v4, :cond_4

    sget-object v1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Requested position is {}, but active playlist can\'t reach this position"

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->prepareInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private prepare(Ljava/lang/String;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileNameBySyncCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Received sync code \'{}\' was translated to file mame \'{}\'"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

    invoke-virtual {v1, v0, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFile(Ljava/lang/String;I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    iput-object p2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/gui/ItemThread;->prepareInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t resolve item for sync code \'{}\'"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private runFromPlaylist(Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/InterruptableThread;->checkInterrupt()V

    iget-object v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iput-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-direct {v1, v2, v0}, Lsk/mimac/slideshow/gui/ItemThread;->getNextFromPlaylist(Lsk/mimac/slideshow/gui/play/ToPlay;Z)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    iput-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iput-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lsk/mimac/slideshow/communication/CommunicationService;->sendPrepareNext(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lsk/mimac/slideshow/communication/CommunicationService;->sendPrepareNext(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemWasPaused:Z

    :try_start_0
    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->lastFileName:Ljava/lang/String;

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/InterruptableThread;->checkInterrupt()V

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/gui/ItemThread;->play(Lsk/mimac/slideshow/gui/play/ToPlay;)V

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    const-wide/16 v8, 0x3e8

    if-eqz v0, :cond_3

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v0

    int-to-long v10, v0

    mul-long v10, v10, v8

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_3
    const-wide/16 v10, 0x1f4

    :goto_1
    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentMillis()J

    move-result-wide v12

    add-long v14, v12, v10

    const-wide/16 v16, 0x2ee0

    const-wide/16 v6, 0x1388

    cmp-long v0, v10, v16

    if-lez v0, :cond_4

    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0, v6, v7}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V

    :cond_4
    iget-wide v10, v1, Lsk/mimac/slideshow/gui/ItemThread;->setLength:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lsk/mimac/slideshow/gui/ItemThread;->setLength:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_5

    add-long v14, v12, v10

    :cond_5
    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentMillis()J

    move-result-wide v4

    sub-long v4, v14, v4

    const-wide/16 v10, 0x320

    cmp-long v12, v4, v10

    if-lez v12, :cond_6

    iget-object v10, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    const-wide/16 v11, 0x2

    mul-long v11, v11, v4

    const-wide/16 v18, 0x5

    div-long v11, v11, v18

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V

    :cond_6
    invoke-direct {v1, v3}, Lsk/mimac/slideshow/gui/ItemThread;->prepare(Ljava/lang/Integer;)V

    iget-object v4, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentMillis()J

    move-result-wide v5

    sub-long/2addr v14, v5

    invoke-virtual {v4, v14, v15}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V

    :cond_7
    :goto_2
    iget-boolean v4, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemWasPaused:Z

    if-eqz v4, :cond_a

    iput-boolean v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemWasPaused:Z

    :goto_3
    iget-boolean v4, v1, Lsk/mimac/slideshow/gui/ItemThread;->paused:Z

    if-eqz v4, :cond_8

    iget-object v4, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v4, v8, v9}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_7

    iget-object v4, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    iget-object v5, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v5}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v8

    goto :goto_4

    :cond_9
    const-wide/16 v5, 0x1f4

    :goto_4
    invoke-virtual {v4, v5, v6}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V
    :try_end_0
    .catch Lsk/mimac/slideshow/item/CantShowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_5
    sget-object v4, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Can\'t show {}"

    iget-object v6, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-interface {v4, v5, v6, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    iget-object v0, v1, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V

    goto :goto_8

    :goto_7
    sget-object v4, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    iget-object v5, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Can\'t show {}: {}"

    invoke-interface {v4, v6, v5, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :catch_2
    :cond_a
    :goto_8
    iput-object v3, v1, Lsk/mimac/slideshow/gui/ItemThread;->currentPlayId:Ljava/lang/Integer;

    iput-boolean v2, v1, Lsk/mimac/slideshow/gui/ItemThread;->paused:Z

    return-void
.end method


# virtual methods
.method public addToCounter(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->mainPanel:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lsk/mimac/slideshow/item/ItemCounter;->addItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->finishLastItem()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addToRun() {}, {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toRunQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-void
.end method

.method public addToRunEventually(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->eventualToRun:Lsk/mimac/slideshow/utils/InterruptableRunnable;

    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    return-void
.end method

.method public clearNext()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PLAYLIST_CHANGE_RESET_ORDER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resetAlphabeticalFilePicker()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;->revertPreloadedItem()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    return-void
.end method

.method public confirmPlay(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptIfAllowed()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public confirmPlay(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getSyncCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedPosition:Ljava/lang/Integer;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->confirmedCode:Ljava/lang/String;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptIfAllowed()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public confirmPrepare(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->prepare(Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public confirmPrepare(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/ItemThread;->waitingForConfirmPlay:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ItemThread;->prepare(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    return-object v0
.end method

.method public abstract getFormattedPosition()Ljava/lang/String;
.end method

.method public getLastFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->lastFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistSyncCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->playlistSyncCode:Ljava/lang/String;

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptEventually()V

    return-void
.end method

.method public interruptAndBackward()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->backward:Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptEventually()V

    return-void
.end method

.method public interruptIfPlayId(I)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    new-instance v1, Lv/h;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lv/h;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptEventually(Lsk/mimac/slideshow/utils/Predicate;)V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->paused:Z

    return v0
.end method

.method public isShouldStop()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->shouldStop:Z

    return v0
.end method

.method public join()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v2, "InterruptedException by ItemThread.stop()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PLAYLIST_CHANGE_RESET_ORDER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->nextToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->toPlayResolver:Lsk/mimac/slideshow/gui/ToPlayResolver;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;->revertPreloadedItem()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->paused:Z

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemWasPaused:Z

    return-void
.end method

.method public pauseOrResume()V
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->paused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->resume()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->pause()V

    :goto_0
    return-void
.end method

.method public abstract playInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
.end method

.method public abstract prepareInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->paused:Z

    return-void
.end method

.method public run()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->shouldStop:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ItemThread;->checkExternalToRun()V

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->backward:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->backward:Z

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ItemThread;->runFromPlaylist(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ItemThread;->runFromPlaylist(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/gui/ItemThread;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error in ItemThread"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentPlaylistResolver(Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    return-void
.end method

.method public setLength(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lsk/mimac/slideshow/gui/ItemThread;->setLength:J

    :cond_1
    return-void
.end method

.method public sleep(J)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/utils/InterruptableThread;->sleepWait(J)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->shouldStop:Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/InterruptableThread;->setShouldStop()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->itemThread:Lsk/mimac/slideshow/utils/InterruptableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
