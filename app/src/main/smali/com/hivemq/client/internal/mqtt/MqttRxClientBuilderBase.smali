.class public abstract Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.super Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

.field private identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    return-void
.end method

.method private buildConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->z()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private buildDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->z()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildClientConfig(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 10

    new-instance v9, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v7

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;-><init>(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    return-object v9
.end method

.method public buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public identifier(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object p1
.end method

.method public serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object p1
.end method

.method public sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method
