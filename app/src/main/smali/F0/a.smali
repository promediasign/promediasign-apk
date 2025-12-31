.class public abstract synthetic LF0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x80

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
