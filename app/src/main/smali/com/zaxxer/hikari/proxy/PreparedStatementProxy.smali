.class public abstract Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;
.super Lcom/zaxxer/hikari/proxy/StatementProxy;
.source "SourceFile"

# interfaces
.implements Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/StatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    move-result v0

    return v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-static {v1, v0}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyResultSet(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public executeUpdate()I
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    return v0
.end method
