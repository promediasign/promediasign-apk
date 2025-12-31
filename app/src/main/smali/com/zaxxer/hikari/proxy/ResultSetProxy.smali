.class public abstract Lcom/zaxxer/hikari/proxy/ResultSetProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/ResultSet;


# instance fields
.field protected final connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

.field protected final delegate:Ljava/sql/ResultSet;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/ResultSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    iput-object p2, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    return-void
.end method


# virtual methods
.method public final checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object p1

    return-object p1
.end method

.method public deleteRow()V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->deleteRow()V

    return-void
.end method

.method public insertRow()V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->insertRow()V

    return-void
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
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

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
    iget-object p1, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

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
    const-string v1, "Wrapped ResultSet is not an instance of "

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

.method public updateRow()V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->connection:Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->markCommitStateDirty()V

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ResultSetProxy;->delegate:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->updateRow()V

    return-void
.end method
