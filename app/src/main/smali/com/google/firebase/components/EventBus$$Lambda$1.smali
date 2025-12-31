.class final synthetic Lcom/google/firebase/components/EventBus$$Lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/util/Map$Entry;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/util/Map$Entry;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/EventBus$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/EventBus$$Lambda$1;-><init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/components/EventBus;->lambda$publish$0(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    return-void
.end method
