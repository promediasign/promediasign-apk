.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    }
.end annotation


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessCounter:J

.field private fullOverwriteCost:B

.field private fullOverwriteTries:B

.field private lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

.field private final map:Lcom/hivemq/client/internal/util/collections/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overwriteCost:B

.field private overwriteTries:B

.field private final topicAliasMaximum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/Index;-><init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    iput-byte v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topic:Ljava/lang/String;

    return-object p0
.end method

.method private swapNewer(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;J)V
    .locals 8

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    invoke-virtual {p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    goto :goto_2

    :cond_1
    iget v4, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-nez v4, :cond_4

    iget v4, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-eqz v4, :cond_4

    iget-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    iget-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    if-ge v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    const/16 v6, 0x7e

    if-ge v5, v6, :cond_3

    rsub-int/lit8 v6, v5, 0x7e

    const/4 v7, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    :cond_3
    iget v5, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    invoke-virtual {p1, v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->setNewTopicAlias(I)V

    iput v4, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    :cond_4
    iget-object v4, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object p1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    const/4 v5, 0x0

    if-nez v1, :cond_5

    iput-object v5, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto :goto_1

    :cond_5
    iput-object v0, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    :goto_1
    if-nez v4, :cond_6

    iput-object v5, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    :goto_2
    return-void

    :cond_6
    iput-object v4, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object p1, v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getTopicAliasMaximum()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    return v0
.end method

.method public onPublish(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)I
    .locals 10

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->accessCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->accessCounter:J

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v2, p1}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->access(J)V

    iget p1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-eqz p1, :cond_3

    iget-byte p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    if-le p1, v3, :cond_0

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    :cond_0
    iget-byte p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    if-le p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    :cond_1
    iget-object p1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-nez p1, :cond_3

    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    goto :goto_0

    :cond_2
    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    :cond_3
    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->swapNewer(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;J)V

    iget p1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    return p1

    :cond_4
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    invoke-direct {v2, p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;-><init>(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result p1

    iget v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    add-int/lit8 v5, v5, 0x4

    if-ge p1, v5, :cond_6

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result p1

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    if-ge p1, v3, :cond_5

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->setNewTopicAlias(I)V

    :cond_5
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {p1, v2}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-eqz p1, :cond_b

    iput-object p1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    :goto_1
    iput-object v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    invoke-virtual {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v5

    invoke-virtual {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gtz v9, :cond_7

    return v4

    :cond_7
    iget-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    iget-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    if-ge v5, v6, :cond_8

    return v4

    :cond_8
    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    const/16 v4, 0x7e

    if-ge v6, v4, :cond_9

    rsub-int/lit8 v4, v6, 0x7e

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-byte v3, v3

    add-int/2addr v6, v3

    int-to-byte v3, v6

    iput-byte v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    :cond_9
    iget v3, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-eqz v3, :cond_a

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->setNewTopicAlias(I)V

    :cond_a
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    iget-object v4, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/util/collections/Index;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v3, v2}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object p1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    :goto_2
    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto :goto_0

    :cond_0
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
