.class public Lorg/h2/store/PageStoreInDoubtTransaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/store/InDoubtTransaction;


# instance fields
.field private final pos:I

.field private final sessionId:I

.field private state:I

.field private final store:Lorg/h2/store/PageStore;

.field private final transactionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/store/PageStore;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->store:Lorg/h2/store/PageStore;

    iput p2, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->sessionId:I

    iput p3, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->pos:I

    iput-object p4, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->transactionName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "ROLLBACK"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "COMMIT"

    return-object v0

    :cond_2
    const-string v0, "IN_DOUBT"

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->transactionName:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->sessionId:I

    iget v2, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->pos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/store/PageStore;->setInDoubtTransactionState(IIZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->sessionId:I

    iget v3, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/store/PageStore;->setInDoubtTransactionState(IIZ)V

    :goto_0
    iput p1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    return-void
.end method
