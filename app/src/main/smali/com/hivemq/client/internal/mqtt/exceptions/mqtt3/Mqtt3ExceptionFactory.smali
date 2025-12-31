.class public abstract Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPPER_JAVA:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk1/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->MAPPER:Lio/reactivex/functions/Function;

    new-instance v0, LT0/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LT0/b;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->MAPPER_JAVA:Ljava/util/function/Function;

    return-void
.end method

.method public static map(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    sget-object v2, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt5$message$Mqtt5MessageType:[I

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    invoke-direct {v0, v1, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_1
    new-instance v2, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->of(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :pswitch_2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubRecException;

    invoke-direct {v0, v1, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubRecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;

    invoke-direct {v0, v1, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3DisconnectException;

    invoke-direct {v0, v1, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3DisconnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_5
    new-instance v2, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static map(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2

    .line 2
    instance-of v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static map(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 3
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    :cond_0
    return-object p0
.end method
