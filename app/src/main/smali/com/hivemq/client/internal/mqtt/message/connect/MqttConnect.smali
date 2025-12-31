.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# instance fields
.field private final cleanStart:Z

.field private final keepAlive:I

.field private final restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

.field private final sessionExpiryInterval:J

.field private final simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v10, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    sget-object v5, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    const/4 v8, 0x0

    sget-object v9, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    sput-object v10, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-void
.end method

.method public constructor <init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0

    invoke-direct {p0, p9}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    iput-boolean p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    iput-wide p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-void
.end method


# virtual methods
.method public createStateful(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    iget-wide v5, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeepAlive()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    return v0
.end method

.method public getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-object v0
.end method

.method public getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    return-object v0
.end method

.method public getSessionExpiryInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    return-wide v0
.end method

.method public final synthetic getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 1
    invoke-static {p0}, LH0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->partialHashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x4cf

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0x4d5

    .line 20
    .line 21
    :goto_0
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    .line 25
    .line 26
    const/16 v3, 0x20

    .line 27
    .line 28
    ushr-long v3, v1, v3

    .line 29
    .line 30
    xor-long/2addr v1, v3

    .line 31
    long-to-int v2, v1

    .line 32
    add-int/2addr v0, v2

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 45
    .line 46
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    mul-int/lit16 v0, v0, 0x3c1

    .line 52
    .line 53
    return v0
.end method

.method public isCleanStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    return v0
.end method

.method public setDefaults(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 12

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v11, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    if-nez p1, :cond_1

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object v7, p1

    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v11

    :cond_2
    :goto_1
    return-object p0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "keepAlive="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", cleanStart="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", sessionExpiryInterval="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 34
    .line 35
    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 36
    .line 37
    const-string v3, ""

    .line 38
    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    .line 41
    move-object v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, ", restrictions="

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    move-object v1, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, ", simpleAuth="

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_1
    invoke-static {v0, v1, v3, v3}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, ", "

    .line 88
    .line 89
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttConnect{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
