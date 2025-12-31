.class public final synthetic Lo0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lo0/b;->a:I

    iput-object p1, p0, Lo0/b;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lo0/b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lo0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/b;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-wide v1, p0, Lo0/b;->b:J

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lo0/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-wide v1, p0, Lo0/b;->b:J

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->a(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
