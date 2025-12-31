.class public Lorg/h2/result/LocalResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/ResultInterface;
.implements Lorg/h2/result/ResultTarget;


# instance fields
.field private closed:Z

.field private containsLobs:Z

.field private currentRow:[Lorg/h2/value/Value;

.field private diskOffset:I

.field private distinct:Z

.field private distinctRows:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private expressions:[Lorg/h2/expression/Expression;

.field private external:Lorg/h2/result/ResultExternal;

.field private limit:I

.field private maxMemoryRows:I

.field private offset:I

.field private randomAccess:Z

.field private rowCount:I

.field private rowId:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private session:Lorg/h2/engine/Session;

.field private sort:Lorg/h2/result/SortOrder;

.field private visibleColumnCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/result/LocalResult;->limit:I

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/result/LocalResult;->limit:I

    iput-object p1, p0, Lorg/h2/result/LocalResult;->session:Lorg/h2/engine/Session;

    const v1, 0x7fffffff

    if-nez p1, :cond_1

    :cond_0
    iput v1, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    move-result p1

    iput p1, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    iput p3, p0, Lorg/h2/result/LocalResult;->visibleColumnCount:I

    iput v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    iput-object p2, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    return-void
.end method

.method private addRowsToDisk()V
    .locals 2

    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/h2/result/ResultExternal;->addRows(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lorg/h2/result/LocalResult;->rowCount:I

    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private applyLimit()V
    .locals 3

    iget v0, p0, Lorg/h2/result/LocalResult;->limit:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/h2/result/LocalResult;->limit:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    iget v0, p0, Lorg/h2/result/LocalResult;->limit:I

    :goto_0
    iput v0, p0, Lorg/h2/result/LocalResult;->rowCount:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private applyOffset()V
    .locals 3

    iget v0, p0, Lorg/h2/result/LocalResult;->offset:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iput v2, p0, Lorg/h2/result/LocalResult;->rowCount:I

    goto :goto_2

    :cond_1
    iget v0, p0, Lorg/h2/result/LocalResult;->offset:I

    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    :goto_1
    sub-int/2addr v1, v0

    iput v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iput v0, p0, Lorg/h2/result/LocalResult;->diskOffset:I

    goto :goto_1

    :goto_2
    return-void
.end method

.method private cloneLobs([Lorg/h2/value/Value;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/h2/value/Value;->copyToResult()Lorg/h2/value/Value;

    move-result-object v2

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/result/LocalResult;->containsLobs:Z

    iget-object v1, p0, Lorg/h2/result/LocalResult;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->addTemporaryLob(Lorg/h2/value/Value;)V

    aput-object v2, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getArrayOfVisible([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;
    .locals 3

    array-length v0, p1

    iget v1, p0, Lorg/h2/result/LocalResult;->visibleColumnCount:I

    if-le v0, v1, :cond_0

    new-array v0, v1, [Lorg/h2/value/Value;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    invoke-static {p1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    return-object p1
.end method

.method public static read(Lorg/h2/engine/Session;Ljava/sql/ResultSet;I)Lorg/h2/result/LocalResult;
    .locals 8

    invoke-static {p0, p1}, Lorg/h2/expression/Expression;->getExpressionColumns(Lorg/h2/engine/Session;Ljava/sql/ResultSet;)[Lorg/h2/expression/Expression;

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lorg/h2/result/LocalResult;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_0

    if-ge v3, p2, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v1, [Lorg/h2/value/Value;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    invoke-virtual {v2, v5}, Lorg/h2/result/LocalResult;->getColumnType(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, p1, v7, v6}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v6

    aput-object v6, v4, v5

    move v5, v7

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->done()V

    return-object v2

    :goto_2
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public addRow([Lorg/h2/value/Value;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/h2/result/LocalResult;->cloneLobs([Lorg/h2/value/Value;)V

    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->distinct:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/result/LocalResult;->getArrayOfVisible([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v2, v0, p1}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1}, Lorg/h2/util/HashBase;->size()I

    move-result p1

    iput p1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    iget v0, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    if-le p1, v0, :cond_1

    new-instance p1, Lorg/h2/result/ResultTempTable;

    iget-object v0, p0, Lorg/h2/result/LocalResult;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    invoke-direct {p1, v0, v2, v1, v3}, Lorg/h2/result/ResultTempTable;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZLorg/h2/result/SortOrder;)V

    iput-object p1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->values()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/h2/result/ResultExternal;->addRows(Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    invoke-interface {v0, p1}, Lorg/h2/result/ResultExternal;->addRow([Lorg/h2/value/Value;)I

    move-result p1

    iput p1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    iget-object p1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-nez p1, :cond_3

    new-instance p1, Lorg/h2/result/ResultTempTable;

    iget-object v0, p0, Lorg/h2/result/LocalResult;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/h2/result/ResultTempTable;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZLorg/h2/result/SortOrder;)V

    iput-object p1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    :cond_3
    invoke-direct {p0}, Lorg/h2/result/LocalResult;->addRowsToDisk()V

    :cond_4
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/result/LocalResult;->closed:Z

    :cond_0
    return-void
.end method

.method public containsDistinct([Lorg/h2/value/Value;)Z
    .locals 4

    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/h2/result/ResultExternal;->contains([Lorg/h2/value/Value;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/value/Value;

    invoke-direct {p0, v1}, Lorg/h2/result/LocalResult;->getArrayOfVisible([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public createShallowCopy(Lorg/h2/engine/Session;)Lorg/h2/result/LocalResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lorg/h2/result/LocalResult;->rowCount:I

    if-ge v0, v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->containsLobs:Z

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->createShallowCopy()Lorg/h2/result/ResultExternal;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    :cond_3
    move-object v0, v1

    :cond_4
    new-instance v2, Lorg/h2/result/LocalResult;

    invoke-direct {v2}, Lorg/h2/result/LocalResult;-><init>()V

    iget v3, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    iput v3, v2, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    iput-object p1, v2, Lorg/h2/result/LocalResult;->session:Lorg/h2/engine/Session;

    iget p1, p0, Lorg/h2/result/LocalResult;->visibleColumnCount:I

    iput p1, v2, Lorg/h2/result/LocalResult;->visibleColumnCount:I

    iget-object p1, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    iput-object p1, v2, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    const/4 p1, -0x1

    iput p1, v2, Lorg/h2/result/LocalResult;->rowId:I

    iget v3, p0, Lorg/h2/result/LocalResult;->rowCount:I

    iput v3, v2, Lorg/h2/result/LocalResult;->rowCount:I

    iget-object v3, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    iput-object v3, v2, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    iget-object v3, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    iput-object v3, v2, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    iget-boolean v3, p0, Lorg/h2/result/LocalResult;->distinct:Z

    iput-boolean v3, v2, Lorg/h2/result/LocalResult;->distinct:Z

    iget-boolean v3, p0, Lorg/h2/result/LocalResult;->randomAccess:Z

    iput-boolean v3, v2, Lorg/h2/result/LocalResult;->randomAccess:Z

    iput-object v1, v2, Lorg/h2/result/LocalResult;->currentRow:[Lorg/h2/value/Value;

    const/4 v1, 0x0

    iput v1, v2, Lorg/h2/result/LocalResult;->offset:I

    iput p1, v2, Lorg/h2/result/LocalResult;->limit:I

    iput-object v0, v2, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    iget p1, p0, Lorg/h2/result/LocalResult;->diskOffset:I

    iput p1, v2, Lorg/h2/result/LocalResult;->diskOffset:I

    return-object v2
.end method

.method public bridge synthetic createShallowCopy(Lorg/h2/engine/Session;)Lorg/h2/result/ResultInterface;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/result/LocalResult;->createShallowCopy(Lorg/h2/engine/Session;)Lorg/h2/result/LocalResult;

    move-result-object p1

    return-object p1
.end method

.method public currentRow()[Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->currentRow:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public done()V
    .locals 7

    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->distinct:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->values()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->reset()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->next()[Lorg/h2/value/Value;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->close()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-nez v2, :cond_3

    new-instance v2, Lorg/h2/result/ResultTempTable;

    iget-object v3, p0, Lorg/h2/result/LocalResult;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/h2/result/ResultTempTable;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZLorg/h2/result/SortOrder;)V

    iput-object v2, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    :cond_3
    iget-object v2, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    iget-object v2, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lorg/h2/result/ResultExternal;->addRows(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/h2/result/LocalResult;->addRowsToDisk()V

    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->done()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_9

    iget v1, p0, Lorg/h2/result/LocalResult;->offset:I

    if-gtz v1, :cond_7

    iget v2, p0, Lorg/h2/result/LocalResult;->limit:I

    if-lez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/h2/result/SortOrder;->sort(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    iget v3, p0, Lorg/h2/result/LocalResult;->limit:I

    if-gez v3, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_8
    invoke-virtual {v0, v2, v1, v3}, Lorg/h2/result/SortOrder;->sort(Ljava/util/ArrayList;II)V

    :cond_9
    :goto_3
    invoke-direct {p0}, Lorg/h2/result/LocalResult;->applyOffset()V

    invoke-direct {p0}, Lorg/h2/result/LocalResult;->applyLimit()V

    invoke-virtual {p0}, Lorg/h2/result/LocalResult;->reset()V

    return-void
.end method

.method public getAlias(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnPrecision(I)J
    .locals 2

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnScale(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getScale()I

    move-result p1

    return p1
.end method

.method public getColumnType(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getType()I

    move-result p1

    return p1
.end method

.method public getDisplaySize(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result p1

    return p1
.end method

.method public getFetchSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNullable(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getNullable()I

    move-result p1

    return p1
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lorg/h2/result/LocalResult;->rowCount:I

    return v0
.end method

.method public getRowId()I
    .locals 1

    iget v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSchemaName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibleColumnCount()I
    .locals 1

    iget v0, p0, Lorg/h2/result/LocalResult;->visibleColumnCount:I

    return v0
.end method

.method public hasNext()Z
    .locals 3

    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->closed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isAfterLast()Z
    .locals 2

    iget v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoIncrement(I)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->isAutoIncrement()Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->closed:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needToClose()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Z
    .locals 3

    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->closed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/h2/result/ResultExternal;->next()[Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->currentRow:[Lorg/h2/value/Value;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/result/LocalResult;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/result/LocalResult;->currentRow:[Lorg/h2/value/Value;

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->currentRow:[Lorg/h2/value/Value;

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeDistinct([Lorg/h2/value/Value;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/LocalResult;->distinct:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/ValueHashMap;->remove(Lorg/h2/value/Value;)V

    iget-object p1, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1}, Lorg/h2/util/HashBase;->size()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    invoke-interface {v0, p1}, Lorg/h2/result/ResultExternal;->removeRow([Lorg/h2/value/Value;)I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/result/LocalResult;->rowId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->currentRow:[Lorg/h2/value/Value;

    iget-object v0, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/result/ResultExternal;->reset()V

    iget v0, p0, Lorg/h2/result/LocalResult;->diskOffset:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/result/LocalResult;->diskOffset:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/h2/result/LocalResult;->external:Lorg/h2/result/ResultExternal;

    invoke-interface {v1}, Lorg/h2/result/ResultExternal;->next()[Lorg/h2/value/Value;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDistinct()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/result/LocalResult;->distinct:Z

    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/LocalResult;->distinctRows:Lorg/h2/util/ValueHashMap;

    return-void
.end method

.method public setFetchSize(I)V
    .locals 0

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/LocalResult;->limit:I

    return-void
.end method

.method public setMaxMemoryRows(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/LocalResult;->maxMemoryRows:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/LocalResult;->offset:I

    return-void
.end method

.method public setRandomAccess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/result/LocalResult;->randomAccess:Z

    return-void
.end method

.method public setSortOrder(Lorg/h2/result/SortOrder;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/result/LocalResult;->sort:Lorg/h2/result/SortOrder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " columns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/LocalResult;->visibleColumnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/LocalResult;->rowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/LocalResult;->rowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
