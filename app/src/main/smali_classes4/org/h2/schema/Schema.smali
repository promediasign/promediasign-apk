.class public Lorg/h2/schema/Schema;
.super Lorg/h2/engine/DbObjectBase;
.source "SourceFile"


# instance fields
.field private final constants:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private final constraints:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private final functions:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/FunctionAlias;",
            ">;"
        }
    .end annotation
.end field

.field private final indexes:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lorg/h2/engine/User;

.field private final sequences:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field private final system:Z

.field private tableEngineParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final temporaryUniqueNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final triggers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/TriggerObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->sequences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->triggers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->constants:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->functions:Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/engine/DbObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    iput-object p4, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    iput-boolean p5, p0, Lorg/h2/schema/Schema;->system:Z

    return-void
.end method

.method private getMap(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/h2/schema/Schema;->constants:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object p1, p0, Lorg/h2/schema/Schema;->functions:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/h2/schema/Schema;->triggers:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/h2/schema/Schema;->sequences:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    :goto_0
    return-object p1
.end method

.method private getUniqueName(Lorg/h2/engine/DbObject;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/DbObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/h2/schema/SchemaObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {p3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v4

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(Lorg/h2/schema/SchemaObject;)V
    .locals 4

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const-string v1, "wrong schema"

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "object already exists: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-void
.end method

.method public canDrop()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/schema/Schema;->system:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    iget-object v2, p1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_1
    iput-object p0, p1, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    iget-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-object v2, v1, Lorg/h2/engine/DbSettings;->defaultTableEngine:Ljava/lang/String;

    if-eqz v2, :cond_2

    iput-object v2, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v1, :cond_3

    const-class v1, Lorg/h2/mvstore/db/MVTableEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/h2/schema/Schema;->tableEngineParams:Ljava/util/ArrayList;

    iput-object v2, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    :cond_4
    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Database;->getTableEngine(Ljava/lang/String;)Lorg/h2/api/TableEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/h2/api/TableEngine;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    new-instance v1, Lorg/h2/table/RegularTable;

    invoke-direct {v1, p1}, Lorg/h2/table/RegularTable;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createTableLink(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/table/TableLink;
    .locals 15

    move-object v13, p0

    iget-object v14, v13, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    monitor-enter v14

    :try_start_0
    new-instance v0, Lorg/h2/table/TableLink;

    move-object v1, v0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/h2/table/TableLink;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    monitor-exit v14

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/Constant;

    return-object p1
.end method

.method public findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTableConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/FunctionAlias;

    return-object p1
.end method

.method public findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTableIndex(Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/Sequence;

    return-object p1
.end method

.method public findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findTrigger(Ljava/lang/String;)Lorg/h2/schema/TriggerObject;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/TriggerObject;

    return-object p1
.end method

.method public freeUniqueName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAll(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAllTablesAndViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/Constant;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x16003

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fc9

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/h2/schema/Schema;->system:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE SCHEMA IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AUTHORIZATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xa480

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getOwner()Lorg/h2/engine/User;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    return-object v0
.end method

.method public getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/Sequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fb4

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getTableEngineParams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/schema/Schema;->tableEngineParams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0xa476

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTableOrViewByName(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/Table;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getUniqueConstraintName(Lorg/h2/engine/Session;Lorg/h2/table/Table;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTableConstraints()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    :goto_0
    const-string v0, "CONSTRAINT_"

    invoke-direct {p0, p2, p1, v0}, Lorg/h2/schema/Schema;->getUniqueName(Lorg/h2/engine/DbObject;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTableIndexes()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-direct {p0, p2, p1, p3}, Lorg/h2/schema/Schema;->getUniqueName(Lorg/h2/engine/DbObject;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/h2/schema/SchemaObject;)V
    .locals 3

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object p1

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-void
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/schema/TriggerObject;

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/constraint/Constraint;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v3, v3}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, p1, v3}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_1

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/index/Index;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_3

    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/schema/Sequence;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/schema/Constant;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_5

    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/engine/FunctionAlias;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public rename(Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V
    .locals 3

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/Map;

    move-result-object v0

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "object already exists: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->checkRename()V

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/h2/engine/DbObject;->rename(Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-void
.end method

.method public setTableEngineParams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/schema/Schema;->tableEngineParams:Ljava/util/ArrayList;

    return-void
.end method
