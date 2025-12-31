.class public Lcom/zaxxer/hikari/proxy/HikariStatementProxy;
.super Lcom/zaxxer/hikari/proxy/StatementProxy;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Statement;
.implements Ljava/sql/Wrapper;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)V

    return-void
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->addBatch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public cancel()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearBatch()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->execute(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;->execute(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;->execute(Ljava/lang/String;[I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;->execute(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->executeBatch()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->executeUpdate(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;->executeUpdate(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;->executeUpdate(Ljava/lang/String;[I)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;->executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchDirection()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchDirection()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchSize()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMaxFieldSize()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxFieldSize()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMaxRows()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMoreResults()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMoreResults(I)Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->getMoreResults(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getQueryTimeout()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getQueryTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetConcurrency()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetHoldability()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetHoldability()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetType()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUpdateCount()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isPoolable()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setCursorName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setEscapeProcessing(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchDirection(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchDirection(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchSize(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setMaxFieldSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxFieldSize(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setMaxRows(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxRows(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setPoolable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setQueryTimeout(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setQueryTimeout(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
