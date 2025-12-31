.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# instance fields
.field private encodedLength:I

.field private final userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->z()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-void
.end method

.method public static build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private calculateEncodedLength()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v2, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asList()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public encodedLength()I
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->calculateEncodedLength()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
