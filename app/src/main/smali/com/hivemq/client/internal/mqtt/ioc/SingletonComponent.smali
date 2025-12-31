.class public interface abstract Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;->create()Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;->INSTANCE:Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;

    return-void
.end method


# virtual methods
.method public abstract clientComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;
.end method
