.class public abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    return-void
.end method


# virtual methods
.method public final get(I)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
            "*>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
