.class public final synthetic Landroidx/media3/exoplayer/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic d:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/y;->a:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/y;->b:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/y;->c:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Landroidx/media3/exoplayer/y;->d:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput-object p5, p0, Landroidx/media3/exoplayer/y;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Landroidx/media3/exoplayer/y;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v4, p0, Landroidx/media3/exoplayer/y;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/y;->f:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/y;->a:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/y;->b:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/y;->c:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Landroidx/media3/exoplayer/y;->d:Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->h(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method
