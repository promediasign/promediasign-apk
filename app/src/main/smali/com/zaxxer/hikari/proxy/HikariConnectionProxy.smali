.class public Lcom/zaxxer/hikari/proxy/HikariConnectionProxy;
.super Lcom/zaxxer/hikari/proxy/ConnectionProxy;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Connection;
.implements Ljava/sql/Wrapper;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;-><init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)V

    return-void
.end method


# virtual methods
.method public clearWarnings()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public commit()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createBlob()Ljava/sql/Blob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createClob()Ljava/sql/Clob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createNClob()Ljava/sql/NClob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createSQLXML()Ljava/sql/SQLXML;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->createStatement(III)Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAutoCommit()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getHoldability()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getHoldability()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getTransactionIsolation()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getTypeMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isReadOnly()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isValid(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->isValid(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 0

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->releaseSavepoint(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public rollback()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->rollback(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAutoCommit(Z)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->setCatalog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setClientInfo(Ljava/util/Properties;)V

    return-void
.end method

.method public setHoldability(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setHoldability(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setReadOnly(Z)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->setSavepoint()Ljava/sql/Savepoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTransactionIsolation(I)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->setTransactionIsolation(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setTypeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
