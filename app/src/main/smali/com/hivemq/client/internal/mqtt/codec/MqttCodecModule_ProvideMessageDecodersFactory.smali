.class public final Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mqtt3ClientMessageDecodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;"
        }
    .end annotation
.end field

.field private final mqtt5ClientMessageDecodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->clientConfigProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->mqtt5ClientMessageDecodersProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->mqtt3ClientMessageDecodersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMessageDecoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule;->provideMessageDecoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->mqtt5ClientMessageDecodersProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->mqtt3ClientMessageDecodersProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->provideMessageDecoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->get()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    move-result-object v0

    return-object v0
.end method
