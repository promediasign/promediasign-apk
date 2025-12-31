.class public abstract Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/netty/bootstrap/Bootstrap;",
        ">;"
    }
.end annotation


# direct methods
.method public static provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;
    .locals 1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;->provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/bootstrap/Bootstrap;

    return-object p0
.end method
