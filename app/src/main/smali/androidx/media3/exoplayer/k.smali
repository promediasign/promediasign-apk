.class public final synthetic Landroidx/media3/exoplayer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/k;->a:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k;->a:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k;->a:Landroidx/media3/exoplayer/ExoPlayerImpl;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/k;->a:Landroidx/media3/exoplayer/ExoPlayerImpl;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method
