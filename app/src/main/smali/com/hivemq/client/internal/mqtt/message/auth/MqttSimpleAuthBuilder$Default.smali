.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;
    .locals 1

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic password([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->password([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    return-object p1
.end method

.method public self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    return-object p1
.end method
