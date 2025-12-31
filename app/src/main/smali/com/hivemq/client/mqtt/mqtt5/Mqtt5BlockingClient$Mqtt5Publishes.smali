.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mqtt5Publishes"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract receive()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
.end method
