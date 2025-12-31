.class public final synthetic Landroidx/media3/exoplayer/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media3/exoplayer/m;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/m;->b:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/exoplayer/m;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/media3/exoplayer/m;->c:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object v1, p0, Landroidx/media3/exoplayer/m;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void

    :pswitch_0
    iget v0, p0, Landroidx/media3/exoplayer/m;->c:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object v1, p0, Landroidx/media3/exoplayer/m;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V

    return-void

    :pswitch_1
    iget v0, p0, Landroidx/media3/exoplayer/m;->c:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object v1, p0, Landroidx/media3/exoplayer/m;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
