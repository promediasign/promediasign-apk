.class public final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;,
        Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;,
        Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$Builder;
    }
.end annotation


# instance fields
.field private mqtt3ClientMessageDecodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3ClientMessageEncodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3ConnAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3ConnectEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3DisconnectEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubAckEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubCompDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubCompEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubRecDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubRecEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubRelDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PubRelEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PublishDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3PublishEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3SubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3SubscribeEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3UnsubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt3UnsubscribeEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5AuthDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5AuthEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5ClientMessageDecodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5ClientMessageEncodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5ConnAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5ConnectEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5DisconnectDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5DisconnectEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubAckEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubCompDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubCompEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubCompEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubRecDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubRecEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRecEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubRelDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PubRelEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRelEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PublishDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5PublishEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5SubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5SubscribeEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5UnsubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqtt5UnsubscribeEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqttDisconnectOnAuthHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mqttPingReqEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqttPingRespDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqttWebSocketCodecProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->initialize()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ClientMessageDecodersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttDisconnectOnAuthHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttWebSocketCodecProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ClientMessageEncodersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ClientMessageEncodersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ClientMessageDecodersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static create()Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$Builder;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$Builder;->build()Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 12

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PublishEncoderProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;->create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ConnectEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubAckEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRecEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRecEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRecEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRelEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRelEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRelEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubCompEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubCompEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubCompEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5SubscribeEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5UnsubscribeEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttPingReqEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5DisconnectEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5AuthEncoderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ConnectEncoderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PublishEncoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubAckEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRecEncoderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRelEncoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubCompEncoderProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5SubscribeEncoderProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5UnsubscribeEncoderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttPingReqEncoderProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5DisconnectEncoderProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v11}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ClientMessageEncodersProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ConnectEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PublishEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubAckEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRecEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRelEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubCompEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3SubscribeEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3UnsubscribeEncoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3DisconnectEncoderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ConnectEncoderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PublishEncoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubAckEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRecEncoderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRelEncoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubCompEncoderProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3SubscribeEncoderProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3UnsubscribeEncoderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttPingReqEncoderProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ClientMessageEncodersProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ConnAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PublishDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRecDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRelDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubCompDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5SubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5UnsubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttPingRespDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5DisconnectDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5AuthDecoderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ConnAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PublishDecoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRecDecoderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubRelDecoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5PubCompDecoderProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5SubAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5UnsubAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttPingRespDecoderProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5DisconnectDecoderProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v11}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt5ClientMessageDecodersProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ConnAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PublishDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRecDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRelDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubCompDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3SubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder_Factory;->create()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3UnsubAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ConnAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PublishDecoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRecDecoderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubRelDecoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3PubCompDecoderProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3SubAckDecoderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttPingRespDecoderProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqtt3ClientMessageDecodersProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler_Factory;->create()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttDisconnectOnAuthHandlerProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec_Factory;->create()Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->mqttWebSocketCodecProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public clientComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    return-object v0
.end method
