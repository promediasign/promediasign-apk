.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private access:J

.field higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

.field lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

.field final topic:Ljava/lang/String;

.field topicAlias:I

.field private used:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topic:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->used:J

    iput-wide p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->access:J

    return-void
.end method


# virtual methods
.method public access(J)V
    .locals 4

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->used:J

    iput-wide p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->access:J

    return-void
.end method

.method public priority(J)J
    .locals 4

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->access:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x8

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->used:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public setNewTopicAlias(I)V
    .locals 1

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{topic=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", alias="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ", new "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", used = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->used:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", access = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->access:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
