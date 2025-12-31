.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/util/function/BiConsumer;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->c:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->d:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/f;->b:Ljava/lang/Throwable;

    invoke-static {v2, v3, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->a(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    return-void
.end method
