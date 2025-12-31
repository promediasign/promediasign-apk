.class public Lorg/h2/schema/TriggerObject;
.super Lorg/h2/schema/SchemaObjectBase;
.source "SourceFile"


# static fields
.field public static final DEFAULT_QUEUE_SIZE:I = 0x400


# instance fields
.field private before:Z

.field private insteadOf:Z

.field private noWait:Z

.field private onRollback:Z

.field private queueSize:I

.field private rowBased:Z

.field private table:Lorg/h2/table/Table;

.field private triggerCallback:Lorg/h2/api/Trigger;

.field private triggerClassName:Ljava/lang/String;

.field private triggerSource:Ljava/lang/String;

.field private typeMask:I


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    const/16 v0, 0xc

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/schema/SchemaObjectBase;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    iput-object p4, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {p4}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/DbObjectBase;->setTemporary(Z)V

    return-void
.end method

.method private static convertToObjectList(Lorg/h2/result/Row;)[Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private declared-synchronized load()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v3

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->loadFromSource()Lorg/h2/api/Trigger;

    move-result-object v0

    :goto_0
    move-object v2, v0

    check-cast v2, Lorg/h2/api/Trigger;

    iput-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lorg/h2/schema/TriggerObject;->before:Z

    iget v8, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    invoke-interface/range {v2 .. v8}, Lorg/h2/api/Trigger;->init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "..source.."

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0x15fbb

    invoke-static {v2, v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadFromSource()Lorg/h2/api/Trigger;
    .locals 4

    const-string v0, "org.h2.dynamic.trigger."

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getCompiler()Lorg/h2/util/SourceCompiler;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/h2/util/SourceCompiler;->setSource(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/h2/util/SourceCompiler;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/Trigger;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No parameters are allowed for a trigger"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0xa410

    invoke-static {v3, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_1
    throw v0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private setTriggerAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    iput-object p2, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->load()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    throw p1
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/api/Trigger;->close()V

    :cond_0
    return-void
.end method

.method public fire(Lorg/h2/engine/Session;IZ)V
    .locals 7

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-ne v0, p3, :cond_7

    iget p3, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/2addr p3, p2

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->load()V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v0

    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    move-result p3

    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-interface {v4, v0, v3, v3}, Lorg/h2/api/Trigger;->fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->setLastTriggerIdentity(Lorg/h2/value/Value;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    :goto_0
    if-eq p2, v1, :cond_3

    invoke-virtual {p1, p3}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "..source.."

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const v5, 0x15fbc

    invoke-static {v5, v0, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->setLastTriggerIdentity(Lorg/h2/value/Value;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    :goto_2
    if-eq p2, v1, :cond_6

    invoke-virtual {p1, p3}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    :cond_6
    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z
    .locals 7

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-eq v0, p4, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p5, :cond_1

    iget-boolean p4, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z

    if-nez p4, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->load()V

    iget p4, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/4 p5, 0x1

    :cond_3
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    if-nez p5, :cond_5

    return v1

    :cond_5
    :goto_1
    invoke-static {p2}, Lorg/h2/schema/TriggerObject;->convertToObjectList(Lorg/h2/result/Row;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3}, Lorg/h2/schema/TriggerObject;->convertToObjectList(Lorg/h2/result/Row;)[Ljava/lang/Object;

    move-result-object p4

    iget-boolean p5, p0, Lorg/h2/schema/TriggerObject;->before:Z

    const/4 v2, 0x0

    if-eqz p5, :cond_6

    if-eqz p4, :cond_6

    array-length p5, p4

    new-array p5, p5, [Ljava/lang/Object;

    array-length v3, p4

    invoke-static {p4, v1, p5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_6
    move-object p5, v2

    :goto_2
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v3

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v4

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    move-result v0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    iget-object v6, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-interface {v6, v3, p2, p4}, Lorg/h2/api/Trigger;->fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p5, :cond_8

    :goto_3
    array-length p2, p4

    if-ge v1, p2, :cond_8

    aget-object p2, p4, v1

    aget-object v3, p5, v1

    if-eq p2, v3, :cond_7

    const/4 v3, -0x1

    invoke-static {p1, p2, v3}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-interface {p3, v1, p2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_9

    :catch_0
    move-exception p2

    goto :goto_7

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object p2

    if-eqz p2, :cond_9

    :goto_5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastTriggerIdentity(Lorg/h2/value/Value;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v5}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    :goto_6
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    goto :goto_8

    :goto_7
    :try_start_1
    iget-boolean p3, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_5

    :goto_8
    iget-boolean p1, p0, Lorg/h2/schema/TriggerObject;->insteadOf:Z

    return p1

    :cond_a
    :try_start_2
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_9
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastTriggerIdentity()Lorg/h2/value/Value;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastTriggerIdentity(Lorg/h2/value/Value;)V

    goto :goto_a

    :cond_b
    invoke-virtual {p1, v5}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    :goto_a
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    throw p2

    :cond_c
    :goto_b
    return v1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/schema/TriggerObject;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE FORCE TRIGGER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/h2/schema/TriggerObject;->insteadOf:Z

    if-eqz p2, :cond_0

    const-string p2, " INSTEAD OF "

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-eqz p2, :cond_1

    const-string p2, " BEFORE "

    goto :goto_0

    :cond_1
    const-string p2, " AFTER "

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getTypeNameList()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ON "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    if-eqz p1, :cond_2

    const-string p1, " FOR EACH ROW"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean p1, p0, Lorg/h2/schema/TriggerObject;->noWait:Z

    if-eqz p1, :cond_3

    const-string p1, " NOWAIT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string p1, " QUEUE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, " CALL "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    const-string p1, " AS "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueSize()I
    .locals 1

    iget v0, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    return v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getTriggerClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTypeNameList()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x1

    const-string v2, ", "

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_2
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    iget-boolean v1, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "ROLLBACK"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBefore()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    return v0
.end method

.method public isNoWait()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->noWait:Z

    return v0
.end method

.method public isSelectTrigger()Z
    .locals 1

    iget v0, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeTrigger(Lorg/h2/schema/TriggerObject;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/h2/api/Trigger;->remove()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public setBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->before:Z

    return-void
.end method

.method public setInsteadOf(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->insteadOf:Z

    return-void
.end method

.method public setNoWait(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->noWait:Z

    return-void
.end method

.method public setOnRollback(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z

    return-void
.end method

.method public setQueueSize(I)V
    .locals 0

    iput p1, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    return-void
.end method

.method public setRowBased(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    return-void
.end method

.method public setTriggerClassName(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/h2/schema/TriggerObject;->setTriggerAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTriggerSource(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/h2/schema/TriggerObject;->setTriggerAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTypeMask(I)V
    .locals 0

    iput p1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    return-void
.end method
