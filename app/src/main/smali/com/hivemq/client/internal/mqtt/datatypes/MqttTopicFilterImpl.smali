.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# instance fields
.field final wildcardFlags:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 2

    .line 1
    const-string v0, "Topic filter"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->isShared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->ofInternal(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->validateWildcards(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-direct {v1, p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 3

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->isShared([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->ofInternal([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->validateWildcards([BI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-direct {v1, p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>([BI)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static validateWildcards(Ljava/lang/String;I)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    const/16 v7, 0x23

    const-string v8, "Topic filter ["

    const/16 v9, 0x2f

    if-eqz v4, :cond_7

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v4, v1, :cond_4

    if-eq v4, v11, :cond_3

    if-eq v4, v10, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v9, :cond_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains misplaced wildcard characters. Single level wildcard (+) at index "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    const-string p0, " must be followed by a topic level separator."

    .line 1
    invoke-static {p0, v2, v3}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains misplaced wildcard characters. Multi level wildcard (#) must be the last character."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eq v5, v7, :cond_6

    if-eq v5, v6, :cond_5

    if-eq v5, v9, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    or-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    goto :goto_2

    :cond_6
    or-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    goto :goto_2

    :cond_7
    if-eq v5, v6, :cond_9

    if-eq v5, v7, :cond_9

    if-ne v5, v9, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains misplaced wildcard characters. Wildcard ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ") at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must follow a topic level separator."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return v3
.end method

.method public static validateWildcards([BI)I
    .locals 11

    .line 6
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    array-length v4, p0

    if-ge p1, v4, :cond_a

    aget-byte v4, p0, p1

    const/16 v5, 0x2b

    const/16 v6, 0x23

    const/4 v7, -0x1

    const/16 v8, 0x2f

    if-eqz v3, :cond_6

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v3, v1, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v9, :cond_0

    goto :goto_2

    :cond_0
    if-eq v4, v8, :cond_1

    return v7

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    return v7

    :cond_3
    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    if-eq v4, v8, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    or-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    goto :goto_2

    :cond_5
    or-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    goto :goto_2

    :cond_6
    if-eq v4, v5, :cond_9

    if-ne v4, v6, :cond_7

    goto :goto_3

    :cond_7
    if-ne v4, v8, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    return v7

    :cond_a
    return v2
.end method


# virtual methods
.method public containsMultiLevelWildcard()Z
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFilterByteStart()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefix()[B
    .locals 3

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isShared()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
