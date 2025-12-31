.class Lorg/h2/store/SessionState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

.field public lastCommitLog:I

.field public lastCommitPos:I

.field public sessionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCommitted(II)Z
    .locals 3

    iget v0, p0, Lorg/h2/store/SessionState;->lastCommitLog:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    if-le v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget p1, p0, Lorg/h2/store/SessionState;->lastCommitPos:I

    if-lt p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sessionId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/store/SessionState;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " log:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/SessionState;->lastCommitLog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/SessionState;->lastCommitPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inDoubt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
