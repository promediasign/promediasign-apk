.class Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttConnAckDisposable"
.end annotation


# instance fields
.field private volatile disposed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;->disposed:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;->disposed:Z

    return v0
.end method
