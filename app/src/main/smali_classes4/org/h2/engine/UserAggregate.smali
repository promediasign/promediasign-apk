.class public Lorg/h2/engine/UserAggregate;
.super Lorg/h2/engine/DbObjectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/UserAggregate$AggregateWrapper;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private javaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/engine/DbObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    iput-object p4, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    if-nez p5, :cond_0

    invoke-virtual {p0}, Lorg/h2/engine/UserAggregate;->getInstance()Lorg/h2/api/Aggregate;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRename()V
    .locals 1

    const-string v0, "AGGREGATE"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE FORCE AGGREGATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP AGGREGATE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lorg/h2/api/Aggregate;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/h2/api/Aggregate;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/h2/api/Aggregate;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/h2/engine/UserAggregate$AggregateWrapper;

    check-cast v0, Lorg/h2/api/AggregateFunction;

    invoke-direct {v1, v0}, Lorg/h2/engine/UserAggregate$AggregateWrapper;-><init>(Lorg/h2/api/AggregateFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :goto_1
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getJavaClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public declared-synchronized removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
