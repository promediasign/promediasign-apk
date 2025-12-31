.class public final synthetic Lk1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/Function;
.implements Lio/reactivex/functions/Function;
.implements Landroidx/media3/common/Bundleable$Creator;
.implements Landroidx/media3/common/DebugViewProvider;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/preference/EditTextPreference$OnBindEditTextListener;
.implements Lio/milton/event/EventListener;
.implements Lsk/mimac/slideshow/utils/InterruptableConsumer;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;
.implements Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk1/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lk1/p;->a:I

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lk1/p;->a:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Lio/reactivex/Flowable;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->b(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->b(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_4
    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_5
    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->d(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_6
    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->c(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_7
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    :sswitch_8
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object p1

    return-object p1

    :sswitch_9
    check-cast p1, Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0x10 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->g0(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->i(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public onBindEditText(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->c(Landroid/widget/EditText;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-static {}, Lx/e;->a()V

    return-void
.end method

.method public run(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lk1/p;->a:I

    check-cast p1, Lsk/mimac/slideshow/gui/DisplayItemThread;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lsk/mimac/slideshow/userinput/ActionHelper;->c(Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lsk/mimac/slideshow/userinput/ActionHelper;->d(Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
