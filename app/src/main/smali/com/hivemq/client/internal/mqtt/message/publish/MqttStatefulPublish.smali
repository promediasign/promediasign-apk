.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# instance fields
.field private final dup:Z

.field private final subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

.field private final topicAlias:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/a;->b()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;I)V

    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->dup:Z

    iput p4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    return-void
.end method


# virtual methods
.method public getSubscriptionIdentifiers()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    return-object v0
.end method

.method public getTopicAlias()I
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public isDup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->dup:Z

    return v0
.end method

.method public isNewTopicAlias()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->dup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topicAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionIdentifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttStatefulPublish{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
