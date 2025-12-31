.class public Lorg/h2/bnf/context/DbSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final contents:Lorg/h2/bnf/context/DbContents;

.field public final isDefault:Z

.field public final isSystem:Z

.field public final name:Ljava/lang/String;

.field private procedures:[Lorg/h2/bnf/context/DbProcedure;

.field public final quotedName:Ljava/lang/String;

.field private tables:[Lorg/h2/bnf/context/DbTableOrView;


# direct methods
.method public constructor <init>(Lorg/h2/bnf/context/DbContents;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/bnf/context/DbSchema;->contents:Lorg/h2/bnf/context/DbContents;

    iput-object p2, p0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/h2/bnf/context/DbContents;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/h2/bnf/context/DbSchema;->isDefault:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    :goto_0
    iput-boolean p3, p0, Lorg/h2/bnf/context/DbSchema;->isSystem:Z

    goto :goto_1

    :cond_0
    const-string v0, "INFORMATION_SCHEMA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbContents;->isPostgreSQL()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbContents;->isDerby()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SYS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/bnf/context/DbSchema;->isSystem:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public getContents()Lorg/h2/bnf/context/DbContents;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbSchema;->contents:Lorg/h2/bnf/context/DbContents;

    return-object v0
.end method

.method public getProcedures()[Lorg/h2/bnf/context/DbProcedure;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbSchema;->procedures:[Lorg/h2/bnf/context/DbProcedure;

    return-object v0
.end method

.method public getTables()[Lorg/h2/bnf/context/DbTableOrView;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbSchema;->tables:[Lorg/h2/bnf/context/DbTableOrView;

    return-object v0
.end method

.method public readProcedures(Ljava/sql/DatabaseMetaData;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v0}, Ljava/sql/DatabaseMetaData;->getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/h2/bnf/context/DbProcedure;

    invoke-direct {v2, p0, v0}, Lorg/h2/bnf/context/DbProcedure;-><init>(Lorg/h2/bnf/context/DbSchema;Ljava/sql/ResultSet;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/bnf/context/DbProcedure;

    iput-object v0, p0, Lorg/h2/bnf/context/DbSchema;->procedures:[Lorg/h2/bnf/context/DbProcedure;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/bnf/context/DbSchema;->procedures:[Lorg/h2/bnf/context/DbProcedure;

    array-length v1, v0

    sget v2, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_PROCEDURES_LIST_COLUMNS:I

    if-ge v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/h2/bnf/context/DbProcedure;->readParameters(Ljava/sql/DatabaseMetaData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public readTables(Ljava/sql/DatabaseMetaData;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v0, p2}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p2

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/h2/bnf/context/DbTableOrView;

    invoke-direct {v1, p0, p2}, Lorg/h2/bnf/context/DbTableOrView;-><init>(Lorg/h2/bnf/context/DbSchema;Ljava/sql/ResultSet;)V

    iget-object v2, p0, Lorg/h2/bnf/context/DbSchema;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v2}, Lorg/h2/bnf/context/DbContents;->isOracle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lorg/h2/bnf/context/DbTableOrView;

    iput-object p2, p0, Lorg/h2/bnf/context/DbSchema;->tables:[Lorg/h2/bnf/context/DbTableOrView;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p2, p0, Lorg/h2/bnf/context/DbSchema;->tables:[Lorg/h2/bnf/context/DbTableOrView;

    array-length v0, p2

    sget v1, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_TABLES_LIST_COLUMNS:I

    if-ge v0, v1, :cond_2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    :try_start_0
    invoke-virtual {v2, p1}, Lorg/h2/bnf/context/DbTableOrView;->readColumns(Ljava/sql/DatabaseMetaData;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
