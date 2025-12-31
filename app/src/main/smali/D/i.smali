.class public final synthetic LD/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, LD/i;->a:I

    iput-object p1, p0, LD/i;->b:Ljava/lang/Object;

    iput-object p2, p0, LD/i;->c:Ljava/lang/Object;

    iput-object p3, p0, LD/i;->d:Ljava/lang/Object;

    iput-object p4, p0, LD/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LD/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, LD/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LD/i;->b:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/display/SlideshowActivity;

    iget-object v3, p0, LD/i;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    invoke-static {v2, v3, v0, v1}, Lsk/mimac/slideshow/utils/FileCopyUtils;->b(Lsk/mimac/slideshow/display/SlideshowActivity;Landroid/content/Intent;Ljava/io/File;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LD/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iget-object v1, p0, LD/i;->e:Ljava/lang/Object;

    check-cast v1, Lio/netty/channel/EventLoop;

    iget-object v2, p0, LD/i;->b:Ljava/lang/Object;

    check-cast v2, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    iget-object v3, p0, LD/i;->c:Ljava/lang/Object;

    check-cast v3, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-static {v2, v3, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->a(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LD/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LD/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, LD/i;->b:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/gui/GuiCreator;

    iget-object v3, p0, LD/i;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-static {v2, v3, v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->e(Lsk/mimac/slideshow/gui/GuiCreator;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LD/i;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, LD/i;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v2, p0, LD/i;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, p0, LD/i;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v2, v3, v0, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
