.class public Lorg/h2/fulltext/FullTextLucene;
.super Lorg/h2/fulltext/FullText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/fulltext/FullTextLucene$IndexAccess;,
        Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;
    }
.end annotation


# static fields
.field private static final INDEX_ACCESS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/fulltext/FullTextLucene$IndexAccess;",
            ">;"
        }
    .end annotation
.end field

.field private static final IN_MEMORY_PREFIX:Ljava/lang/String; = "mem:"

.field private static final LUCENE_FIELD_COLUMN_PREFIX:Ljava/lang/String; = "_"

.field private static final LUCENE_FIELD_DATA:Ljava/lang/String; = "_DATA"

.field private static final LUCENE_FIELD_MODIFIED:Ljava/lang/String; = "_modified"

.field private static final LUCENE_FIELD_QUERY:Ljava/lang/String; = "_QUERY"

.field private static final SCHEMA:Ljava/lang/String; = "FTL"

.field protected static final STORE_DOCUMENT_TEXT_IN_INDEX:Z

.field private static final TRIGGER_PREFIX:Ljava/lang/String; = "FTL_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "h2.storeDocumentTextInIndex"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/fulltext/FullTextLucene;->STORE_DOCUMENT_TEXT_IN_INDEX:Z

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/fulltext/FullText;-><init>()V

    return-void
.end method

