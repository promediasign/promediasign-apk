.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->data:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
