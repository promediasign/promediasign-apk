.class public Lcom/sun/jna/internal/Cleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/internal/Cleaner$Cleanable;,
        Lcom/sun/jna/internal/Cleaner$CleanerRef;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sun/jna/internal/Cleaner;


# instance fields
.field private final cleanerThread:Ljava/lang/Thread;

.field private firstCleanable:Lcom/sun/jna/internal/Cleaner$CleanerRef;

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/jna/internal/Cleaner;

    invoke-direct {v0}, Lcom/sun/jna/internal/Cleaner;-><init>()V

    sput-object v0, Lcom/sun/jna/internal/Cleaner;->INSTANCE:Lcom/sun/jna/internal/Cleaner;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/internal/Cleaner;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/sun/jna/internal/Cleaner$1;

    invoke-direct {v0, p0}, Lcom/sun/jna/internal/Cleaner$1;-><init>(Lcom/sun/jna/internal/Cleaner;)V

    iput-object v0, p0, Lcom/sun/jna/internal/Cleaner;->cleanerThread:Ljava/lang/Thread;

    const-string v1, "JNA Cleaner"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/jna/internal/Cleaner;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/sun/jna/internal/Cleaner;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/jna/internal/Cleaner;Lcom/sun/jna/internal/Cleaner$CleanerRef;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/jna/internal/Cleaner;->remove(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized add(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Lcom/sun/jna/internal/Cleaner$CleanerRef;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner;->firstCleanable:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner;->firstCleanable:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->setNext(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner;->firstCleanable:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    invoke-virtual {v0, p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->setPrevious(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public static getCleaner()Lcom/sun/jna/internal/Cleaner;
    .locals 1

    sget-object v0, Lcom/sun/jna/internal/Cleaner;->INSTANCE:Lcom/sun/jna/internal/Cleaner;

    return-object v0
.end method

.method private declared-synchronized remove(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner;->firstCleanable:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/internal/Cleaner;->firstCleanable:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getPrevious()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getPrevious()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->setNext(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getPrevious()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->setPrevious(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getPrevious()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->setNext(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V

    invoke-virtual {p1, v0}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->setPrevious(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :goto_2
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/sun/jna/internal/Cleaner$Cleanable;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/jna/internal/Cleaner$CleanerRef;

    iget-object v1, p0, Lcom/sun/jna/internal/Cleaner;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/sun/jna/internal/Cleaner$CleanerRef;-><init>(Lcom/sun/jna/internal/Cleaner;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/sun/jna/internal/Cleaner;->add(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
