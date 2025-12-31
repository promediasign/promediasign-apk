.class public abstract Lorg/h2/table/Table;
.super Lorg/h2/schema/SchemaObjectBase;
.source "SourceFile"


# static fields
.field public static final TYPE_CACHED:I = 0x0

.field public static final TYPE_MEMORY:I = 0x1


# instance fields
.field private checkForeignKeyConstraints:Z

.field private final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field protected columns:[Lorg/h2/table/Column;

.field protected compareMode:Lorg/h2/value/CompareMode;

.field private constraints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field protected isHidden:Z

.field private volatile nullRow:Lorg/h2/result/Row;

.field private onCommitDrop:Z

.field private onCommitTruncate:Z

.field private final persistData:Z

.field private final persistIndexes:Z

.field private sequences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field private triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/TriggerObject;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/table/Table;->checkForeignKeyConstraints:Z

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/schema/SchemaObjectBase;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    iput-boolean p4, p0, Lorg/h2/table/Table;->persistIndexes:Z

    iput-boolean p5, p0, Lorg/h2/table/Table;->persistData:Z

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    return-void
.end method

.method private static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private fireConstraints(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    .locals 4

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->isBefore()Z

    move-result v3

    if-ne v3, p4, :cond_0

    invoke-virtual {v2, p1, p0, p2, p3}, Lorg/h2/constraint/Constraint;->checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/h2/schema/TriggerObject;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/h2/schema/TriggerObject;->fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static getIndexHints([Lorg/h2/table/TableFilter;I)Lorg/h2/table/IndexHints;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/h2/table/TableFilter;->getIndexHints()Lorg/h2/table/IndexHints;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static isIndexExcludedByHints(Lorg/h2/table/IndexHints;Lorg/h2/index/Index;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/table/IndexHints;->allowIndex(Lorg/h2/index/Index;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/engine/DbObject;",
            ">;",
            "Lorg/h2/engine/DbObject;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public addDependencies(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/Sequence;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/h2/expression/ExpressionVisitor;->getDependenciesVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lorg/h2/table/Column;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2, v0}, Lorg/h2/constraint/Constraint;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
.end method

.method public abstract addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
.end method

.method public addSequence(Lorg/h2/schema/Sequence;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    return-void
.end method

.method public addTrigger(Lorg/h2/schema/TriggerObject;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    return-void
.end method

.method public addView(Lorg/h2/table/TableView;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    return-void
.end method

.method public abstract canDrop()Z
.end method

.method public abstract canGetRowCount()Z
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canTruncate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Set<",
            "Lorg/h2/engine/Session;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract checkSupportAlter()V
.end method

.method public checkWritingAllowed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    return-void
.end method

.method public abstract close(Lorg/h2/engine/Session;)V
.end method

.method public commit(SLorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method public compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public doesColumnExist(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dropMultipleColumnsConstraintsAndIndexes(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    const v2, 0x15fe3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Column;

    iget-object v6, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v8, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/constraint/Constraint;

    invoke-virtual {v8, p0}, Lorg/h2/constraint/Constraint;->getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-ne v9, v4, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/index/Index;

    invoke-interface {v9}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v9, v6}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v10

    if-gez v10, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v9}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v4, :cond_7

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v9}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method public findPrimaryKey()Lorg/h2/index/Index;
    .locals 5

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public fire(Lorg/h2/engine/Session;IZ)V
    .locals 2

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/TriggerObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/schema/TriggerObject;->fire(Lorg/h2/engine/Session;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;->fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z

    if-nez p4, :cond_0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/table/Table;->fireConstraints(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    :cond_0
    return-void
.end method

.method public fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;->fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/h2/table/Table;->fireConstraints(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    return v0
.end method

.method public fireRow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/table/PlanItem;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-instance v3, Lorg/h2/table/PlanItem;

    invoke-direct {v3}, Lorg/h2/table/PlanItem;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/table/PlanItem;->setIndex(Lorg/h2/index/Index;)V

    invoke-virtual {v3}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide v4

    iput-wide v4, v3, Lorg/h2/table/PlanItem;->cost:D

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v5

    const-string v6, "Table      :     potential plan item cost {0} index {1}"

    if-eqz v5, :cond_0

    iget-wide v7, v3, Lorg/h2/table/PlanItem;->cost:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v7

    invoke-interface {v7}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v5, v8, v0

    aput-object v7, v8, v2

    invoke-virtual {v4, v6, v8}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static/range {p3 .. p4}, Lorg/h2/table/Table;->getIndexHints([Lorg/h2/table/TableFilter;I)Lorg/h2/table/IndexHints;

    move-result-object v7

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v14, 0x1

    :goto_0
    if-ge v14, v15, :cond_4

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lorg/h2/index/Index;

    invoke-static {v7, v13}, Lorg/h2/table/Table;->isIndexExcludedByHints(Lorg/h2/table/IndexHints;Lorg/h2/index/Index;)Z

    move-result v8

    if-eqz v8, :cond_1

    move/from16 v17, v14

    goto :goto_1

    :cond_1
    move-object v8, v13

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v16, v13

    move-object/from16 v13, p5

    move/from16 v17, v14

    move-object/from16 v14, p6

    invoke-interface/range {v8 .. v14}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide v8

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface/range {v16 .. v16}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v10, v12, v0

    aput-object v11, v12, v2

    invoke-virtual {v4, v6, v12}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide v10, v3, Lorg/h2/table/PlanItem;->cost:D

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    iput-wide v8, v3, Lorg/h2/table/PlanItem;->cost:D

    move-object/from16 v8, v16

    invoke-virtual {v3, v8}, Lorg/h2/table/PlanItem;->setIndex(Lorg/h2/index/Index;)V

    :cond_3
    :goto_1
    add-int/lit8 v14, v17, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public getCheckForeignKeyConstraints()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Table;->checkForeignKeyConstraints:Z

    return v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v1, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-ne v3, p0, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public getColumn(I)Lorg/h2/table/Column;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getColumn(Ljava/lang/String;)Lorg/h2/table/Column;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xa48a

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    return-object v0
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public getConstraints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

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

.method public getDefaultValue(Lorg/h2/engine/Session;Lorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 1

    invoke-virtual {p2}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/h2/table/Column;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDiskSpaceUsed()J
.end method

.method public getIndex(Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v0, 0xa480

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getIndexForColumn(Lorg/h2/table/Column;ZZ)Lorg/h2/index/Index;
    .locals 7

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/Index;

    if-eqz p2, :cond_0

    invoke-interface {v4}, Lorg/h2/index/Index;->canGetFirstOrLast()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {v4}, Lorg/h2/index/Index;->canFindNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4, p1}, Lorg/h2/index/Index;->isFirstColumn(Lorg/h2/table/Column;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v5

    array-length v5, v5

    invoke-interface {v4}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v6

    array-length v6, v6

    if-le v5, v6, :cond_3

    :cond_2
    move-object v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public abstract getIndexes()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxDataModificationId()J
.end method

.method public getNullRow()Lorg/h2/result/Row;
    .locals 3

    iget-object v0, p0, Lorg/h2/table/Table;->nullRow:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/Table;->nullRow:Lorg/h2/result/Row;

    :cond_0
    return-object v0
.end method

.method public getOnCommitDrop()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Table;->onCommitDrop:Z

    return v0
.end method

.method public getOnCommitTruncate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Table;->onCommitTruncate:Z

    return v0
.end method

.method public getPrimaryKey()Lorg/h2/index/Index;
    .locals 2

    invoke-virtual {p0}, Lorg/h2/table/Table;->findPrimaryKey()Lorg/h2/index/Index;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xa480

    const-string v1, "PRIMARY_KEY_"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getRowCount(Lorg/h2/engine/Session;)J
.end method

.method public abstract getRowCountApproximation()J
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
.end method

.method public getScanIndex(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/index/Index;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/index/Index;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object p1

    return-object p1
.end method

.method public abstract getTableType()Lorg/h2/table/TableType;
.end method

.method public getTemplateRow()Lorg/h2/result/Row;
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    new-array v1, v1, [Lorg/h2/value/Value;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/h2/result/SimpleRowValue;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    invoke-direct {p1, v0}, Lorg/h2/result/SimpleRowValue;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/h2/result/SimpleRow;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    invoke-direct {p1, v0}, Lorg/h2/result/SimpleRow;-><init>([Lorg/h2/value/Value;)V

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getUniqueIndex()Lorg/h2/index/Index;
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasSelectTrigger()Z
    .locals 2

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/TriggerObject;

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->isSelectTrigger()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isDeterministic()Z
.end method

.method public isGlobalTemporary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Table;->isHidden:Z

    return v0
.end method

.method public abstract isLockedExclusively()Z
.end method

.method public isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMVStore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPersistData()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Table;->persistData:Z

    return v0
.end method

.method public isPersistIndexes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Table;->persistIndexes:Z

    return v0
.end method

.method public isQueryComparable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract lock(Lorg/h2/engine/Session;ZZ)Z
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/TableView;

    iget-object v2, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/TriggerObject;

    iget-object v2, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    iget-object v2, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-ne v3, p0, :cond_3

    iget-object v3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, p1, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/Sequence;

    iget-object v2, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0, p0}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public removeConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public removeIndex(Lorg/h2/index/Index;)V
    .locals 4

    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    invoke-interface {p1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2, p2}, Lorg/h2/constraint/Constraint;->usesIndex(Lorg/h2/index/Index;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Lorg/h2/constraint/Constraint;->setIndexOwner(Lorg/h2/index/Index;)V

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, p2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_3
    return-void
.end method

.method public abstract removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
.end method

.method public final removeSequence(Lorg/h2/schema/Sequence;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public removeTrigger(Lorg/h2/schema/TriggerObject;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public removeView(Lorg/h2/table/TableView;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/h2/engine/DbObjectBase;->rename(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/constraint/Constraint;

    invoke-virtual {v1}, Lorg/h2/constraint/Constraint;->rebuild()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renameColumn(Lorg/h2/table/Column;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const p1, 0xa489

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lorg/h2/table/Column;->rename(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCheckForeignKeyConstraints(Lorg/h2/engine/Session;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    invoke-virtual {v0, p1}, Lorg/h2/constraint/Constraint;->checkExistingData(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lorg/h2/table/Table;->checkForeignKeyConstraints:Z

    return-void
.end method

.method public setColumns([Lorg/h2/table/Column;)V
    .locals 4

    iput-object p1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/h2/table/Column;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, p0, v0}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0xa489

    invoke-static {p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const p1, 0xc354

    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Table;->isHidden:Z

    return-void
.end method

.method public setOnCommitDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Table;->onCommitDrop:Z

    return-void
.end method

.method public setOnCommitTruncate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Table;->onCommitTruncate:Z

    return-void
.end method

.method public abstract truncate(Lorg/h2/engine/Session;)V
.end method

.method public abstract unlock(Lorg/h2/engine/Session;)V
.end method

.method public updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V
    .locals 6

    invoke-virtual {p2}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    move-result-object v0

    invoke-virtual {p3}, Lorg/h2/result/RowList;->reset()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v3

    const v4, 0x16013

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v2, 0x7f

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->checkCanceled()V

    :cond_0
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v3

    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    :try_start_0
    invoke-virtual {p0, p2, v3}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2, p0, v5, v3}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result p3

    if-ne p3, v4, :cond_1

    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    invoke-virtual {p2}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    invoke-virtual {p2}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    :cond_1
    throw p1

    :cond_2
    invoke-virtual {p3}, Lorg/h2/result/RowList;->reset()V

    :goto_1
    invoke-virtual {p3}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/2addr v2, v5

    and-int/lit8 v3, v2, 0x7f

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->checkCanceled()V

    :cond_3
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v3

    :try_start_1
    invoke-virtual {p0, p2, v3}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p2, p0, v1, v3}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result p3

    if-ne p3, v4, :cond_4

    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    invoke-virtual {p2}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    invoke-virtual {p2}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    :cond_4
    throw p1

    :cond_5
    return-void
.end method

.method public validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/h2/table/Column;->getComputed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lorg/h2/table/Column;->computeValue(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Lorg/h2/value/Value;

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, p1, v1}, Lorg/h2/table/Column;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    if-eq v2, v1, :cond_1

    invoke-interface {p2, v0, v2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
