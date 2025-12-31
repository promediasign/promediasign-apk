.class Lcom/zaxxer/hikari/pool/GlobalPoolLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FAUX_LOCK:Lcom/zaxxer/hikari/pool/GlobalPoolLock;


# instance fields
.field private final acquisitionSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zaxxer/hikari/pool/GlobalPoolLock$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zaxxer/hikari/pool/GlobalPoolLock$1;-><init>(Z)V

    sput-object v0, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->FAUX_LOCK:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x2710

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->acquisitionSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->acquisitionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->acquisitionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
