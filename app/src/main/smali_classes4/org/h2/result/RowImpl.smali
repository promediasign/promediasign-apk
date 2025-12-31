.class public Lorg/h2/result/RowImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/Row;


# instance fields
.field private final data:[Lorg/h2/value/Value;

.field private deleted:Z

.field private key:J

.field private memory:I

.field private sessionId:I

.field private version:I


# direct methods
.method public constructor <init>([Lorg/h2/value/Value;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    iput p2, p0, Lorg/h2/result/RowImpl;->memory:I

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/result/RowImpl;->sessionId:I

    return-void
.end method

.method public getByteCount(Lorg/h2/store/Data;)I
    .locals 5

    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    return v0
.end method

.method public getCopy()Lorg/h2/result/Row;
    .locals 4

    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v1, v0

    new-array v1, v1, [Lorg/h2/value/Value;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/h2/result/RowImpl;

    iget v2, p0, Lorg/h2/result/RowImpl;->memory:I

    invoke-direct {v0, v1, v2}, Lorg/h2/result/RowImpl;-><init>([Lorg/h2/value/Value;I)V

    iget-wide v1, p0, Lorg/h2/result/RowImpl;->key:J

    iput-wide v1, v0, Lorg/h2/result/RowImpl;->key:J

    iget v1, p0, Lorg/h2/result/RowImpl;->version:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/h2/result/RowImpl;->version:I

    iget v1, p0, Lorg/h2/result/RowImpl;->sessionId:I

    iput v1, v0, Lorg/h2/result/RowImpl;->sessionId:I

    return-object v0
.end method

.method public getKey()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/result/RowImpl;->key:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 4

    iget v0, p0, Lorg/h2/result/RowImpl;->memory:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    if-eqz v0, :cond_2

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/h2/value/Value;->getMemory()I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x28

    :cond_3
    iput v1, p0, Lorg/h2/result/RowImpl;->memory:I

    return v1
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lorg/h2/result/RowImpl;->sessionId:I

    return v0
.end method

.method public getValue(I)Lorg/h2/value/Value;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lorg/h2/result/RowImpl;->key:J

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getValueList()[Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/h2/result/RowImpl;->version:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/RowImpl;->deleted:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/result/RowImpl;->deleted:Z

    return-void
.end method

.method public setKey(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/result/RowImpl;->key:J

    return-void
.end method

.method public setKeyAndVersion(Lorg/h2/result/SearchRow;)V
    .locals 2

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/result/RowImpl;->setKey(J)V

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/result/RowImpl;->setVersion(I)V

    return-void
.end method

.method public setSessionId(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/RowImpl;->sessionId:I

    return-void
.end method

.method public setValue(ILorg/h2/value/Value;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/result/RowImpl;->key:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/RowImpl;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "( /* key:"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/result/RowImpl;->getKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    iget v1, p0, Lorg/h2/result/RowImpl;->version:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " v:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/h2/result/RowImpl;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/h2/result/RowImpl;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " deleted"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    const-string v1, " */ "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_2

    const-string v4, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
