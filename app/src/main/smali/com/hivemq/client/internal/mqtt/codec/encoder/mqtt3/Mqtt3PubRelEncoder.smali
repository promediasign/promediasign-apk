.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public getFixedHeader()I
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;->FIXED_HEADER:I

    return v0
.end method
