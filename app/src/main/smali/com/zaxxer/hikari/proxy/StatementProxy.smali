.class public abstract Lcom/zaxxer/hikari/proxy/StatementProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Statement;


# instance fields
.field protected final connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

.field protected final delegate:Ljava/sql/Statement;

.field private isClosed:Z


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    iput-object p2, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    return-void
.end method


# virtual methods
.method public final checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->isClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->isClosed:Z

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->untrackStatement(Ljava/sql/Statement;)V

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v1, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public executeBatch()[I
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->executeBatch()[I

    move-result-object v0

    return-object v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-static {v0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyResultSet(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[I)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    return-object v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-static {v1, v0}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyResultSet(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/StatementProxy;->delegate:Ljava/sql/Statement;

    .line 13
    .line 14
    instance-of v1, v0, Ljava/sql/Wrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    .line 24
    .line 25
    const-string v1, "Wrapped statement is not an instance of "

    .line 26
    .line 27
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
