.class public final synthetic LD/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LD/f;->a:I

    iput-object p1, p0, LD/f;->b:Ljava/lang/Object;

    iput-object p2, p0, LD/f;->c:Ljava/lang/Object;

    iput-object p3, p0, LD/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LD/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->a(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->h(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/rx/CompletableFlow;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->e(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/music/MusicPlayerImpl;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->c(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroidx/media3/exoplayer/ExoPlayer;Landroid/net/Uri;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Lsk/mimac/slideshow/gui/play/PlayId;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->d(Lsk/mimac/slideshow/gui/video/VideoViewInterface;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/MountListener;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/MountListener;->a(Lsk/mimac/slideshow/MountListener;Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/util/List;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->h(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LD/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v1, p0, LD/f;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v2, p0, LD/f;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
