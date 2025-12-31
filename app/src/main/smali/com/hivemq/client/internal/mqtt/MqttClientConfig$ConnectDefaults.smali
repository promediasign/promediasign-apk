.class public Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectDefaults"
.end annotation


# static fields
.field private static final EMPTY:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;


# instance fields
.field final simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->EMPTY:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-object p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->EMPTY:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    return-object p0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)V

    return-object v0
.end method


# virtual methods
.method public getEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-object v0
.end method

.method public getWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