.method public static convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 3

    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error while indexing document"

    const-string v2, "FULLTEXT"

    invoke-direct {v0, v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static createIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->init(Ljava/sql/Connection;)V

    const-string v0, "INSERT INTO FTL.INDEXES(SCHEMA, TABLE, COLUMNS) VALUES(?, ?, ?)"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullTextLucene;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullTextLucene;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "."

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "FTL_"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "DROP TRIGGER IF EXISTS "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    if-eqz p3, :cond_0

    .line 65
    .line 66
    const-string p3, "CREATE TRIGGER IF NOT EXISTS "

    .line 67
    .line 68
    const-string v1, " AFTER INSERT, UPDATE, DELETE, ROLLBACK ON "

    .line 69
    .line 70
    invoke-static {p3, v0, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x2e

    .line 82
    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " FOR EACH ROW CALL \""

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-class p1, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/16 p1, 0x22

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    :cond_0
    return-void
.end method

.method public static createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/h2/fulltext/FullTextLucene;->createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static dropAll(Ljava/sql/Connection;)V
    .locals 2

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "DROP SCHEMA IF EXISTS FTL"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "FTL_"

    invoke-static {p0, v0}, Lorg/h2/fulltext/FullText;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->removeIndexFiles(Ljava/sql/Connection;)V

    return-void
.end method

.method public static dropIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->init(Ljava/sql/Connection;)V

    const-string v0, "DELETE FROM FTL.INDEXES WHERE SCHEMA=? AND TABLE=?"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->reindex(Ljava/sql/Connection;)V

    return-void
.end method

.method public static getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;
    .locals 5

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "mem:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/lucene/store/RAMDirectory;

    invoke-direct {v1}, Lorg/apache/lucene/store/RAMDirectory;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/lucene/store/FSDirectory;->open(Ljava/io/File;)Lorg/apache/lucene/store/FSDirectory;

    move-result-object v1

    :goto_0
    new-instance v2, Lorg/apache/lucene/analysis/standard/StandardAnalyzer;

    sget-object v3, Lorg/apache/lucene/util/Version;->LUCENE_30:Lorg/apache/lucene/util/Version;

    invoke-direct {v2, v3}, Lorg/apache/lucene/analysis/standard/StandardAnalyzer;-><init>(Lorg/apache/lucene/util/Version;)V

    new-instance v3, Lorg/apache/lucene/index/IndexWriterConfig;

    sget-object v4, Lorg/apache/lucene/util/Version;->LUCENE_30:Lorg/apache/lucene/util/Version;

    invoke-direct {v3, v4, v2}, Lorg/apache/lucene/index/IndexWriterConfig;-><init>(Lorg/apache/lucene/util/Version;Lorg/apache/lucene/analysis/Analyzer;)V

    sget-object v2, Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;->CREATE_OR_APPEND:Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;

    invoke-virtual {v3, v2}, Lorg/apache/lucene/index/IndexWriterConfig;->setOpenMode(Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;)Lorg/apache/lucene/index/IndexWriterConfig;

    new-instance v2, Lorg/apache/lucene/index/IndexWriter;

    invoke-direct {v2, v1, v3}, Lorg/apache/lucene/index/IndexWriter;-><init>(Lorg/apache/lucene/store/Directory;Lorg/apache/lucene/index/IndexWriterConfig;)V

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lorg/apache/lucene/index/IndexReader;->open(Lorg/apache/lucene/index/IndexWriter;Z)Lorg/apache/lucene/index/IndexReader;

    move-result-object v1

    new-instance v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    invoke-direct {v3}, Lorg/h2/fulltext/FullTextLucene$IndexAccess;-><init>()V

    iput-object v2, v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    iput-object v1, v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    new-instance v2, Lorg/apache/lucene/search/IndexSearcher;

    invoke-direct {v2, v1}, Lorg/apache/lucene/search/IndexSearcher;-><init>(Lorg/apache/lucene/index/IndexReader;)V

    iput-object v2, v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "CALL DATABASE_PATH()"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mem:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-le p0, v1, :cond_1

    add-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    return-object v2
.end method

.method public static indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;

    invoke-direct {v7}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result p1

    :goto_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v7, p2, v0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->insert([Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->commitIndex()V

    return-void
.end method

.method public static init(Ljava/sql/Connection;)V
    .locals 4

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "CREATE SCHEMA IF NOT EXISTS FTL"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FTL.INDEXES(SCHEMA VARCHAR, TABLE VARCHAR, COLUMNS VARCHAR, PRIMARY KEY(SCHEMA, TABLE))"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_CREATE_INDEX FOR \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".createIndex\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FTL_DROP_INDEX FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dropIndex\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FTL_SEARCH FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".search\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FTL_SEARCH_DATA FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".searchData\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FTL_REINDEX FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reindex\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FTL_DROP_ALL FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dropAll\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static reindex(Ljava/sql/Connection;)V
    .locals 3

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->init(Ljava/sql/Connection;)V

    const-string v0, "FTL_"

    invoke-static {p0, v0}, Lorg/h2/fulltext/FullText;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->removeIndexFiles(Ljava/sql/Connection;)V

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "SELECT * FROM FTL.INDEXES"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEMA"

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TABLE"

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullTextLucene;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullTextLucene;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeIndexAccess(Lorg/h2/fulltext/FullTextLucene$IndexAccess;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    invoke-virtual {p1}, Lorg/apache/lucene/search/IndexSearcher;->close()V

    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    invoke-virtual {p1}, Lorg/apache/lucene/index/IndexReader;->close()V

    iget-object p0, p0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p0}, Lorg/apache/lucene/index/IndexWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static removeIndexFiles(Ljava/sql/Connection;)V
    .locals 1

    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lorg/h2/fulltext/FullTextLucene;->removeIndexAccess(Lorg/h2/fulltext/FullTextLucene$IndexAccess;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mem:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/store/fs/FileUtils;->deleteRecursive(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static search(Ljava/sql/Connection;Ljava/lang/String;II)Ljava/sql/ResultSet;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullTextLucene;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method public static search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;
    .locals 16

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {p4 .. p4}, Lorg/h2/fulltext/FullText;->createResultSet(Z)Lorg/h2/tools/SimpleResultSet;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v6

    invoke-interface {v6}, Ljava/sql/DatabaseMetaData;->getURL()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jdbc:columnlist:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_5

    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    move-result-object v6

    iget-object v7, v6, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    iget-object v6, v6, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v6}, Lorg/apache/lucene/index/IndexWriter;->getAnalyzer()Lorg/apache/lucene/analysis/Analyzer;

    move-result-object v6

    new-instance v8, Lorg/apache/lucene/queryParser/QueryParser;

    sget-object v9, Lorg/apache/lucene/util/Version;->LUCENE_30:Lorg/apache/lucene/util/Version;

    const-string v10, "_DATA"

    invoke-direct {v8, v9, v10, v6}, Lorg/apache/lucene/queryParser/QueryParser;-><init>(Lorg/apache/lucene/util/Version;Ljava/lang/String;Lorg/apache/lucene/analysis/Analyzer;)V

    invoke-virtual {v8, v1}, Lorg/apache/lucene/queryParser/QueryParser;->parse(Ljava/lang/String;)Lorg/apache/lucene/search/Query;

    move-result-object v1

    if-nez p2, :cond_2

    const/16 v6, 0x64

    goto :goto_0

    :cond_2
    move/from16 v6, p2

    :goto_0
    add-int v6, v6, p3

    invoke-virtual {v7, v1, v6}, Lorg/apache/lucene/search/IndexSearcher;->search(Lorg/apache/lucene/search/Query;I)Lorg/apache/lucene/search/TopDocs;

    move-result-object v1

    if-nez p2, :cond_3

    iget v6, v1, Lorg/apache/lucene/search/TopDocs;->totalHits:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    move/from16 v6, p2

    :goto_1
    iget-object v8, v1, Lorg/apache/lucene/search/TopDocs;->scoreDocs:[Lorg/apache/lucene/search/ScoreDoc;

    array-length v8, v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_5

    add-int v10, v9, p3

    iget v11, v1, Lorg/apache/lucene/search/TopDocs;->totalHits:I

    if-ge v10, v11, :cond_5

    if-ge v10, v8, :cond_5

    iget-object v11, v1, Lorg/apache/lucene/search/TopDocs;->scoreDocs:[Lorg/apache/lucene/search/ScoreDoc;

    aget-object v10, v11, v10

    iget v11, v10, Lorg/apache/lucene/search/ScoreDoc;->doc:I

    invoke-virtual {v7, v11}, Lorg/apache/lucene/search/IndexSearcher;->doc(I)Lorg/apache/lucene/document/Document;

    move-result-object v11

    iget v10, v10, Lorg/apache/lucene/search/ScoreDoc;->score:F

    const-string v12, "_QUERY"

    invoke-virtual {v11, v12}, Lorg/apache/lucene/document/Document;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p4, :cond_4

    const-string v12, " WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    move-object v13, v0

    check-cast v13, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v13}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v13

    check-cast v13, Lorg/h2/engine/Session;

    new-instance v14, Lorg/h2/command/Parser;

    invoke-direct {v14, v13}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v13

    check-cast v13, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v13}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x7

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lorg/h2/fulltext/FullText;->parseKey(Ljava/sql/Connection;Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v11

    aget-object v12, v11, v3

    aget-object v11, v11, v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v3

    aput-object v13, v15, v4

    aput-object v12, v15, v2

    const/4 v12, 0x3

    aput-object v11, v15, v12

    const/4 v11, 0x4

    aput-object v10, v15, v11

    invoke-virtual {v5, v15}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v3

    aput-object v10, v12, v4

    invoke-virtual {v5, v12}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/2addr v9, v4

    goto :goto_2

    :cond_5
    return-object v5

    :goto_4
    invoke-static {v0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_5
    return-object v5
.end method

.method public static searchData(Ljava/sql/Connection;Ljava/lang/String;II)Ljava/sql/ResultSet;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullTextLucene;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method
