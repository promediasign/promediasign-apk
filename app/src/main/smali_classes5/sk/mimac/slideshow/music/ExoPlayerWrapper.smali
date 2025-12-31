.class public Lsk/mimac/slideshow/music/ExoPlayerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/music/GenericMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;
    }
.end annotation


# instance fields
.field private final exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private volatile stopped:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;-><init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;Lsk/mimac/slideshow/music/ExoPlayerWrapper$1;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->lambda$getCurrentPosition$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->stopped:Z

    return p0
.end method

.method public static synthetic access$202(Lsk/mimac/slideshow/music/ExoPlayerWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->stopped:Z

    return p1
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->lambda$stop$3()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->lambda$getDuration$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lsk/mimac/slideshow/music/ExoPlayerWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->lambda$setVolume$2(I)V

    return-void
.end method

.method private synthetic lambda$getCurrentPosition$0()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getDuration$1()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setVolume$2(I)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-float p1, p1

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    return-void
.end method

.method private synthetic lambda$stop$3()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 3

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lp1/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lp1/b;-><init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 3

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lp1/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lp1/b;-><init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    const/4 v0, -0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Le1/d;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Le1/d;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lp1/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lp1/a;-><init>(Landroidx/media3/exoplayer/ExoPlayer;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    new-instance v0, Lh/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lh/a;-><init>(Ljava/lang/Object;II)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lp1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lp1/a;-><init>(Landroidx/media3/exoplayer/ExoPlayer;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->stopped:Z

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lp1/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lp1/b;-><init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    :goto_0
    return-void
.end method
