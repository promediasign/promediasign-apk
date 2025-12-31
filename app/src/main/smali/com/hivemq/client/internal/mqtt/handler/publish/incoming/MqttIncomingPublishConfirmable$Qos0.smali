.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/checkpoint/Confirmable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qos0"
.end annotation


# instance fields
.field private final confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;->confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
