.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;->DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;

    return-void
.end method
