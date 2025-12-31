.class public final synthetic Lg1/h;
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

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lg1/h;->a:I

    iput-object p1, p0, Lg1/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg1/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg1/h;->d:Ljava/lang/Object;

    iput-object p4, p0, Lg1/h;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg1/h;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ludt/UDTInputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ludt/UDTOutputStream;Ludt/UDTClient;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lg1/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg1/h;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg1/h;->c:Ljava/lang/Object;

    iput-object p4, p0, Lg1/h;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg1/h;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lg1/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg1/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    iget-object v1, p0, Lg1/h;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/ConditionVariable;

    iget-object v2, p0, Lg1/h;->b:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioTrack;

    iget-object v3, p0, Lg1/h;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget-object v4, p0, Lg1/h;->d:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/util/ConditionVariable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg1/h;->e:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iget-object v1, p0, Lg1/h;->f:Ljava/lang/Object;

    check-cast v1, Lio/netty/channel/EventLoop;

    iget-object v2, p0, Lg1/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v3, p0, Lg1/h;->c:Ljava/lang/Object;

    check-cast v3, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    iget-object v4, p0, Lg1/h;->d:Ljava/lang/Object;

    check-cast v4, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->d(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg1/h;->e:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    iget-object v1, p0, Lg1/h;->f:Ljava/lang/Object;

    check-cast v1, Ludt/UDTClient;

    iget-object v2, p0, Lg1/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/io/InputStream;

    iget-object v3, p0, Lg1/h;->d:Ljava/lang/Object;

    check-cast v3, Ljava/io/OutputStream;

    iget-object v4, p0, Lg1/h;->c:Ljava/lang/Object;

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v2, v3, v4, v0, v1}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;Ludt/UDTClient;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
