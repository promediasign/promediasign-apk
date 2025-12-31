.class public Lcom/zaxxer/hikari/proxy/HikariPreparedStatementProxy;
.super Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Statement;
.implements Ljava/sql/Wrapper;
.implements Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)V

    return-void
.end method


# virtual methods
.method public addBatch()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->addBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public clearParameters()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V
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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public execute()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;->execute()Z

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

.method public execute(Ljava/lang/String;)Z
    .locals 0

    .line 2
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

    .line 3
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

    .line 4
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

    .line 5
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

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;->executeQuery()Ljava/sql/ResultSet;

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

    .line 2
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

.method public executeUpdate()I
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;->executeUpdate()I

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

.method public executeUpdate(Ljava/lang/String;)I
    .locals 0

    .line 2
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

    .line 3
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

    .line 4
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

    .line 5
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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

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

.method public getMoreResults()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

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

.method public getQueryTimeout()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public setArray(ILjava/sql/Array;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setArray(ILjava/sql/Array;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/sql/Blob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBoolean(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setByte(IB)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setByte(IB)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(I[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/sql/Clob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public setDate(ILjava/sql/Date;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDouble(ID)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDouble(ID)V
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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public setFloat(IF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setInt(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setLong(IJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V
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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNull(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNull(II)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setNull(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V
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

    check-cast v0, Ljava/sql/PreparedStatement;

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

    check-cast v0, Ljava/sql/PreparedStatement;

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

.method public setRef(ILjava/sql/Ref;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRef(ILjava/sql/Ref;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setShort(IS)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setURL(ILjava/net/URL;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/StatementProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
