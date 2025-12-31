.class final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionComponentImpl"
.end annotation


# instance fields
.field private connAckFlowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;"
        }
    .end annotation
.end field

.field private connectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;"
        }
    .end annotation
.end field

.field private mqttChannelInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private mqttConnectAuthHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mqttConnectHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mqttDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqttDisconnectHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mqttEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mqttWebSocketInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMessageDecodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;",
            ">;"
        }
    .end annotation
.end field

.field private provideMessageEncodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->initialize(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V

    return-void
.end method

.method private initialize(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V
    .locals 8

    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connectProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connAckFlowProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object p2, p2, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->access$700(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->access$800(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->provideMessageEncodersProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;->create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttEncoderProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object p2, p2, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->access$900(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->access$1000(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageDecodersFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->provideMessageDecodersProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connectProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttDecoderProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connectProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connAckFlowProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$1100(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttDecoderProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttConnectHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$1100(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttDisconnectHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connectProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttConnectAuthHandlerProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connectProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->access$1200(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->provideAuthHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->access$1300(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;->create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttWebSocketInitializerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connectProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->connAckFlowProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttConnectHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttDisconnectHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->provideAuthHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttWebSocketInitializerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttChannelInitializerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public bootstrap()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;->mqttChannelInitializerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;->provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method
