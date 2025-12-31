.class public Ludt/sender/FlowWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile consumed:I

.field private volatile isCheckout:Z

.field private volatile isEmpty:Z

.field private volatile isFull:Z

.field private final length:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final packets:[Ludt/packets/DataPacket;

.field private volatile produced:I

.field private volatile readPos:I

.field private volatile validEntries:I

.field private volatile writePos:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/sender/FlowWindow;->isEmpty:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ludt/sender/FlowWindow;->isFull:Z

    iput v1, p0, Ludt/sender/FlowWindow;->validEntries:I

    iput-boolean v1, p0, Ludt/sender/FlowWindow;->isCheckout:Z

    iput v1, p0, Ludt/sender/FlowWindow;->writePos:I

    const/4 v2, -0x1

    iput v2, p0, Ludt/sender/FlowWindow;->readPos:I

    iput v1, p0, Ludt/sender/FlowWindow;->consumed:I

    iput v1, p0, Ludt/sender/FlowWindow;->produced:I

    add-int/2addr p1, v0

    iput p1, p0, Ludt/sender/FlowWindow;->length:I

    new-array p1, p1, [Ludt/packets/DataPacket;

    iput-object p1, p0, Ludt/sender/FlowWindow;->packets:[Ludt/packets/DataPacket;

    :goto_0
    iget-object p1, p0, Ludt/sender/FlowWindow;->packets:[Ludt/packets/DataPacket;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Ludt/packets/DataPacket;

    invoke-direct {v2}, Ludt/packets/DataPacket;-><init>()V

    aput-object v2, p1, v1

    iget-object p1, p0, Ludt/sender/FlowWindow;->packets:[Ludt/packets/DataPacket;

    aget-object p1, p1, v1

    new-array v2, p2, [B

    invoke-virtual {p1, v2}, Ludt/packets/DataPacket;->setData([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public consumeData()Ludt/packets/DataPacket;
    .locals 4

    iget-object v0, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ludt/sender/FlowWindow;->isEmpty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Ludt/sender/FlowWindow;->readPos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ludt/sender/FlowWindow;->readPos:I

    iget-object v0, p0, Ludt/sender/FlowWindow;->packets:[Ludt/packets/DataPacket;

    iget v2, p0, Ludt/sender/FlowWindow;->readPos:I

    aget-object v0, v0, v2

    iget v2, p0, Ludt/sender/FlowWindow;->readPos:I

    iget v3, p0, Ludt/sender/FlowWindow;->length:I

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Ludt/sender/FlowWindow;->readPos:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget v2, p0, Ludt/sender/FlowWindow;->validEntries:I

    sub-int/2addr v2, v1

    iput v2, p0, Ludt/sender/FlowWindow;->validEntries:I

    iget v2, p0, Ludt/sender/FlowWindow;->validEntries:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Ludt/sender/FlowWindow;->isEmpty:Z

    iput-boolean v3, p0, Ludt/sender/FlowWindow;->isFull:Z

    iget v2, p0, Ludt/sender/FlowWindow;->consumed:I

    add-int/2addr v2, v1

    iput v2, p0, Ludt/sender/FlowWindow;->consumed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :goto_2
    iget-object v1, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getForProducer()Ludt/packets/DataPacket;
    .locals 2

    iget-object v0, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ludt/sender/FlowWindow;->isFull:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ludt/sender/FlowWindow;->isCheckout:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/sender/FlowWindow;->isCheckout:Z

    iget-object v0, p0, Ludt/sender/FlowWindow;->packets:[Ludt/packets/DataPacket;

    iget v1, p0, Ludt/sender/FlowWindow;->writePos:I

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v1, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public produce()V
    .locals 4

    iget-object v0, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ludt/sender/FlowWindow;->isCheckout:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ludt/sender/FlowWindow;->isCheckout:Z

    iget v1, p0, Ludt/sender/FlowWindow;->writePos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ludt/sender/FlowWindow;->writePos:I

    iget v1, p0, Ludt/sender/FlowWindow;->writePos:I

    iget v3, p0, Ludt/sender/FlowWindow;->length:I

    if-ne v1, v3, :cond_0

    iput v0, p0, Ludt/sender/FlowWindow;->writePos:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget v1, p0, Ludt/sender/FlowWindow;->validEntries:I

    add-int/2addr v1, v2

    iput v1, p0, Ludt/sender/FlowWindow;->validEntries:I

    iget v1, p0, Ludt/sender/FlowWindow;->validEntries:I

    iget v3, p0, Ludt/sender/FlowWindow;->length:I

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Ludt/sender/FlowWindow;->isFull:Z

    iput-boolean v0, p0, Ludt/sender/FlowWindow;->isEmpty:Z

    iget v0, p0, Ludt/sender/FlowWindow;->produced:I

    add-int/2addr v0, v2

    iput v0, p0, Ludt/sender/FlowWindow;->produced:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v1, p0, Ludt/sender/FlowWindow;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowWindow size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ludt/sender/FlowWindow;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " full="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ludt/sender/FlowWindow;->isFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " empty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ludt/sender/FlowWindow;->isEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " readPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ludt/sender/FlowWindow;->readPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " writePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ludt/sender/FlowWindow;->writePos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " consumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ludt/sender/FlowWindow;->consumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " produced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ludt/sender/FlowWindow;->produced:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
