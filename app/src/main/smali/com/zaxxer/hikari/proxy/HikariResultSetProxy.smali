.class public Lcom/zaxxer/hikari/proxy/HikariResultSetProxy;
.super Lcom/zaxxer/hikari/proxy/ResultSetProxy;
.source "SourceFile"

# interfaces
.implements Ljava/sql/ResultSet;
.implements Ljava/sql/Wrapper;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)V

    return-void
.end method


# virtual methods
.method public absolute(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->absolute(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public afterLast()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->afterLast()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public beforeFirst()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->beforeFirst()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public cancelRowUpdates()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->cancelRowUpdates()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public deleteRow()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->deleteRow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public first()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->first()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getArray(I)Ljava/sql/Array;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getArray(Ljava/lang/String;)Ljava/sql/Array;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBoolean(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getByte(I)B

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getByte(Ljava/lang/String;)B

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(I)[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getClob(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConcurrency()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getConcurrency()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getCursorName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFetchDirection()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getFetchDirection()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchSize()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getFetchSize()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getHoldability()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getHoldability()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getNClob(Ljava/lang/String;)Ljava/sql/NClob;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getNString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getRef(I)Ljava/sql/Ref;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getRef(Ljava/lang/String;)Ljava/sql/Ref;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRow()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getRow()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getRowId(Ljava/lang/String;)Ljava/sql/RowId;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getShort(I)S

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getType()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getType()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getURL(I)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getUnicodeStream(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public insertRow()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->insertRow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isAfterLast()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->isAfterLast()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->isBeforeFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isFirst()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->isFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isLast()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->isLast()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public last()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->last()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToCurrentRow()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->moveToCurrentRow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->moveToInsertRow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public next()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public previous()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->previous()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public refreshRow()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->refreshRow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public relative(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->relative(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public rowDeleted()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->rowDeleted()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->rowInserted()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->rowUpdated()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setFetchDirection(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->setFetchDirection(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->setFetchSize(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateArray(ILjava/sql/Array;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateAsciiStream(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBinaryStream(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBlob(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateBlob(ILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBlob(ILjava/sql/Blob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBoolean(IZ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBoolean(IZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateByte(IB)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateByte(IB)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateByte(Ljava/lang/String;B)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBytes(I[B)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBytes(I[B)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateBytes(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateCharacterStream(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateCharacterStream(ILjava/io/Reader;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateCharacterStream(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateClob(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateClob(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateClob(ILjava/sql/Clob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateDate(ILjava/sql/Date;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDouble(ID)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateDouble(ID)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateDouble(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateFloat(IF)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateFloat(IF)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateInt(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateInt(II)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateLong(IJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateLong(IJ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNCharacterStream(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNClob(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateNClob(ILjava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNClob(ILjava/sql/NClob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/ResultSet;->updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateNString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNull(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->updateNull(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->updateNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateObject(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateObject(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/ResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateRef(ILjava/sql/Ref;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRow()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->updateRow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateRowId(ILjava/sql/RowId;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateShort(IS)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateShort(IS)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateShort(Ljava/lang/String;S)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateTime(ILjava/sql/Time;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateTimestamp(ILjava/sql/Timestamp;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public wasNull()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
