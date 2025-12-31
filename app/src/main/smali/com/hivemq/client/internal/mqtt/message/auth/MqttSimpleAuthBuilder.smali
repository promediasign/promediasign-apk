.class public abstract Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private password:Ljava/nio/ByteBuffer;

.field private username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->password:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Either user name or password must be given."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->password:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public password([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    const-string v0, "Password"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryData([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->password:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "Username"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    return-object p1
.end method
