.class public final Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
        ">;"
    }
.end annotation


# instance fields
.field private final authDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final connAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pingRespDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubCompDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubRecDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubRelDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final publishDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final subAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final unsubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->connAckDecoderProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->publishDecoderProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubAckDecoderProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubRecDecoderProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubRelDecoderProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubCompDecoderProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->subAckDecoderProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->unsubAckDecoderProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pingRespDecoderProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->disconnectDecoderProvider:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->authDecoderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;"
        }
    .end annotation

    new-instance v12, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;
    .locals 13

    new-instance v12, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;-><init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->connAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->publishDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubRecDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubRelDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pubCompDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->subAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->unsubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->pingRespDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->disconnectDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->authDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;

    invoke-static/range {v1 .. v11}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;

    move-result-object v0

    return-object v0
.end method
