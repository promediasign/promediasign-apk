.class public final synthetic Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq0/b;->a:I

    iput-object p1, p0, Lq0/b;->b:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    iput-object p2, p0, Lq0/b;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lq0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq0/b;->b:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    iget-object v1, p0, Lq0/b;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->b(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lq0/b;->b:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    iget-object v1, p0, Lq0/b;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->a(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
