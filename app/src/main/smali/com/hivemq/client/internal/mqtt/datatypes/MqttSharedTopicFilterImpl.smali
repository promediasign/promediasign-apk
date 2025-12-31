.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# static fields
.field private static final SHARE_PREFIX_LENGTH:I = 0x7


# instance fields
.field private filterByteStart:I

.field private filterCharStart:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>([BI)V

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    return-void
.end method

.method private static getShareName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isShared(Ljava/lang/String;)Z
    .locals 1

    .line 2
    const-string v0, "$share/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isShared([B)Z
    .locals 4

    .line 3
    array-length v0, p0

    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    if-ge v0, v1, :cond_2

    aget-byte v1, p0, v0

    const-string v3, "$share/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static ofInternal(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 3

    .line 1
    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getShareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameNoSingleLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getShareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameNoMultiLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->validateWildcards(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;-><init>(Ljava/lang/String;II)V

    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Topic filter must be at least one character long."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Share name must be at least one character long."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofInternal([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 4

    .line 2
    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    aget-byte v1, p0, v0

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0x23

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    :goto_2
    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    if-eq v0, v1, :cond_6

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->validateWildcards([BI)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    return-object v2

    :cond_5
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;-><init>([BII)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static shareNameNoMultiLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Share name ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain multi level wildcard (#), found at index "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static shareNameNoSingleLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Share name ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain single level wildcard (+), found at index "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFilterByteStart()I
    .locals 3

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->indexOf([BIB)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    return v0
.end method

.method public isShared()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
