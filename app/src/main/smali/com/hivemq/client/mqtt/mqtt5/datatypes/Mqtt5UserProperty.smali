.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getName()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method

.method public abstract getValue()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method
