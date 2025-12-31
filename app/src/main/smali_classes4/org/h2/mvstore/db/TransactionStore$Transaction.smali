.class public Lorg/h2/mvstore/db/TransactionStore$Transaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/TransactionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final STATUS_CLOSED:I = 0x0

.field public static final STATUS_COMMITTING:I = 0x3

.field public static final STATUS_OPEN:I = 0x1

.field public static final STATUS_PREPARED:I = 0x2


# instance fields
.field logId:J

.field private name:Ljava/lang/String;

.field private status:I

.field final store:Lorg/h2/mvstore/db/TransactionStore;

.field final transactionId:I


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/TransactionStore;IILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iput p2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    iput p3, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    iput-object p4, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->name:Ljava/lang/String;

    iput-wide p5, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-void
.end method


# virtual methods
.method public checkNotClosed()V
    .locals 3

    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "Transaction is closed"

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public commit()V
    .locals 3

    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->commit(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)V

    return-void
.end method

.method public getChanges(J)Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Lorg/h2/mvstore/db/TransactionStore$Change;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/TransactionStore;->getChanges(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    return v0
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/h2/mvstore/db/TransactionStore;->log(Lorg/h2/mvstore/db/TransactionStore$Transaction;JILjava/lang/Object;Ljava/lang/Object;)V

    iget-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-void
.end method

.method public logUndo()V
    .locals 5

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->logUndo(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)V

    return-void
.end method

.method public openMap(Ljava/lang/String;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method public openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/type/DataType;",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/db/TransactionStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result p2

    new-instance p3, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;-><init>(Lorg/h2/mvstore/db/TransactionStore$Transaction;Lorg/h2/mvstore/MVMap;I)V

    return-object p3
.end method

.method public openMap(Lorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/MVMap<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;)",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v0

    new-instance v1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;-><init>(Lorg/h2/mvstore/db/TransactionStore$Transaction;Lorg/h2/mvstore/MVMap;I)V

    return-object v1
.end method

.method public prepare()V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/db/TransactionStore;->storeTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void
.end method

.method public removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/TransactionStore;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    return-void
.end method

.method public rollback()V
    .locals 6

    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/TransactionStore;->rollbackTo(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)V

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/db/TransactionStore;->endTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void
.end method

.method public rollbackToSavepoint(J)V
    .locals 6

    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/TransactionStore;->rollbackTo(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)V

    iput-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->name:Ljava/lang/String;

    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {p1, p0}, Lorg/h2/mvstore/db/TransactionStore;->storeTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void
.end method

.method public setSavepoint()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-wide v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
