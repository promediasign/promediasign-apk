.class public final Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final encodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;->encodersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;-><init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;->encodersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    move-result-object v0

    return-object v0
.end method
