.class public abstract Lcom/zaxxer/hikari/proxy/ProxyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/proxy/HikariCallableStatementProxy;

    invoke-direct {v0, p0, p1}, Lcom/zaxxer/hikari/proxy/HikariCallableStatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)V

    return-object v0
.end method

.method public static getProxyConnection(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)Lcom/zaxxer/hikari/proxy/IHikariConnectionProxy;
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/proxy/HikariConnectionProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zaxxer/hikari/proxy/HikariConnectionProxy;-><init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)V

    return-object v0
.end method

.method public static getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/proxy/HikariPreparedStatementProxy;

    invoke-direct {v0, p0, p1}, Lcom/zaxxer/hikari/proxy/HikariPreparedStatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)V

    return-object v0
.end method

.method public static getProxyResultSet(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)Ljava/sql/ResultSet;
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/proxy/HikariResultSetProxy;

    invoke-direct {v0, p0, p1}, Lcom/zaxxer/hikari/proxy/HikariResultSetProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)V

    return-object v0
.end method

.method public static getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/proxy/HikariStatementProxy;

    invoke-direct {v0, p0, p1}, Lcom/zaxxer/hikari/proxy/HikariStatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)V

    return-object v0
.end method
