.class public Lorg/h2/engine/FunctionAlias;
.super Lorg/h2/schema/SchemaObjectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/FunctionAlias$JavaMethod;
    }
.end annotation


# instance fields
.field private bufferResultSetToLocalTemp:Z

.field private className:Ljava/lang/String;

.field private deterministic:Z

.field private javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;

.field private methodName:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/FunctionAlias;->bufferResultSetToLocalTemp:Z

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/schema/SchemaObjectBase;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    return-void
.end method

.method private static getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Z)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lorg/h2/engine/FunctionAlias;->load()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    throw v0
.end method

.method public static isVarArgs(Ljava/lang/reflect/Method;)Z
    .locals 4

    const-string v0, "1.5"

    sget-object v1, Lorg/h2/engine/SysProperties;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isVarArgs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private declared-synchronized load()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/engine/FunctionAlias;->loadFromSource()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/h2/engine/FunctionAlias;->loadClass()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private loadClass()V
    .locals 9

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lorg/h2/engine/FunctionAlias;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    new-instance v5, Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-direct {v5, v4, v3}, Lorg/h2/engine/FunctionAlias$JavaMethod;-><init>(Ljava/lang/reflect/Method;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v7

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v8

    if-eq v7, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fd9

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/engine/FunctionAlias$JavaMethod;

    iput-object v0, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1601b

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private loadFromSource()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "org.h2.dynamic."

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getCompiler()Lorg/h2/util/SourceCompiler;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/h2/util/SourceCompiler;->setSource(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/h2/util/SourceCompiler;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v3, Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-direct {v3, v1, v0}, Lorg/h2/engine/FunctionAlias$JavaMethod;-><init>(Ljava/lang/reflect/Method;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/h2/engine/FunctionAlias$JavaMethod;

    aput-object v3, v1, v0

    iput-object v1, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const v3, 0xa410

    invoke-static {v3, v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_1
    throw v0

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static newInstance(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/engine/FunctionAlias;
    .locals 1

    new-instance v0, Lorg/h2/engine/FunctionAlias;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/engine/FunctionAlias;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;)V

    const/16 p0, 0x28

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    :cond_0
    const/16 p1, 0x2e

    invoke-virtual {p3, p1, p0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    iput-boolean p5, v0, Lorg/h2/engine/FunctionAlias;->bufferResultSetToLocalTemp:Z

    invoke-direct {v0, p4}, Lorg/h2/engine/FunctionAlias;->init(Z)V

    return-object v0

    :cond_1
    const p0, 0xa410

    invoke-static {p0, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static newInstanceFromSource(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/engine/FunctionAlias;
    .locals 1

    new-instance v0, Lorg/h2/engine/FunctionAlias;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/engine/FunctionAlias;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;)V

    iput-object p3, v0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    iput-boolean p5, v0, Lorg/h2/engine/FunctionAlias;->bufferResultSetToLocalTemp:Z

    invoke-direct {v0, p4}, Lorg/h2/engine/FunctionAlias;->init(Z)V

    return-object v0
.end method


# virtual methods
.method public checkRename()V
    .locals 1

    const-string v0, "RENAME"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public findJavaMethod([Lorg/h2/expression/Expression;)Lorg/h2/engine/FunctionAlias$JavaMethod;
    .locals 6

    invoke-direct {p0}, Lorg/h2/engine/FunctionAlias;->load()V

    array-length p1, p1

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v3}, Lorg/h2/engine/FunctionAlias$JavaMethod;->isVarArgs()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, p1, 0x1

    if-gt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameter count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x15fe7

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE FORCE ALIAS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/FunctionAlias;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/h2/engine/FunctionAlias;->deterministic:Z

    if-eqz v1, :cond_0

    const-string v1, " DETERMINISTIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lorg/h2/engine/FunctionAlias;->bufferResultSetToLocalTemp:Z

    if-nez v1, :cond_1

    const-string v1, " NOBUFFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, " FOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
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

    const-string v1, "DROP ALIAS IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/FunctionAlias;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaMethods()[Lorg/h2/engine/FunctionAlias$JavaMethod;
    .locals 1

    invoke-direct {p0}, Lorg/h2/engine/FunctionAlias;->load()V

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->functionsInSchema:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public isBufferResultSetToLocalTemp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias;->bufferResultSetToLocalTemp:Z

    return v0
.end method

.method public isDeterministic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias;->deterministic:Z

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

    iput-object p1, p0, Lorg/h2/engine/FunctionAlias;->className:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/engine/FunctionAlias;->methodName:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/engine/FunctionAlias;->javaMethods:[Lorg/h2/engine/FunctionAlias$JavaMethod;

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

.method public setDeterministic(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/FunctionAlias;->deterministic:Z

    return-void
.end method
