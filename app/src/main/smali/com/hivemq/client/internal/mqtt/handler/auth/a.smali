.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

.field public final synthetic c:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->c:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->c:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->b(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method
