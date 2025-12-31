.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;


# static fields
.field public static final MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA0/a;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->MAPPER:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    return-void
.end method

.method public static delegate(ILcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegateReturnCodes(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    const/4 v1, 0x0

    sget-object v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method private static delegateReturnCode(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt3$message$subscribe$suback$Mqtt3SubAckReturnCode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_2:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_1:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_0:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    return-object p0
.end method

.method private static delegateReturnCodes(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;",
            ">;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/b;->w(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegateReturnCode(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V

    return-object v0
.end method

.method public static of(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V

    return-object v0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returnCodes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->getReturnCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static viewReasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt5$message$subscribe$suback$Mqtt5SubAckReasonCode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->FAILURE:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_2:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_1:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_0:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    return-object p0
.end method

.method private static viewReasonCodes(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;",
            ">;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/b;->w(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->viewReasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getReturnCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->viewReasonCodes(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttSubAck{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->toAttributeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "}"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
