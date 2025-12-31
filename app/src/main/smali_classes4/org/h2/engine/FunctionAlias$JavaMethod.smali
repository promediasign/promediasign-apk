.class public Lorg/h2/engine/FunctionAlias$JavaMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/FunctionAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/engine/FunctionAlias$JavaMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataType:I

.field private hasConnectionParam:Z

.field private final id:I

.field private final method:Ljava/lang/reflect/Method;

.field private paramCount:I

.field private varArgClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private varArgs:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->id:I

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    iput v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-class v2, Ljava/sql/Connection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    :cond_0
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    if-lez v0, :cond_1

    array-length v0, p2

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/h2/engine/FunctionAlias;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgClass:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-virtual {p0, p1}, Lorg/h2/engine/FunctionAlias$JavaMethod;->compareTo(Lorg/h2/engine/FunctionAlias$JavaMethod;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/engine/FunctionAlias$JavaMethod;)I
    .locals 4

    .line 2
    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    iget-boolean v1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    iget v1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    if-eq v0, v1, :cond_2

    sub-int/2addr v0, v1

    return v0

    :cond_2
    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    iget-boolean v1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->id:I

    iget p1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->id:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getColumnClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    return v0
.end method

.method public getParameterCount()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;Z)Lorg/h2/value/Value;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    iget-object v4, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    new-array v6, v5, [Ljava/lang/Object;

    iget-boolean v7, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    if-lez v5, :cond_0

    invoke-virtual {v2, v3}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-boolean v10, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    if-eqz v10, :cond_1

    array-length v10, v0

    sub-int/2addr v10, v5

    add-int/2addr v10, v8

    iget-boolean v12, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    add-int/2addr v10, v12

    iget-object v12, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgClass:Ljava/lang/Class;

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v5, -0x1

    aput-object v10, v6, v12

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    array-length v12, v0

    const/4 v13, 0x0

    :goto_2
    const-class v14, Lorg/h2/value/Value;

    if-ge v13, v12, :cond_b

    iget-boolean v15, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    if-eqz v15, :cond_2

    array-length v15, v4

    sub-int/2addr v15, v8

    if-lt v7, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_3

    iget-object v11, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgClass:Ljava/lang/Class;

    goto :goto_4

    :cond_3
    aget-object v11, v4, v7

    :goto_4
    invoke-static {v11}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result v8

    aget-object v9, v0, v13

    invoke-virtual {v9, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v9

    invoke-virtual {v14, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v16, v4

    move-object v0, v9

    move/from16 v17, v12

    goto :goto_6

    :cond_4
    invoke-virtual {v9}, Lorg/h2/value/Value;->getType()I

    move-result v14

    const/16 v0, 0x11

    if-ne v14, v0, :cond_6

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v14, Ljava/lang/Object;

    if-eq v0, v14, :cond_6

    move-object v0, v9

    check-cast v0, Lorg/h2/value/ValueArray;

    invoke-virtual {v0}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    array-length v14, v0

    invoke-static {v8, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result v14

    move-object/from16 v16, v4

    move/from16 v17, v12

    const/4 v4, 0x0

    :goto_5
    array-length v12, v8

    if-ge v4, v12, :cond_5

    aget-object v12, v0, v4

    invoke-virtual {v12, v14}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    move-object v0, v9

    move-object v9, v8

    goto :goto_6

    :cond_6
    move-object/from16 v16, v4

    move/from16 v17, v12

    invoke-virtual {v9, v8}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v9

    move-object v9, v0

    move-object/from16 v0, v18

    :goto_6
    if-nez v9, :cond_8

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_7

    invoke-static {v11}, Lorg/h2/value/DataType;->getDefaultForPrimitiveType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_7

    :cond_7
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    :cond_8
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v8

    invoke-static {v8, v0, v11}, Lorg/h2/value/DataType;->convertTo(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    :cond_9
    :goto_7
    if-eqz v15, :cond_a

    sub-int v0, v7, v5

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-static {v10, v0, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    const/4 v4, 0x1

    aput-object v9, v6, v7

    :goto_8
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    move-object/from16 v4, v16

    move/from16 v12, v17

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v8, v0, Lorg/h2/engine/DbSettings;->defaultConnection:Z

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2, v9}, Lorg/h2/engine/Session;->setAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_c

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_9
    iget-object v0, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v8, :cond_d

    invoke-static {v3}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_d
    return-object v0

    :cond_e
    :try_start_2
    iget-object v3, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    check-cast v0, Lorg/h2/value/Value;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v8, :cond_f

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_f
    return-object v0

    :cond_10
    :try_start_3
    iget v3, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    invoke-static {v2, v0, v3}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object v0

    iget v3, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    invoke-virtual {v0, v3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v8, :cond_11

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_11
    return-object v0

    :goto_a
    :try_start_4
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_b
    new-instance v3, Lorg/h2/util/StatementBuilder;

    iget-object v10, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x28

    invoke-virtual {v3, v10}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :goto_c
    if-ge v9, v5, :cond_13

    aget-object v10, v6, v9

    const-string v11, ", "

    invoke-virtual {v3, v11}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v10, :cond_12

    const-string v10, "null"

    goto :goto_d

    :cond_12
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-virtual {v3, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_13
    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_e
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v8, :cond_14

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_14
    throw v0
.end method

.method public hasConnectionParam()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
