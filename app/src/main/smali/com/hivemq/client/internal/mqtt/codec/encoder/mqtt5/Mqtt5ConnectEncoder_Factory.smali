.class public final Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final publishEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;",
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
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;->publishEncoderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;-><init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;->publishEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;

    move-result-object v0

    return-object v0
.end method
