.class public final synthetic LG/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, LG/c;->a:I

    iput-object p1, p0, LG/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LG/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, LG/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->c(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b(Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->l(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/display/SlideshowActivity;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/FileCopyUtils;->c(Lsk/mimac/slideshow/display/SlideshowActivity;Ljava/io/IOException;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/display/SlideshowActivity;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/FileCopyUtils;->d(Lsk/mimac/slideshow/display/SlideshowActivity;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/display/SlideshowActivity;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/FileCopyUtils;->a(Lsk/mimac/slideshow/display/SlideshowActivity;Ljava/lang/Exception;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->a(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->m(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->k(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->n(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->i(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/NetworkTypeObserver$Listener;

    invoke-static {v0, v1}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroidx/media3/common/util/NetworkTypeObserver;Landroidx/media3/common/util/NetworkTypeObserver$Listener;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/utils/Consumer;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->l(Lsk/mimac/slideshow/utils/Consumer;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/StartupActivity;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/StartupActivity;->b(Lsk/mimac/slideshow/StartupActivity;Ljava/lang/Throwable;)V

    return-void

    :pswitch_e
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v0, v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->a(Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void

    :pswitch_f
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->i(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V

    return-void

    :pswitch_10
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->e(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V

    return-void

    :pswitch_11
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->c(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Ljava/lang/String;)V

    return-void

    :pswitch_12
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->j(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;)V

    return-void

    :pswitch_13
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->d(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;)V

    return-void

    :pswitch_14
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->a(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V

    return-void

    :pswitch_15
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    return-void

    :pswitch_16
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->i(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    return-void

    :pswitch_17
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    return-void

    :pswitch_18
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/VideoSize;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_19
    iget-object v0, p0, LG/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    iget-object v1, p0, LG/c;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;->a(Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;Landroidx/media3/exoplayer/video/VideoSink$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
