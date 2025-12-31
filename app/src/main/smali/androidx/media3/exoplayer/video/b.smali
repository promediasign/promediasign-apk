.class public final synthetic Landroidx/media3/exoplayer/video/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field public final synthetic b:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

.field public final synthetic c:Landroidx/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/b;->b:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    iput-object p3, p0, Landroidx/media3/exoplayer/video/b;->c:Landroidx/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->b:Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->c:Landroidx/media3/common/VideoSize;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->c(Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$VideoSinkImpl;Landroidx/media3/common/VideoSize;)V

    return-void
.end method
