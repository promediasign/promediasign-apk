.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/util/function/BiConsumer;

.field public final synthetic d:Ljava/lang/Boolean;

.field public final synthetic e:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Boolean;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->b:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->c:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->d:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->e:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->d:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->e:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->b:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->c:Ljava/util/function/BiConsumer;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->e(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Boolean;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    return-void
.end method
