.class public Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/api/Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/fulltext/FullTextLucene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullTextTrigger"
.end annotation


# instance fields
.field protected columnTypes:[I

.field protected columns:[Ljava/lang/String;

.field protected indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

.field protected indexColumns:[I

.field protected indexPath:Ljava/lang/String;

.field protected keys:[I

.field protected schema:Ljava/lang/String;

.field protected table:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getQuery([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->schema:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_0
    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->table:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->keys:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    const-string v5, " AND "

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    aget-object v5, p1, v4

    if-nez v5, :cond_1

    const-string v4, " IS NULL"

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    aget v4, v7, v4

    invoke-static {v5, v4}, Lorg/h2/fulltext/FullText;->quoteSQL(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/fulltext/FullTextLucene;->removeIndexAccess(Lorg/h2/fulltext/FullTextLucene$IndexAccess;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    :cond_0
    return-void
.end method

.method public commitIndex()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v0, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v0}, Lorg/apache/lucene/index/IndexWriter;->commit()V

    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v0, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    invoke-virtual {v0}, Lorg/apache/lucene/search/IndexSearcher;->close()V

    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v0, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    invoke-virtual {v0}, Lorg/apache/lucene/index/IndexReader;->close()V

    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v1, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/lucene/index/IndexReader;->open(Lorg/apache/lucene/index/IndexWriter;Z)Lorg/apache/lucene/index/IndexReader;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    new-instance v1, Lorg/apache/lucene/search/IndexSearcher;

    iget-object v2, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v2, v2, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    invoke-direct {v1, v2}, Lorg/apache/lucene/search/IndexSearcher;-><init>(Lorg/apache/lucene/index/IndexReader;)V

    iput-object v1, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public delete([Ljava/lang/Object;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->getQuery([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/apache/lucene/index/Term;

    const-string v1, "_QUERY"

    invoke-direct {v0, v1, p1}, Lorg/apache/lucene/index/Term;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object p1, p1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1, v0}, Lorg/apache/lucene/index/IndexWriter;->deleteDocuments(Lorg/apache/lucene/index/Term;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->commitIndex()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    invoke-static {p2, p3, v0}, Lorg/h2/fulltext/FullText;->hasChanged([Ljava/lang/Object;[Ljava/lang/Object;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->delete([Ljava/lang/Object;Z)V

    :goto_0
    invoke-virtual {p0, p3, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->insert([Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->delete([Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    iput-object p2, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->schema:Ljava/lang/String;

    iput-object p4, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->table:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexPath:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p5

    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p4}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p5, v1, p6, v0, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p6

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p6}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    const-string v3, "COLUMN_NAME"

    if-eqz v2, :cond_0

    invoke-interface {p6, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p6

    new-array p6, p6, [I

    iput-object p6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/String;

    iput-object p6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p4}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, p6, v2, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p6

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p6}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    const-string v7, "DATA_TYPE"

    invoke-interface {p6, v7}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v4

    add-int/2addr v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-nez p6, :cond_2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, v1, p6, p4}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/sql/ResultSet;->next()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p5, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-eqz p5, :cond_5

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p5

    const-string p6, "SELECT COLUMNS FROM FTL.INDEXES WHERE SCHEMA=? AND TABLE=?"

    invoke-interface {p1, p6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1, v6, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    invoke-interface {p1, p2, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p2, 0x2c

    invoke-static {p1, p2, v6}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_3
    if-ge v2, p2, :cond_3

    aget-object p4, p1, v2

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->keys:[I

    invoke-static {p1, p3, v0}, Lorg/h2/fulltext/FullText;->setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    invoke-static {p1, p5, v0}, Lorg/h2/fulltext/FullText;->setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No primary key for table "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public insert([Ljava/lang/Object;Z)V
    .locals 10

    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->getQuery([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/lucene/document/Document;

    invoke-direct {v1}, Lorg/apache/lucene/document/Document;-><init>()V

    new-instance v2, Lorg/apache/lucene/document/Field;

    sget-object v3, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    sget-object v4, Lorg/apache/lucene/document/Field$Index;->NOT_ANALYZED:Lorg/apache/lucene/document/Field$Index;

    const-string v5, "_QUERY"

    invoke-direct {v2, v5, v0, v3, v4}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v2}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lorg/apache/lucene/document/Field;

    sget-object v4, Lorg/apache/lucene/document/DateTools$Resolution;->SECOND:Lorg/apache/lucene/document/DateTools$Resolution;

    invoke-static {v2, v3, v4}, Lorg/apache/lucene/document/DateTools;->timeToString(JLorg/apache/lucene/document/DateTools$Resolution;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    sget-object v4, Lorg/apache/lucene/document/Field$Index;->NOT_ANALYZED:Lorg/apache/lucene/document/Field$Index;

    const-string v5, "_modified"

    invoke-direct {v0, v5, v2, v3, v4}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v0}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    iget-object v6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    aget-object v6, v6, v5

    aget-object v7, p1, v5

    iget-object v8, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    aget v5, v8, v5

    invoke-static {v7, v5}, Lorg/h2/fulltext/FullText;->asString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v7, Lorg/apache/lucene/document/Field;

    sget-object v8, Lorg/apache/lucene/document/Field$Store;->NO:Lorg/apache/lucene/document/Field$Store;

    sget-object v9, Lorg/apache/lucene/document/Field$Index;->ANALYZED:Lorg/apache/lucene/document/Field$Index;

    invoke-direct {v7, v6, v5, v8, v9}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v7}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    const-string v6, " "

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lorg/h2/fulltext/FullTextLucene;->STORE_DOCUMENT_TEXT_IN_INDEX:Z

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/lucene/document/Field$Store;->NO:Lorg/apache/lucene/document/Field$Store;

    :goto_1
    new-instance v2, Lorg/apache/lucene/document/Field;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/lucene/document/Field$Index;->ANALYZED:Lorg/apache/lucene/document/Field$Index;

    const-string v4, "_DATA"

    invoke-direct {v2, v4, v0, p1, v3}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v2}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    :try_start_0
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object p1, p1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1, v1}, Lorg/apache/lucene/index/IndexWriter;->addDocument(Lorg/apache/lucene/document/Document;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->commitIndex()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :goto_3
    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public remove()V
    .locals 0

    return-void
.end method
