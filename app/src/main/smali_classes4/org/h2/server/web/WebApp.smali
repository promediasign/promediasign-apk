.class public Lorg/h2/server/web/WebApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/web/WebApp$IndexInfo;
    }
.end annotation


# instance fields
.field protected attributes:Ljava/util/Properties;

.field protected cache:Z

.field protected headerLanguage:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field private profiler:Lorg/h2/util/Profiler;

.field protected final server:Lorg/h2/server/web/WebServer;

.field protected session:Lorg/h2/server/web/WebSession;

.field protected stop:Z


# direct methods
.method public constructor <init>(Lorg/h2/server/web/WebServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    return-void
.end method

.method private static addColumns(ZLorg/h2/bnf/context/DbTableOrView;Ljava/lang/StringBuilder;IZLjava/lang/StringBuilder;)I
    .locals 6

    invoke-virtual {p1}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/server/web/WebApp;->escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1

    const-string v3, ", 1, 1"

    goto :goto_1

    :cond_1
    const-string v3, ", 2, 2"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setNode("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \'column\', \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'javascript:ins(\\\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\\')\');\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    if-eqz p0, :cond_2

    if-eqz p4, :cond_2

    const-string v3, ", 2, 2, \'type\', \'"

    .line 1
    invoke-static {v2, v5, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', null);\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto :goto_2

    :cond_2
    move p3, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return p3
.end method

.method private static addDatabaseMetaData(Lorg/h2/tools/SimpleResultSet;Ljava/sql/DatabaseMetaData;)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "meta."

    const-class v3, Ljava/sql/DatabaseMetaData;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v4, Lorg/h2/server/web/WebApp$2;

    invoke-direct {v4}, Lorg/h2/server/web/WebApp$2;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v5

    aput-object v8, v10, v1

    invoke-virtual {p0, v10}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_2

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v5

    aput-object v8, v9, v1

    invoke-virtual {p0, v9}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v5

    aput-object v8, v9, v1

    invoke-virtual {p0, v9}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    :cond_0
    :goto_3
    add-int/2addr v6, v1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static addIndexes(ZLjava/sql/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p2

    :try_start_0
    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "INDEX_NAME"

    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/web/WebApp$IndexInfo;

    const-string v1, "COLUMN_NAME"

    if-nez v0, :cond_5

    const-string v0, "TYPE"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string v2, " (${text.tree.hashed})"

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz p3, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lorg/h2/server/web/WebApp$IndexInfo;

    invoke-direct {v0}, Lorg/h2/server/web/WebApp$IndexInfo;-><init>()V

    iput-object p3, v0, Lorg/h2/server/web/WebApp$IndexInfo;->name:Ljava/lang/String;

    const-string v3, "NON_UNIQUE"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "${text.tree.nonUnique}"

    goto :goto_2

    :cond_4
    const-string v3, "${text.tree.unique}"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/server/web/WebApp$IndexInfo;->type:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_a

    const-string p1, ", 2, 1"

    if-eqz p0, :cond_7

    const-string p3, ", 1, 1"

    goto :goto_3

    :cond_7
    move-object p3, p1

    :goto_3
    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    const-string p1, ", 3, 1"

    :goto_4
    if-eqz p0, :cond_9

    const-string p0, ", 3, 2"

    goto :goto_5

    :cond_9
    const-string p0, ", 4, 2"

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", \'index_az\', \'${text.tree.indexes}\', null);\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p5, p5, 0x1

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/h2/server/web/WebApp$IndexInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \'index\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lorg/h2/server/web/WebApp$IndexInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', null);\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \'type\', \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lorg/h2/server/web/WebApp$IndexInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p5, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    invoke-static {p3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p5, p5, 0x3

    goto :goto_6

    :catch_0
    :cond_a
    return p5
.end method

.method private addTablesAndViews(Lorg/h2/bnf/context/DbSchema;ZLjava/lang/StringBuilder;I)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    if-nez v0, :cond_0

    return p4

    :cond_0
    iget-object v2, v1, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v9

    iget-object v2, v1, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v10

    xor-int/lit8 v2, p2, 0x1

    const/4 v12, 0x1

    if-nez p2, :cond_2

    iget-boolean v3, v0, Lorg/h2/bnf/context/DbSchema;->isSystem:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v13, 0x1

    :goto_1
    const-string v3, ", "

    .line 1
    invoke-static {v2, v3, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v13, :cond_3

    .line 2
    const-string v5, "1"

    goto :goto_2

    :cond_3
    const-string v5, "2"

    .line 3
    :goto_2
    invoke-static {v5, v3, v4}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v2, v12

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 2, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v7

    if-nez v7, :cond_4

    return p4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/bnf/context/DbContents;->isOracle()Z

    move-result v16

    array-length v2, v7

    sget v3, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_TABLES_LIST_INDEXES:I

    if-ge v2, v3, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    :goto_3
    array-length v6, v7

    move/from16 v5, p4

    const/4 v4, 0x0

    :goto_4
    const-string v3, ");\n"

    const-string v2, "\', "

    const-string v11, "\', \'"

    const-string v12, "addTable(\'"

    const-string v1, "\\\',true)\');\n"

    move-object/from16 v19, v15

    const-string v15, "\', \'javascript:ins(\\\'"

    move-object/from16 v20, v9

    const-string v9, "."

    move-object/from16 p4, v3

    const-string v3, "setNode("

    if-ge v4, v6, :cond_b

    aget-object v21, v7, v4

    invoke-virtual/range {v21 .. v21}, Lorg/h2/bnf/context/DbTableOrView;->isView()Z

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v4

    move/from16 v24, v6

    move-object/from16 v25, v7

    :goto_5
    move/from16 v23, v13

    goto/16 :goto_8

    :cond_6
    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v21}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v2

    move/from16 v23, v4

    if-nez p2, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v6

    iget-object v6, v0, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    .line 5
    invoke-static {v4, v6, v9, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    move/from16 v24, v6

    .line 6
    :goto_6
    invoke-static {v2}, Lorg/h2/server/web/WebApp;->escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'table\', \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v5, 0x1

    if-nez p2, :cond_9

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    move v5, v1

    move-object/from16 v25, v7

    move/from16 v22, v23

    goto :goto_5

    :cond_9
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v22

    move/from16 v2, p2

    move-object/from16 v6, p4

    move-object/from16 v3, v21

    move/from16 v22, v23

    move-object/from16 v4, p3

    move/from16 v23, v13

    move v13, v5

    move v5, v1

    move-object v1, v6

    move/from16 v6, v17

    move-object/from16 v25, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->addColumns(ZLorg/h2/bnf/context/DbTableOrView;Ljava/lang/StringBuilder;IZLjava/lang/StringBuilder;)I

    move-result v7

    if-nez v16, :cond_a

    if-eqz v17, :cond_a

    invoke-virtual/range {v21 .. v21}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    move/from16 v2, p2

    move-object v3, v10

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->addIndexes(ZLjava/sql/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)I

    move-result v7

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    :goto_8
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move/from16 v13, v23

    move/from16 v6, v24

    move-object/from16 v7, v25

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v7, p4

    move-object v6, v2

    move v13, v5

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v10

    array-length v5, v10

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_12

    aget-object v16, v10, v4

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbTableOrView;->isView()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 p4, v1

    move/from16 v18, v4

    move/from16 v22, v5

    move-object v1, v6

    move-object/from16 v23, v9

    move-object/from16 v4, v20

    move-object/from16 v20, v3

    move-object v9, v7

    goto/16 :goto_f

    :cond_c
    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbTableOrView;->getSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    iget-object v4, v4, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    .line 7
    invoke-static {v0, v4, v9, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_d
    move/from16 v18, v4

    .line 8
    :goto_a
    invoke-static {v2}, Lorg/h2/server/web/WebApp;->escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \'view\', \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v13, 0x1

    if-eqz p2, :cond_11

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p2

    move-object v4, v3

    move-object/from16 v3, v16

    move-object/from16 p4, v1

    move-object v1, v4

    move-object/from16 v4, p3

    move/from16 v22, v5

    move v5, v0

    move-object v0, v6

    move/from16 v6, v17

    move-object/from16 v23, v9

    move-object v9, v7

    move-object/from16 v7, v21

    invoke-static/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->addColumns(ZLorg/h2/bnf/context/DbTableOrView;Ljava/lang/StringBuilder;IZLjava/lang/StringBuilder;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME=?"

    move-object/from16 v4, v20

    invoke-interface {v4, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v6, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "SQL"

    invoke-interface {v5, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    const-string v1, " \'type\', \'"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', null);\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :cond_e
    move-object/from16 v20, v1

    :goto_b
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    goto :goto_e

    :goto_c
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_f

    :try_start_2
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_d
    throw v2

    :cond_10
    move-object/from16 v4, v20

    move-object/from16 v20, v1

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    move v13, v2

    goto :goto_f

    :cond_11
    move-object/from16 p4, v1

    move/from16 v22, v5

    move-object v1, v6

    move-object/from16 v23, v9

    move-object/from16 v4, v20

    move-object/from16 v20, v3

    move-object v9, v7

    move v13, v0

    :goto_f
    add-int/lit8 v0, v18, 0x1

    move-object v6, v1

    move-object v7, v9

    move-object/from16 v3, v20

    move/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v1, p4

    move-object/from16 v20, v4

    move v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :cond_12
    return v13
.end method

.method private admin()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v3}, Lorg/h2/server/web/WebServer;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "port"

    invoke-virtual {v0, v3, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allowOthers"

    invoke-virtual {v0, v2, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1}, Lorg/h2/server/web/WebServer;->getSSL()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssl"

    invoke-virtual {v0, v2, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1}, Lorg/h2/server/web/WebServer;->getSessions()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "sessions"

    invoke-virtual {v0, v2, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "admin.jsp"

    return-object v0
.end method

.method private adminSave()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "port"

    invoke-virtual {v1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "webPort"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/web/WebServer;->setPort(I)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "allowOthers"

    invoke-virtual {v1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "webAllowOthers"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/web/WebServer;->setAllowOthers(Z)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "webSSL"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/web/WebServer;->setSSL(Z)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->admin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adminStartTranslate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v0, v0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->startTranslate(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "translationFile"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "helpTranslate.jsp"

    return-object v0
.end method

.method private autoCompleteList()Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "#"

    const-string v2, "+"

    const-string v3, "autoCompleteList.jsp"

    const-string v4, ";"

    iget-object v5, v1, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v6, "query"

    invoke-virtual {v5, v6}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, " "

    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    move-object v9, v5

    :goto_1
    new-instance v11, Lorg/h2/util/ScriptReader;

    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v11, v7}, Lorg/h2/util/ScriptReader;->setSkipRemarks(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, ""

    move-object v12, v9

    :goto_2
    :try_start_2
    invoke-virtual {v11}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_f

    invoke-virtual {v11}, Lorg/h2/util/ScriptReader;->isInsideRemark()Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, "1#(Newline)#\n"

    if-eqz v13, :cond_3

    :try_start_3
    invoke-virtual {v11}, Lorg/h2/util/ScriptReader;->isBlockRemark()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1#(End Remark)# */\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x20

    if-lez v11, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-gt v11, v13, :cond_4

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    :cond_5
    iget-object v11, v1, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v11}, Lorg/h2/server/web/WebSession;->getBnf()Lorg/h2/bnf/Bnf;

    move-result-object v11

    if-nez v11, :cond_6

    return-object v3

    :cond_6
    invoke-virtual {v11, v12}, Lorg/h2/bnf/Bnf;->getNextTokenList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_7

    const/16 v12, 0x2e

    if-eq v7, v12, :cond_7

    if-lt v7, v13, :cond_7

    const/16 v12, 0x27

    if-eq v7, v12, :cond_7

    const/16 v12, 0x22

    if-eq v7, v12, :cond_7

    move-object v7, v10

    goto :goto_5

    :cond_7
    move-object v7, v9

    :goto_5
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x2

    if-le v9, v11, :cond_8

    :goto_7
    move-object/from16 v9, v16

    move-object/from16 v11, v17

    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v6, :cond_9

    invoke-static {v9}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_9
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "."

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_a
    invoke-static {v9}, Lorg/h2/util/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v10}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13}, Lorg/h2/util/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2, v10}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v12, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "|"

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    iget-object v2, v1, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v4, "autoCompleteList"

    invoke-virtual {v2, v4, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :cond_f
    move-object v12, v13

    goto/16 :goto_2

    :goto_a
    iget-object v2, v1, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :goto_b
    return-object v3
.end method

.method private editResult()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/h2/server/web/WebSession;->result:Ljava/sql/ResultSet;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    .line 6
    .line 7
    const-string v2, "row"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    .line 18
    .line 19
    const-string v3, "op"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-ne v2, v4, :cond_4

    .line 32
    .line 33
    if-gez v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-eqz v4, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->moveToInsertRow()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->absolute(I)Z

    .line 46
    .line 47
    .line 48
    :goto_1
    const/4 v2, 0x0

    .line 49
    :goto_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v5}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ge v2, v5, :cond_2

    .line 58
    .line 59
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v7, "r"

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v7, "c"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-direct {p0, v5, v0, v2}, Lorg/h2/server/web/WebApp;->unescapeData(Ljava/lang/String;Ljava/sql/ResultSet;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    if-eqz v4, :cond_3

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/sql/ResultSet;->insertRow()V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->updateRow()V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    const/4 v4, 0x2

    .line 107
    if-ne v2, v4, :cond_5

    .line 108
    .line 109
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->absolute(I)Z

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Ljava/sql/ResultSet;->deleteRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "<br />"

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 124
    .line 125
    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-direct {p0, v3, v0, v2}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lorg/h2/server/web/WebApp;->formatAsError(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_5

    .line 153
    :cond_5
    :goto_4
    const-string v1, ""

    .line 154
    .line 155
    move-object v0, v1

    .line 156
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "@edit "

    .line 159
    .line 160
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 164
    .line 165
    const-string v4, "resultSetSQL"

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 181
    .line 182
    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/4 v8, 0x1

    .line 191
    const/4 v9, 0x1

    .line 192
    const/4 v6, -0x1

    .line 193
    move-object v4, p0

    .line 194
    invoke-direct/range {v4 .. v9}, Lorg/h2/server/web/WebApp;->getResult(Ljava/sql/Connection;ILjava/lang/String;ZZ)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v2, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 203
    .line 204
    const-string v2, "result"

    .line 205
    .line 206
    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const-string v0, "result.jsp"

    .line 210
    .line 211
    return-object v0
.end method

.method private static escapeData(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p0, p1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "<i>null</i>"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, 0x186a0

    .line 15
    .line 16
    .line 17
    if-le v1, v2, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0, p1}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Lorg/h2/server/web/WebApp;->isBinary(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const-string p1, "... ("

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    div-int/lit8 p1, p1, 0x2

    .line 61
    .line 62
    const-string v0, " ${text.result.bytes})"

    .line 63
    .line 64
    invoke-static {v0, p1, p0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const/16 v2, 0x64

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, " ${text.result.characters})"

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :goto_0
    const-string p1, "<div style=\'display: none\'>=+</div>"

    .line 107
    .line 108
    invoke-static {p1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_2
    const-string p0, "null"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    const-string p0, "= "

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_5

    .line 128
    .line 129
    const-string p0, "=+"

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_3

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const-string p0, ""

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_4
    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p1, "<div style=\'display: none\'>= </div>"

    .line 155
    .line 156
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method

.method private static escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private executeLoop(Ljava/sql/Connection;ILjava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object/from16 v4, p3

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    iget-boolean v6, v0, Lorg/h2/server/web/WebApp;->stop:Z

    .line 14
    .line 15
    const/16 v7, 0x3f

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    if-nez v6, :cond_2

    .line 19
    .line 20
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-gez v5, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-string v7, "?/*rnd*/"

    .line 32
    .line 33
    invoke-static {v6, v7}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v7, "?"

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v7, v5, 0x8

    .line 64
    .line 65
    invoke-static {v4, v7, v6}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    :goto_2
    new-instance v5, Ljava/util/Random;

    .line 81
    .line 82
    const-wide/16 v9, 0x1

    .line 83
    .line 84
    invoke-direct {v5, v9, v10}, Ljava/util/Random;-><init>(J)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    const-string v6, "@statement"

    .line 92
    .line 93
    invoke-static {v4, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    const/16 v6, 0xa

    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v11, 0x0

    .line 114
    :goto_3
    iget-boolean v12, v0, Lorg/h2/server/web/WebApp;->stop:Z

    .line 115
    .line 116
    if-nez v12, :cond_e

    .line 117
    .line 118
    if-ge v11, v1, :cond_e

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    move-object v13, v4

    .line 125
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_4

    .line 130
    .line 131
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    check-cast v14, Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    if-ne v14, v8, :cond_3

    .line 146
    .line 147
    new-instance v14, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    add-int/lit8 v15, v15, 0x1

    .line 167
    .line 168
    invoke-static {v13, v15, v14}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    :goto_5
    move-object v13, v7

    .line 173
    goto :goto_6

    .line 174
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    add-int/lit8 v15, v15, 0x1

    .line 190
    .line 191
    invoke-static {v13, v15, v7}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    goto :goto_5

    .line 196
    :goto_6
    const/16 v7, 0x3f

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_4
    invoke-interface {v6, v13}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_6

    .line 204
    .line 205
    invoke-interface {v6}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    :goto_7
    iget-boolean v12, v0, Lorg/h2/server/web/WebApp;->stop:Z

    .line 210
    .line 211
    if-nez v12, :cond_5

    .line 212
    .line 213
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    if-eqz v12, :cond_5

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_5
    invoke-interface {v7}, Ljava/sql/ResultSet;->close()V

    .line 221
    .line 222
    .line 223
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 224
    .line 225
    const/16 v7, 0x3f

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    move-object/from16 v6, p1

    .line 229
    .line 230
    invoke-interface {v6, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const/4 v7, 0x0

    .line 235
    :goto_8
    iget-boolean v11, v0, Lorg/h2/server/web/WebApp;->stop:Z

    .line 236
    .line 237
    if-nez v11, :cond_d

    .line 238
    .line 239
    if-ge v7, v1, :cond_d

    .line 240
    .line 241
    const/4 v11, 0x0

    .line 242
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-ge v11, v12, :cond_9

    .line 247
    .line 248
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    check-cast v12, Ljava/lang/Integer;

    .line 253
    .line 254
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    if-ne v12, v8, :cond_8

    .line 259
    .line 260
    add-int/lit8 v12, v11, 0x1

    .line 261
    .line 262
    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    invoke-interface {v6, v12, v13}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 267
    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_8
    add-int/lit8 v12, v11, 0x1

    .line 271
    .line 272
    invoke-interface {v6, v12, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 273
    .line 274
    .line 275
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_9
    iget-object v11, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 279
    .line 280
    invoke-virtual {v11}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbContents;->isSQLite()Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-eqz v11, :cond_a

    .line 289
    .line 290
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 291
    .line 292
    .line 293
    goto :goto_c

    .line 294
    :cond_a
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->execute()Z

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    if-eqz v11, :cond_c

    .line 299
    .line 300
    invoke-interface {v6}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    :goto_b
    iget-boolean v12, v0, Lorg/h2/server/web/WebApp;->stop:Z

    .line 305
    .line 306
    if-nez v12, :cond_b

    .line 307
    .line 308
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    .line 309
    .line 310
    .line 311
    move-result v12

    .line 312
    if-eqz v12, :cond_b

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_b
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V

    .line 316
    .line 317
    .line 318
    :cond_c
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_d
    const/4 v3, 0x1

    .line 322
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 323
    .line 324
    .line 325
    move-result-wide v5

    .line 326
    sub-long/2addr v5, v9

    .line 327
    new-instance v7, Lorg/h2/util/StatementBuilder;

    .line 328
    .line 329
    invoke-direct {v7}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v5, v6}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    const-string v6, " ms: "

    .line 337
    .line 338
    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    int-to-long v8, v1

    .line 343
    invoke-virtual {v5, v8, v9}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    const-string v5, " * "

    .line 348
    .line 349
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 350
    .line 351
    .line 352
    if-eqz v3, :cond_f

    .line 353
    .line 354
    const-string v1, "(Prepared) "

    .line 355
    .line 356
    :goto_d
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 357
    .line 358
    .line 359
    goto :goto_e

    .line 360
    :cond_f
    const-string v1, "(Statement) "

    .line 361
    .line 362
    goto :goto_d

    .line 363
    :goto_e
    const/16 v1, 0x28

    .line 364
    .line 365
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_11

    .line 377
    .line 378
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Ljava/lang/Integer;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    const-string v3, ", "

    .line 389
    .line 390
    invoke-virtual {v7, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    if-nez v2, :cond_10

    .line 394
    .line 395
    const-string v2, "i"

    .line 396
    .line 397
    goto :goto_10

    .line 398
    :cond_10
    const-string v2, "rnd"

    .line 399
    .line 400
    :goto_10
    invoke-virtual {v7, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 401
    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_11
    const-string v1, ") "

    .line 405
    .line 406
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    return-object v1
.end method

.method private static formatAsError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<div class=\"error\">"

    .line 2
    .line 3
    const-string v1, "</div>"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static getComboBox([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "<option value=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " selected"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</option>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getComboBox([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "<option value=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v2

    invoke-static {v5}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, " selected"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v5, 0x3e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</option>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommandHistoryString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<table cellspacing=0 cellpadding=0><tr><th></th><th>Command</th></tr>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getCommandHistory()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "<tr><td><a href=\"getHistory.do?id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&jsessionid=${sessionId}\" target=\"h2query\" ><img width=16 height=16 src=\"ico_write.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.edit}\" title=\"${text.resultEdit.edit}\" border=\"1\"/></a></td><td>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</td></tr>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "</table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHistory()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebSession;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "query"

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query.jsp"

    return-object v0
.end method

.method private getLoginError(Ljava/lang/Exception;Z)Ljava/lang/String;
    .locals 3

    instance-of v0, p1, Lorg/h2/jdbc/JdbcSQLException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    const v2, 0x15fe6

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "${text.login.driverNotFound}<br />"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, p2}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMaxrows()I
    .locals 2

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "maxrows"

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getMetaResultSet(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "@best_row_identifier"

    .line 6
    .line 7
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x5

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x3

    .line 16
    const/4 v7, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    aget-object p2, p1, v3

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    :goto_0
    aget-object v1, p1, v2

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    move v5, v1

    .line 43
    :goto_1
    aget-object v1, p1, v7

    .line 44
    .line 45
    aget-object v2, p1, v4

    .line 46
    .line 47
    aget-object v3, p1, v6

    .line 48
    .line 49
    move v4, p2

    .line 50
    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_2
    const-string v1, "@catalogs"

    .line 56
    .line 57
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getCatalogs()Ljava/sql/ResultSet;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_3
    const-string v1, "@columns"

    .line 69
    .line 70
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    aget-object p2, p1, v7

    .line 81
    .line 82
    aget-object v1, p1, v4

    .line 83
    .line 84
    aget-object v2, p1, v6

    .line 85
    .line 86
    aget-object p1, p1, v3

    .line 87
    .line 88
    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_4
    const-string v1, "@column_privileges"

    .line 94
    .line 95
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    aget-object p2, p1, v7

    .line 106
    .line 107
    aget-object v1, p1, v4

    .line 108
    .line 109
    aget-object v2, p1, v6

    .line 110
    .line 111
    aget-object p1, p1, v3

    .line 112
    .line 113
    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_5
    const-string v1, "@cross_references"

    .line 119
    .line 120
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    aget-object v1, p1, v7

    .line 131
    .line 132
    aget-object p2, p1, v4

    .line 133
    .line 134
    aget-object v4, p1, v6

    .line 135
    .line 136
    aget-object v5, p1, v3

    .line 137
    .line 138
    aget-object v6, p1, v2

    .line 139
    .line 140
    const/4 v2, 0x6

    .line 141
    aget-object p1, p1, v2

    .line 142
    .line 143
    move-object v2, p2

    .line 144
    move-object v3, v4

    .line 145
    move-object v4, v5

    .line 146
    move-object v5, v6

    .line 147
    move-object v6, p1

    .line 148
    invoke-interface/range {v0 .. v6}, Ljava/sql/DatabaseMetaData;->getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :cond_6
    const-string v1, "@exported_keys"

    .line 154
    .line 155
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    aget-object p2, p1, v7

    .line 166
    .line 167
    aget-object v1, p1, v4

    .line 168
    .line 169
    aget-object p1, p1, v6

    .line 170
    .line 171
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :cond_7
    const-string v1, "@imported_keys"

    .line 177
    .line 178
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_8

    .line 183
    .line 184
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    aget-object p2, p1, v7

    .line 189
    .line 190
    aget-object v1, p1, v4

    .line 191
    .line 192
    aget-object p1, p1, v6

    .line 193
    .line 194
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    return-object p1

    .line 199
    :cond_8
    const-string v1, "@index_info"

    .line 200
    .line 201
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_b

    .line 206
    .line 207
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    aget-object p2, p1, v3

    .line 212
    .line 213
    if-nez p2, :cond_9

    .line 214
    .line 215
    const/4 p2, 0x0

    .line 216
    goto :goto_2

    .line 217
    :cond_9
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    :goto_2
    aget-object v1, p1, v2

    .line 222
    .line 223
    if-nez v1, :cond_a

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    move v5, v1

    .line 231
    :goto_3
    aget-object v1, p1, v7

    .line 232
    .line 233
    aget-object v2, p1, v4

    .line 234
    .line 235
    aget-object v3, p1, v6

    .line 236
    .line 237
    move v4, p2

    .line 238
    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    return-object p1

    .line 243
    :cond_b
    const-string v1, "@primary_keys"

    .line 244
    .line 245
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_c

    .line 250
    .line 251
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    aget-object p2, p1, v7

    .line 256
    .line 257
    aget-object v1, p1, v4

    .line 258
    .line 259
    aget-object p1, p1, v6

    .line 260
    .line 261
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    return-object p1

    .line 266
    :cond_c
    const-string v1, "@procedures"

    .line 267
    .line 268
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_d

    .line 273
    .line 274
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    aget-object p2, p1, v7

    .line 279
    .line 280
    aget-object v1, p1, v4

    .line 281
    .line 282
    aget-object p1, p1, v6

    .line 283
    .line 284
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    return-object p1

    .line 289
    :cond_d
    const-string v1, "@procedure_columns"

    .line 290
    .line 291
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_e

    .line 296
    .line 297
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    aget-object p2, p1, v7

    .line 302
    .line 303
    aget-object v1, p1, v4

    .line 304
    .line 305
    aget-object v2, p1, v6

    .line 306
    .line 307
    aget-object p1, p1, v3

    .line 308
    .line 309
    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    return-object p1

    .line 314
    :cond_e
    const-string v1, "@schemas"

    .line 315
    .line 316
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_f

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getSchemas()Ljava/sql/ResultSet;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    return-object p1

    .line 327
    :cond_f
    const-string v1, "@tables"

    .line 328
    .line 329
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    const/16 v2, 0x2c

    .line 334
    .line 335
    const/4 v8, 0x0

    .line 336
    if-eqz v1, :cond_11

    .line 337
    .line 338
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    aget-object p2, p1, v3

    .line 343
    .line 344
    if-nez p2, :cond_10

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_10
    invoke-static {p2, v2, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    :goto_4
    aget-object p2, p1, v7

    .line 352
    .line 353
    aget-object v1, p1, v4

    .line 354
    .line 355
    aget-object p1, p1, v6

    .line 356
    .line 357
    invoke-interface {v0, p2, v1, p1, v8}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    return-object p1

    .line 362
    :cond_11
    const-string v1, "@table_privileges"

    .line 363
    .line 364
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_12

    .line 369
    .line 370
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    aget-object p2, p1, v7

    .line 375
    .line 376
    aget-object v1, p1, v4

    .line 377
    .line 378
    aget-object p1, p1, v6

    .line 379
    .line 380
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    return-object p1

    .line 385
    :cond_12
    const-string v1, "@table_types"

    .line 386
    .line 387
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_13

    .line 392
    .line 393
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getTableTypes()Ljava/sql/ResultSet;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    return-object p1

    .line 398
    :cond_13
    const-string v1, "@type_info"

    .line 399
    .line 400
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_14

    .line 405
    .line 406
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getTypeInfo()Ljava/sql/ResultSet;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    return-object p1

    .line 411
    :cond_14
    const-string v1, "@udts"

    .line 412
    .line 413
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_17

    .line 418
    .line 419
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    aget-object p2, p1, v3

    .line 424
    .line 425
    if-nez p2, :cond_15

    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_15
    invoke-static {p2, v2, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    array-length v1, p2

    .line 433
    new-array v8, v1, [I

    .line 434
    .line 435
    :goto_5
    array-length v1, p2

    .line 436
    if-ge v5, v1, :cond_16

    .line 437
    .line 438
    aget-object v1, p2, v5

    .line 439
    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    aput v1, v8, v5

    .line 445
    .line 446
    add-int/2addr v5, v7

    .line 447
    goto :goto_5

    .line 448
    :cond_16
    :goto_6
    aget-object p2, p1, v7

    .line 449
    .line 450
    aget-object v1, p1, v4

    .line 451
    .line 452
    aget-object p1, p1, v6

    .line 453
    .line 454
    invoke-interface {v0, p2, v1, p1, v8}, Ljava/sql/DatabaseMetaData;->getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    return-object p1

    .line 459
    :cond_17
    const-string v1, "@version_columns"

    .line 460
    .line 461
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_18

    .line 466
    .line 467
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    aget-object p2, p1, v7

    .line 472
    .line 473
    aget-object v1, p1, v4

    .line 474
    .line 475
    aget-object p1, p1, v6

    .line 476
    .line 477
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    return-object p1

    .line 482
    :cond_18
    const-string v1, "@memory"

    .line 483
    .line 484
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    const/16 v2, 0xc

    .line 489
    .line 490
    const-string v9, ""

    .line 491
    .line 492
    if-eqz v1, :cond_19

    .line 493
    .line 494
    new-instance p1, Lorg/h2/tools/SimpleResultSet;

    .line 495
    .line 496
    invoke-direct {p1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string p2, "Type"

    .line 500
    .line 501
    invoke-virtual {p1, p2, v2, v5, v5}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 502
    .line 503
    .line 504
    const-string p2, "KB"

    .line 505
    .line 506
    invoke-virtual {p1, p2, v2, v5, v5}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 507
    .line 508
    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {p2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-static {}, Lorg/h2/util/Utils;->getMemoryUsed()I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    new-array v0, v4, [Ljava/lang/Object;

    .line 526
    .line 527
    const-string v1, "Used Memory"

    .line 528
    .line 529
    aput-object v1, v0, v5

    .line 530
    .line 531
    aput-object p2, v0, v7

    .line 532
    .line 533
    invoke-virtual {p1, v0}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    new-instance p2, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {p2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {}, Lorg/h2/util/Utils;->getMemoryFree()I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p2

    .line 552
    new-array v0, v4, [Ljava/lang/Object;

    .line 553
    .line 554
    const-string v1, "Free Memory"

    .line 555
    .line 556
    aput-object v1, v0, v5

    .line 557
    .line 558
    aput-object p2, v0, v7

    .line 559
    .line 560
    invoke-virtual {p1, v0}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    return-object p1

    .line 564
    :cond_19
    const-string v1, "@info"

    .line 565
    .line 566
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-eqz v1, :cond_1a

    .line 571
    .line 572
    new-instance p2, Lorg/h2/tools/SimpleResultSet;

    .line 573
    .line 574
    invoke-direct {p2}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    .line 575
    .line 576
    .line 577
    const-string v1, "KEY"

    .line 578
    .line 579
    invoke-virtual {p2, v1, v2, v5, v5}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 580
    .line 581
    .line 582
    const-string v1, "VALUE"

    .line 583
    .line 584
    invoke-virtual {p2, v1, v2, v5, v5}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 585
    .line 586
    .line 587
    invoke-interface {p1}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    new-array v2, v4, [Ljava/lang/Object;

    .line 592
    .line 593
    const-string v3, "conn.getCatalog"

    .line 594
    .line 595
    aput-object v3, v2, v5

    .line 596
    .line 597
    aput-object v1, v2, v7

    .line 598
    .line 599
    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-interface {p1}, Ljava/sql/Connection;->getAutoCommit()Z

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    new-array v2, v4, [Ljava/lang/Object;

    .line 619
    .line 620
    const-string v3, "conn.getAutoCommit"

    .line 621
    .line 622
    aput-object v3, v2, v5

    .line 623
    .line 624
    aput-object v1, v2, v7

    .line 625
    .line 626
    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-interface {p1}, Ljava/sql/Connection;->getTransactionIsolation()I

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    new-array v2, v4, [Ljava/lang/Object;

    .line 646
    .line 647
    const-string v3, "conn.getTransactionIsolation"

    .line 648
    .line 649
    aput-object v3, v2, v5

    .line 650
    .line 651
    aput-object v1, v2, v7

    .line 652
    .line 653
    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-interface {p1}, Ljava/sql/Connection;->getWarnings()Ljava/sql/SQLWarning;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    new-array v2, v4, [Ljava/lang/Object;

    .line 673
    .line 674
    const-string v3, "conn.getWarnings"

    .line 675
    .line 676
    aput-object v3, v2, v5

    .line 677
    .line 678
    aput-object v1, v2, v7

    .line 679
    .line 680
    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-interface {p1}, Ljava/sql/Connection;->getTypeMap()Ljava/util/Map;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    goto :goto_7

    .line 700
    :catch_0
    move-exception v1

    .line 701
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    :goto_7
    invoke-static {v9, v1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    new-array v2, v4, [Ljava/lang/Object;

    .line 710
    .line 711
    const-string v3, "conn.getTypeMap"

    .line 712
    .line 713
    aput-object v3, v2, v5

    .line 714
    .line 715
    aput-object v1, v2, v7

    .line 716
    .line 717
    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-interface {p1}, Ljava/sql/Connection;->isReadOnly()Z

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    new-array v2, v4, [Ljava/lang/Object;

    .line 737
    .line 738
    const-string v3, "conn.isReadOnly"

    .line 739
    .line 740
    aput-object v3, v2, v5

    .line 741
    .line 742
    aput-object v1, v2, v7

    .line 743
    .line 744
    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-interface {p1}, Ljava/sql/Connection;->getHoldability()I

    .line 753
    .line 754
    .line 755
    move-result p1

    .line 756
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    new-array v1, v4, [Ljava/lang/Object;

    .line 764
    .line 765
    const-string v2, "conn.getHoldability"

    .line 766
    .line 767
    aput-object v2, v1, v5

    .line 768
    .line 769
    aput-object p1, v1, v7

    .line 770
    .line 771
    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    invoke-static {p2, v0}, Lorg/h2/server/web/WebApp;->addDatabaseMetaData(Lorg/h2/tools/SimpleResultSet;Ljava/sql/DatabaseMetaData;)V

    .line 775
    .line 776
    .line 777
    return-object p2

    .line 778
    :cond_1a
    const-string p1, "@attributes"

    .line 779
    .line 780
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 781
    .line 782
    .line 783
    move-result p1

    .line 784
    if-eqz p1, :cond_1b

    .line 785
    .line 786
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    aget-object p2, p1, v7

    .line 791
    .line 792
    aget-object v1, p1, v4

    .line 793
    .line 794
    aget-object v2, p1, v6

    .line 795
    .line 796
    aget-object p1, p1, v3

    .line 797
    .line 798
    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 799
    .line 800
    .line 801
    move-result-object p1

    .line 802
    return-object p1

    .line 803
    :cond_1b
    const-string p1, "@super_tables"

    .line 804
    .line 805
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 806
    .line 807
    .line 808
    move-result p1

    .line 809
    if-eqz p1, :cond_1c

    .line 810
    .line 811
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object p1

    .line 815
    aget-object p2, p1, v7

    .line 816
    .line 817
    aget-object v1, p1, v4

    .line 818
    .line 819
    aget-object p1, p1, v6

    .line 820
    .line 821
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    return-object p1

    .line 826
    :cond_1c
    const-string p1, "@super_types"

    .line 827
    .line 828
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 829
    .line 830
    .line 831
    move-result p1

    .line 832
    if-eqz p1, :cond_1d

    .line 833
    .line 834
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object p1

    .line 838
    aget-object p2, p1, v7

    .line 839
    .line 840
    aget-object v1, p1, v4

    .line 841
    .line 842
    aget-object p1, p1, v6

    .line 843
    .line 844
    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    return-object p1

    .line 849
    :cond_1d
    const-string p1, "@prof_stop"

    .line 850
    .line 851
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    .line 853
    .line 854
    move-result p1

    .line 855
    if-eqz p1, :cond_1e

    .line 856
    .line 857
    iget-object p1, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    .line 858
    .line 859
    if-eqz p1, :cond_1e

    .line 860
    .line 861
    invoke-virtual {p1}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 862
    .line 863
    .line 864
    new-instance p1, Lorg/h2/tools/SimpleResultSet;

    .line 865
    .line 866
    invoke-direct {p1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    .line 867
    .line 868
    .line 869
    const-string p2, "Top Stack Trace(s)"

    .line 870
    .line 871
    invoke-virtual {p1, p2, v2, v5, v5}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 872
    .line 873
    .line 874
    iget-object p2, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    .line 875
    .line 876
    invoke-virtual {p2, v6}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object p2

    .line 880
    new-array v0, v7, [Ljava/lang/Object;

    .line 881
    .line 882
    aput-object p2, v0, v5

    .line 883
    .line 884
    invoke-virtual {p1, v0}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    iput-object v8, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    .line 888
    .line 889
    return-object p1

    .line 890
    :cond_1e
    return-object v8
.end method

.method private static getParameterResultSet(Ljava/sql/ParameterMetaData;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "No parameter meta data"

    return-object p0

    :cond_0
    const-string v1, "<table cellspacing=0 cellpadding=0><tr><th>className</th><th>mode</th><th>type</th><th>typeName</th><th>precision</th><th>scale</th></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/sql/ParameterMetaData;->getParameterCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, "</tr><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterMode(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterType(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getPrecision(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getScale(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</td></tr>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "</table>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResult(Ljava/sql/Connection;ILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "${text.result.updateCount}: "

    const-string v2, "?: "

    const-string v3, "1: read_uncommitted<br />2: read_committed<br />4: repeatable_read<br />8: serializable"

    const-string v4, "Transaction Isolation: "

    const-string v5, ""

    const-string v6, "<script type=\"text/javascript\">parent[\'h2menu\'].location=\'tables.do?jsessionid="

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "CREATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "DROP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ALTER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "RUNSCRIPT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    :goto_0
    iget-object v8, v10, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v9, "jsessionid"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\';</script>"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v6, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v6}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v6

    if-nez p5, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {v6}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v6

    :goto_1
    move-object v13, v6

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v6, 0x3ec

    const/16 v8, 0x3f0

    invoke-interface {v0, v6, v8}, Ljava/sql/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object v6

    goto :goto_1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v6, "@autocommit_true"

    invoke-static {v7, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v14, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v0, v14}, Ljava/sql/Connection;->setAutoCommit(Z)V

    const-string v0, "${text.result.autoCommitOn}"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v11, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_4
    :try_start_1
    const-string v6, "@autocommit_false"

    invoke-static {v7, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v15, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v0, v15}, Ljava/sql/Connection;->setAutoCommit(Z)V

    const-string v0, "${text.result.autoCommitOff}"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v11, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_5
    :try_start_2
    const-string v6, "@cancel"

    invoke-static {v7, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v0, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v0, v0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V

    const-string v0, "${text.result.statementWasCanceled}"

    :goto_4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string v0, "${text.result.noRunningStatement}"

    goto :goto_4

    :goto_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v11, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_7
    :try_start_3
    const-string v6, "@edit"

    invoke-static {v7, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v14, 0x5

    if-eqz v6, :cond_8

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v15, "resultSetSQL"

    invoke-virtual {v6, v15, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x1

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :goto_6
    const-string v6, "@list"

    invoke-static {v7, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    const-string v11, "@meta"

    invoke-static {v7, v11}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    const/4 v7, 0x1

    goto :goto_8

    :cond_a
    move-object v11, v7

    const/4 v7, 0x0

    :goto_8
    const-string v14, "@generated"

    invoke-static {v11, v14}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    const/4 v14, 0x1

    goto/16 :goto_a

    :cond_b
    const-string v14, "@history"

    invoke-static {v11, v14}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-direct/range {p0 .. p0}, Lorg/h2/server/web/WebApp;->getCommandHistoryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_c
    :try_start_4
    const-string v14, "@loop"

    invoke-static {v11, v14}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v3, v1}, Lorg/h2/server/web/WebApp;->executeLoop(Ljava/sql/Connection;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_d
    :try_start_5
    const-string v14, "@maxrows"

    invoke-static {v11, v14}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "maxrows"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "${text.result.maxrowsSet}"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_e
    :try_start_6
    const-string v5, "@parameter_meta"

    invoke-static {v11, v5}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v1, 0xf

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/server/web/WebApp;->getParameterResultSet(Ljava/sql/ParameterMetaData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_f
    :try_start_7
    const-string v5, "@password_hash"

    invoke-static {v11, v5}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v0, 0xe

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v1, v0, v5

    const/4 v14, 0x1

    aget-object v0, v0, v14

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_10
    const/4 v14, 0x1

    :try_start_8
    const-string v5, "@prof_start"

    invoke-static {v11, v5}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v16, "Ok"

    if-eqz v5, :cond_12

    :try_start_9
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    :cond_11
    new-instance v0, Lorg/h2/util/Profiler;

    invoke-direct {v0}, Lorg/h2/util/Profiler;-><init>()V

    iput-object v0, v10, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    invoke-virtual {v0}, Lorg/h2/util/Profiler;->startCollecting()Lorg/h2/util/Profiler;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_9
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v16

    :cond_12
    :try_start_a
    const-string v5, "@sleep"

    invoke-static {v11, v5}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v0, 0x6

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_13
    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v0, v14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_9

    :cond_14
    const-string v5, "@transaction_isolation"

    invoke-static {v11, v5}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0x16

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_15

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<br />"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const/4 v14, 0x0

    :goto_a
    const-string v3, "@"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {v10, v0, v11}, Lorg/h2/server/web/WebApp;->getMetaResultSet(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_17
    :goto_b
    move-object v3, v0

    goto :goto_c

    :cond_18
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lorg/h2/server/web/WebApp;->getMaxrows()I

    move-result v0

    invoke-interface {v13, v0}, Ljava/sql/Statement;->setMaxRows(I)V

    iget-object v0, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v13, v0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    invoke-interface {v13, v11}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2, v11}, Lorg/h2/server/web/WebSession;->addCommand(Ljava/lang/String;)V

    if-eqz v14, :cond_19

    invoke-interface {v13}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    goto :goto_b

    :cond_19
    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-string v2, "<br />("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/sql/Statement;->close()V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_1a
    :try_start_c
    invoke-interface {v13}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    goto :goto_b

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v8

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v7

    move v5, v6

    move v6, v15

    move-wide v7, v8

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/h2/server/web/WebApp;->getResultSet(Ljava/lang/String;Ljava/sql/ResultSet;ZZZJZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_1b

    invoke-interface {v13}, Ljava/sql/Statement;->close()V

    :cond_1b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :goto_d
    :try_start_d
    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v1

    move/from16 v2, p2

    invoke-direct {v10, v2, v0, v1}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v2, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    throw v0
.end method

.method private getResultSet(Ljava/lang/String;Ljava/sql/ResultSet;ZZZJZ)Ljava/lang/String;
    .locals 34

    move-object/from16 v0, p0

    const/16 v1, 0x10

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/h2/server/web/WebApp;->getMaxrows()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, p6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    const-string v10, "<form id=\"editing\" name=\"editing\" method=\"post\" action=\"editResult.do?jsessionid=${sessionId}\" id=\"mainForm\" target=\"h2result\"><input type=\"hidden\" name=\"op\" value=\"1\" /><input type=\"hidden\" name=\"row\" value=\"\" /><table cellspacing=0 cellpadding=0 id=\"editTable\">"

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v10, "<table cellspacing=0 cellpadding=0>"

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    new-instance v10, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v10}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v11, "#"

    invoke-virtual {v10, v11, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "label"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "catalog"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "schema"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "table"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "column"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "type"

    invoke-virtual {v10, v11, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "typeName"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "class"

    invoke-virtual {v10, v11, v2, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "precision"

    invoke-virtual {v10, v11, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "scale"

    invoke-virtual {v10, v11, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "displaySize"

    invoke-virtual {v10, v11, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "autoIncrement"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "caseSensitive"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "currency"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "nullable"

    invoke-virtual {v10, v11, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "readOnly"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "searchable"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "signed"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "writable"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v11, "definitelyWritable"

    invoke-virtual {v10, v11, v1, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    invoke-interface/range {p2 .. p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v11

    const/4 v12, 0x1

    :goto_2
    invoke-interface {v11}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v13

    if-gt v12, v13, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getCatalogName(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getSchemaName(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getTableName(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getColumnClassName(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isAutoIncrement(I)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isCaseSensitive(I)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isCurrency(I)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isNullable(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isReadOnly(I)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isSearchable(I)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isSigned(I)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isWritable(I)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-interface {v11, v12}, Ljava/sql/ResultSetMetaData;->isDefinitelyWritable(I)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v13, v1, v4

    aput-object v14, v1, v5

    const/4 v13, 0x2

    aput-object v15, v1, v13

    const/4 v13, 0x3

    aput-object v16, v1, v13

    aput-object v17, v1, v3

    const/4 v13, 0x5

    aput-object v18, v1, v13

    const/4 v13, 0x6

    aput-object v19, v1, v13

    const/4 v13, 0x7

    aput-object v20, v1, v13

    const/16 v13, 0x8

    aput-object v21, v1, v13

    const/16 v13, 0x9

    aput-object v22, v1, v13

    const/16 v13, 0xa

    aput-object v23, v1, v13

    const/16 v13, 0xb

    aput-object v24, v1, v13

    aput-object v25, v1, v2

    const/16 v13, 0xd

    aput-object v26, v1, v13

    const/16 v13, 0xe

    aput-object v27, v1, v13

    const/16 v13, 0xf

    aput-object v28, v1, v13

    const/16 v13, 0x10

    aput-object v29, v1, v13

    const/16 v14, 0x11

    aput-object v30, v1, v14

    const/16 v14, 0x12

    aput-object v31, v1, v14

    const/16 v14, 0x13

    aput-object v32, v1, v14

    const/16 v14, 0x14

    aput-object v33, v1, v14

    invoke-virtual {v10, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    add-int/2addr v12, v5

    const/16 v1, 0x10

    goto/16 :goto_2

    :cond_1
    move-object/from16 v10, p2

    :cond_2
    invoke-interface {v10}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    const-string v3, "</tr>"

    if-eqz p4, :cond_5

    const-string v11, "<tr><th>Column</th><th>Data</th></tr><tr>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :cond_3
    invoke-interface {v10}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_c

    if-lez v6, :cond_4

    if-lt v11, v6, :cond_4

    goto/16 :goto_8

    :cond_4
    add-int/2addr v11, v5

    const-string v12, "<tr><td>Row #</td><td>"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v2, :cond_3

    const-string v13, "<tr><td>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v12, v5

    invoke-interface {v1, v12}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</td><td>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v12}, Lorg/h2/server/web/WebApp;->escapeData(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</td></tr>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v11, "<tr>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_6

    const-string v12, "<th>${text.resultEdit.action}</th>"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_7

    const-string v13, "<th>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v12, v5

    invoke-interface {v1, v12}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</th>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_b

    if-lez v6, :cond_8

    if-lt v1, v6, :cond_8

    goto :goto_7

    :cond_8
    add-int/2addr v1, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_9

    const-string v12, "<td><img onclick=\"javascript:editRow("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/sql/ResultSet;->getRow()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",\'${sessionId}\', \'${text.resultEdit.save}\', \'${text.resultEdit.cancel}\')\" width=16 height=16 src=\"ico_write.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.edit}\" title=\"${text.resultEdit.edit}\" border=\"1\"/><a href=\"editResult.do?op=2&row="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/sql/ResultSet;->getRow()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "&jsessionid=${sessionId}\" target=\"h2result\" ><img width=16 height=16 src=\"ico_remove.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.delete}\" title=\"${text.resultEdit.delete}\" border=\"1\" /></a></td>"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v2, :cond_a

    const-string v13, "<td>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v12, v5

    invoke-static {v10, v12}, Lorg/h2/server/web/WebApp;->escapeData(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</td>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    :goto_7
    move v11, v1

    :cond_c
    :goto_8
    :try_start_0
    iget-object v1, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->isDB2()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v10}, Ljava/sql/ResultSet;->getConcurrency()I

    move-result v1

    const/16 v6, 0x3f0

    if-ne v1, v6, :cond_d

    invoke-interface {v10}, Ljava/sql/ResultSet;->getType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x3eb

    if-eq v1, v6, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :catch_0
    nop

    :cond_d
    const/4 v1, 0x0

    :goto_9
    if-eqz p5, :cond_f

    iget-object v6, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v6, v6, Lorg/h2/server/web/WebSession;->result:Ljava/sql/ResultSet;

    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V

    :cond_e
    iget-object v6, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v10, v6, Lorg/h2/server/web/WebSession;->result:Ljava/sql/ResultSet;

    goto :goto_a

    :cond_f
    invoke-interface {v10}, Ljava/sql/ResultSet;->close()V

    :goto_a
    if-eqz p5, :cond_11

    const-string v6, "<tr><td><img onclick=\"javascript:editRow(-1, \'${sessionId}\', \'${text.resultEdit.save}\', \'${text.resultEdit.cancel}\')\" width=16 height=16 src=\"ico_add.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.add}\" title=\"${text.resultEdit.add}\" border=\"1\"/></td>"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    if-ge v4, v2, :cond_10

    const-string v6, "<td></td>"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    goto :goto_b

    :cond_10
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v2, "</table>"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_12

    const-string v2, "</form>"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-nez v11, :cond_13

    const-string v2, "(${text.result.noRows}"

    :goto_c
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_13
    if-ne v11, v5, :cond_14

    const-string v2, "(${text.result.1row}"

    goto :goto_c

    :cond_14
    const/16 v2, 0x28

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ${text.result.rows}"

    goto :goto_c

    :goto_d
    const-string v2, ", "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms)"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_15

    if-eqz v1, :cond_15

    if-eqz p8, :cond_15

    const-string v1, "<br /><br /><form name=\"editResult\" method=\"post\" action=\"query.do?jsessionid=${sessionId}\" target=\"h2result\"><input type=\"submit\" class=\"button\" value=\"${text.resultEdit.editResult}\" /><input type=\"hidden\" name=\"sql\" value=\"@edit "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" /></form>"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "<a class=\"error\" href=\"#\" onclick=\"var x=document.getElementById(\'st"

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-static {v1}, Lorg/h2/server/web/WebApp;->linkToSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "\t"

    const-string v3, "&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\').style;x.display=x.display==\'\'?\'none\':\'\';\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</a>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of v2, p2, Ljava/sql/SQLException;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <a href=\"http://h2database.com/javadoc/org/h2/api/ErrorCode.html#c"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\">(${text.a.help})</a>"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<span style=\"display: none;\" id=\"st"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\"><br />"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</span>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/server/web/WebApp;->formatAsError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object p1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {p1, p2}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private index()Ljava/lang/String;
    .locals 7

    sget-object v0, Lorg/h2/server/web/WebServer;->LANGUAGES:[[Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "language"

    invoke-virtual {v1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v4, v3, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    invoke-direct {v3, v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    iget-object v5, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/h2/server/web/WebServer;->readTranslations(Lorg/h2/server/web/WebSession;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4, v2, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v3, v2, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->headerLanguage:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "languageCombo"

    invoke-static {v0, v1}, Lorg/h2/server/web/WebApp;->getComboBox([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getSettingNames()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "setting"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :cond_4
    invoke-static {v0, v1}, Lorg/h2/server/web/WebApp;->getComboBox([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v4, "settingsList"

    invoke-virtual {v3, v4, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->getSetting(Ljava/lang/String;)Lorg/h2/server/web/ConnectionInfo;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v0}, Lorg/h2/server/web/ConnectionInfo;-><init>()V

    :cond_5
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "name"

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v2, v0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "driver"

    invoke-virtual {v1, v3, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v2, v0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v0, v0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "index.jsp"

    return-object v0
.end method

.method private static isBinary(I)Z
    .locals 1

    const/4 v0, -0x4

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x457

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static linkToSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<br />"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, "org.h2."

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    const/16 v6, 0x2e

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2f

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "<a href=\"http://h2database.com/html/source.html?file="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&line="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&build="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    goto/16 :goto_0

    :catchall_0
    return-object p0
.end method

.method private login()Ljava/lang/String;
    .locals 10

    const-string v0, "error"

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "driver"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v6, "user"

    invoke-virtual {v5, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v8, "password"

    invoke-virtual {v7, v8, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v8, "autoCommit"

    const-string v9, "checked"

    invoke-virtual {v7, v8, v9}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v8, "autoComplete"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v8, "maxrows"

    const-string v9, "1000"

    invoke-virtual {v7, v8, v9}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "jdbc:h2:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    :try_start_0
    iget-object v8, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v8, v1, v2, v5, v3}, Lorg/h2/server/web/WebServer;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3, v1}, Lorg/h2/server/web/WebSession;->setConnection(Ljava/sql/Connection;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1, v4, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1, v6, v5}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->settingSave()Ljava/lang/String;

    const-string v0, "frame.jsp"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-direct {p0, v1, v7}, Lorg/h2/server/web/WebApp;->getLoginError(Ljava/lang/Exception;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "login.jsp"

    return-object v0
.end method

.method private logout()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v0}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->setConnection(Ljava/sql/Connection;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "conn"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "tables"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "tool"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getShutdownServerOnDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->shutdown()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v0, "index.do"

    return-object v0
.end method

.method private process(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "process "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    const-string v0, ".do"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_10

    .line 17
    .line 18
    const-string v0, "login.do"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->login()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "index.do"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->index()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "logout.do"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->logout()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "settingRemove.do"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->settingRemove()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "settingSave.do"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->settingSave()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-string v0, "test.do"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->test()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const-string v0, "query.do"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->query()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    const-string v0, "tables.do"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->tables()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_0

    .line 122
    :cond_7
    const-string v0, "editResult.do"

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->editResult()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_0

    .line 135
    :cond_8
    const-string v0, "getHistory.do"

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->getHistory()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_9
    const-string v0, "admin.do"

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->admin()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_a
    const-string v0, "adminSave.do"

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->adminSave()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_b
    const-string v0, "adminStartTranslate.do"

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_c

    .line 184
    .line 185
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->adminStartTranslate()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_c
    const-string v0, "adminShutdown.do"

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_d

    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/h2/server/web/WebApp;->adminShutdown()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_d
    const-string v0, "autoCompleteList.do"

    .line 206
    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_e

    .line 212
    .line 213
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->autoCompleteList()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_e
    const-string v0, "tools.do"

    .line 220
    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_f

    .line 226
    .line 227
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->tools()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_f
    const-string p1, "error.jsp"

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_10
    const-string v0, "return "

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return-object p1
.end method

.method private query()Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "result"

    const-string v1, "result.jsp"

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v3, "sql"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/h2/util/ScriptReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-virtual {v4}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v4

    sget-boolean v5, Lorg/h2/engine/SysProperties;->CONSOLE_STREAM:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v5}, Lorg/h2/server/web/WebServer;->getAllowChunked()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v6, v1}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v6, "${result}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v6, "chunks"

    new-instance v7, Lorg/h2/server/web/WebApp$1;

    invoke-direct {v7, p0, v2, v4}, Lorg/h2/server/web/WebApp$1;-><init>(Lorg/h2/server/web/WebApp;Ljava/util/ArrayList;Ljava/sql/Connection;)V

    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v12, v5, :cond_1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v5, p0

    move-object v6, v4

    move v8, v12

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Lorg/h2/server/web/WebApp;->query(Ljava/sql/Connection;Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4, v0, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-object v1
.end method

.method private settingRemove()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->removeSetting(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v1, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V

    const-string v0, "index.do"

    return-object v0
.end method

.method private settingSave()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v0}, Lorg/h2/server/web/ConnectionInfo;-><init>()V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "driver"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "url"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "user"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->updateSetting(Lorg/h2/server/web/ConnectionInfo;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "setting"

    iget-object v0, v0, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V

    const-string v0, "index.do"

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v3, v0, :cond_1

    const-string p0, "null"

    aget-object v2, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    aput-object p0, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private tables()Ljava/lang/String;
    .locals 15

    const-string v0, "tree"

    const-string v1, "\', null);\n"

    const-string v2, "setNode(0, 0, 0, \'database\', \'"

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v6}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/h2/bnf/context/DbContents;->readContents(Ljava/lang/String;Ljava/sql/Connection;)V

    iget-object v7, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v7}, Lorg/h2/server/web/WebSession;->loadBnf()V

    invoke-virtual {v3}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5, v8, v5}, Lorg/h2/server/web/WebApp;->addTablesAndViews(Lorg/h2/bnf/context/DbSchema;ZLjava/lang/StringBuilder;I)I

    move-result v5

    invoke-virtual {v3}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v3

    array-length v9, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    :goto_0
    const-string v11, "setNode("

    if-ge v10, v9, :cond_2

    :try_start_2
    aget-object v12, v3, v10

    if-eq v12, v2, :cond_1

    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", 0, 1, \'folder\', \'"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-static {v11}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v12, v4, v8, v5}, Lorg/h2/server/web/WebApp;->addTablesAndViews(Lorg/h2/bnf/context/DbSchema;ZLjava/lang/StringBuilder;I)I

    move-result v5

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_a

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v3, "SELECT * FROM INFORMATION_SCHEMA.SEQUENCES ORDER BY SEQUENCE_NAME"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v6, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", 0, 1, \'sequences\', \'${text.tree.sequences}\', null);\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_3
    :goto_3
    const-string v9, "SEQUENCE_NAME"

    invoke-interface {v3, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "CURRENT_VALUE"

    invoke-interface {v3, v10}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "INCREMENT"

    invoke-interface {v3, v12}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", 1, 1, \'sequence\', \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", 2, 2, \'type\', \'${text.tree.current}: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x2

    const-string v10, "1"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", 2, 2, \'type\', \'${text.tree.increment}: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x3

    goto :goto_4

    :cond_4
    move v5, v9

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    const-string v3, "SELECT * FROM INFORMATION_SCHEMA.USERS ORDER BY NAME"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v6, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", 0, 1, \'users\', \'${text.tree.users}\', null);\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_6
    const-string v9, "NAME"

    invoke-interface {v3, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ADMIN"

    invoke-interface {v3, v10}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", 1, 1, \'user\', \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    const-string v12, "TRUE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", 2, 2, \'type\', \'${text.tree.admin}\', null);\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    :cond_7
    move v5, v9

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :goto_7
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_9

    :try_start_6
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw v3

    :cond_a
    :goto_9
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", 0, 0, \'info\', \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "refreshQueryTables();"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_b

    :catch_1
    move-exception v1

    const/4 v7, 0x0

    :goto_a
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "error"

    invoke-direct {p0, v4, v1, v7}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    const-string v0, "tables.jsp"

    return-object v0
.end method

.method private test()Ljava/lang/String;
    .locals 13

    const-string v0, "login.jsp"

    const-string v1, "error"

    const-string v2, "<a class=\"error\" href=\"#\" onclick=\"var x=document.getElementById(\'prof\').style;x.display=x.display==\'\'?\'none\':\'\';\">${text.login.testSuccessful}</a><span style=\"display: none;\" id=\"prof\"><br />"

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v4, "driver"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v7, "url"

    invoke-virtual {v6, v7, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v9, "user"

    invoke-virtual {v8, v9, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v11, "password"

    invoke-virtual {v10, v11, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v10, v4, v3}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4, v7, v6}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4, v9, v8}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "jdbc:h2:"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v7, Lorg/h2/util/Profiler;

    invoke-direct {v7}, Lorg/h2/util/Profiler;-><init>()V

    invoke-virtual {v7}, Lorg/h2/util/Profiler;->startCollecting()Lorg/h2/util/Profiler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x3

    :try_start_1
    iget-object v12, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v12, v3, v6, v8, v5}, Lorg/h2/server/web/WebServer;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v7}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    invoke-virtual {v7, v11}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/h2/util/Profiler;

    invoke-direct {v6}, Lorg/h2/util/Profiler;-><init>()V

    invoke-virtual {v6}, Lorg/h2/util/Profiler;->startCollecting()Lorg/h2/util/Profiler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    invoke-virtual {v6, v11}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v8, 0x3e8

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br />"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</span>"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    const-string v2, "${text.login.testSuccessful}"

    :goto_0
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v6}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    invoke-virtual {v6, v11}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    throw v2

    :catchall_1
    move-exception v2

    invoke-virtual {v7}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    invoke-virtual {v7, v11}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-direct {p0, v2, v4}, Lorg/h2/server/web/WebApp;->getLoginError(Ljava/lang/Exception;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private tools()Ljava/lang/String;
    .locals 7

    const-string v0, "toolResult"

    const-string v1, "tool"

    :try_start_0
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v3, "args"

    invoke-virtual {v1, v3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "Backup"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/h2/tools/Backup;

    invoke-direct {v2}, Lorg/h2/tools/Backup;-><init>()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const-string v3, "Restore"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lorg/h2/tools/Restore;

    invoke-direct {v2}, Lorg/h2/tools/Restore;-><init>()V

    goto :goto_0

    :cond_1
    const-string v3, "Recover"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lorg/h2/tools/Recover;

    invoke-direct {v2}, Lorg/h2/tools/Recover;-><init>()V

    goto :goto_0

    :cond_2
    const-string v3, "DeleteDbFiles"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lorg/h2/tools/DeleteDbFiles;

    invoke-direct {v2}, Lorg/h2/tools/DeleteDbFiles;-><init>()V

    goto :goto_0

    :cond_3
    const-string v3, "ChangeFileEncryption"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v2}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    goto :goto_0

    :cond_4
    const-string v3, "Script"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lorg/h2/tools/Script;

    invoke-direct {v2}, Lorg/h2/tools/Script;-><init>()V

    goto :goto_0

    :cond_5
    const-string v3, "RunScript"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lorg/h2/tools/RunScript;

    invoke-direct {v2}, Lorg/h2/tools/RunScript;-><init>()V

    goto :goto_0

    :cond_6
    const-string v3, "ConvertTraceFile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lorg/h2/tools/ConvertTraceFile;

    invoke-direct {v2}, Lorg/h2/tools/ConvertTraceFile;-><init>()V

    goto :goto_0

    :cond_7
    const-string v3, "CreateCluster"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lorg/h2/tools/CreateCluster;

    invoke-direct {v2}, Lorg/h2/tools/CreateCluster;-><init>()V

    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/PrintStream;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v4, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/h2/util/Tool;->setOut(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/h2/util/Tool;->runTool([Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2, v0, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v3, 0x1

    invoke-direct {p0, v4, v1, v3}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :goto_2
    const-string v0, "tools.jsp"

    return-object v0
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private unescapeData(Ljava/lang/String;Ljava/sql/ResultSet;I)V
    .locals 2

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/sql/ResultSet;->updateNull(I)V

    return-void

    :cond_0
    const-string v0, "=+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "=*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "1"

    :goto_0
    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "12:00:00"

    goto :goto_0

    :pswitch_1
    const-string p1, "2001-01-01"

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    const-string v0, "= "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-interface {p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    return-void

    :cond_4
    const/4 v1, -0x6

    if-eq v0, v1, :cond_a

    const/4 v1, -0x5

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateFloat(IF)V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Ljava/sql/ResultSet;->updateDouble(ID)V

    goto :goto_2

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateInt(II)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3, v0}, Ljava/sql/ResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_2

    :cond_9
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Ljava/sql/ResultSet;->updateLong(IJ)V

    goto :goto_2

    :cond_a
    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateShort(IS)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adminShutdown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->shutdown()V

    const-string v0, "admin.jsp"

    return-object v0
.end method

.method public getCache()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/web/WebApp;->cache:Z

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lorg/h2/server/web/WebSession;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    return-object v0
.end method

.method public processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v2, "ico"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "image/x-icon"

    :goto_1
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    goto :goto_4

    :cond_1
    const-string v2, "gif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p2, "image/gif"

    goto :goto_1

    :cond_2
    const-string v2, "css"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string p2, "text/css"

    :goto_2
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const-string v2, "html"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "do"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "jsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, "js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    if-eqz p2, :cond_5

    const-string p2, "text/javascript"

    goto :goto_2

    :cond_5
    const-string p2, "application/octet-stream"

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string v0, "text/html"

    iput-object v0, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p2}, Lorg/h2/server/web/WebServer;->createNewSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string p2, "notAllowed.jsp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p1, "index.do"

    :cond_7
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mimeType="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    const-string p2, ".do"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lorg/h2/server/web/WebApp;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public query(Ljava/sql/Connection;Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 8

    .line 2
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "<br />"

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "@edit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v0, 0x1

    add-int/lit8 v4, p3, 0x1

    if-ne p4, v0, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->getResult(Ljava/sql/Connection;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setSession(Lorg/h2/server/web/WebSession;Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object p2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    return-void
.end method
