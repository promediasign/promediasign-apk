.class public final Lio/reactivex/internal/schedulers/TrampolineScheduler;
.super Lio/reactivex/Scheduler;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lio/reactivex/internal/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;->INSTANCE:Lio/reactivex/internal/schedulers/TrampolineScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    return-void
.end method

.method public static instance()Lio/reactivex/internal/schedulers/TrampolineScheduler;
    .locals 1

    sget-object v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;->INSTANCE:Lio/reactivex/internal/schedulers/TrampolineScheduler;

    return-object v0
.end method
