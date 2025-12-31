.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;


# virtual methods
.method public abstract getReasonCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;",
            ">;"
        }
    .end annotation
.end method
