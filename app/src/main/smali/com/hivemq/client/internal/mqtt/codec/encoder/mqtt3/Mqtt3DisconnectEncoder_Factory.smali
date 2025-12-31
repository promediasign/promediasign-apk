.class public final Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory$InstanceHolder;->access$000()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;->newInstance()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;

    move-result-object v0

    return-object v0
.end method
