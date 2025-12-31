.class Lorg/h2/fulltext/FullTextSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SETTINGS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/fulltext/FullTextSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Lorg/h2/util/SoftHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SoftHashMap<",
            "Ljava/sql/Connection;",
            "Lorg/h2/util/SoftHashMap<",
            "Ljava/lang/String;",
            "Ljava/sql/PreparedStatement;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ignoreList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final indexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/fulltext/IndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private whitespaceChars:Ljava/lang/String;

.field private final words:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/fulltext/FullTextSettings;->SETTINGS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->ignoreList:Ljava/util/HashSet;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->words:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->indexes:Ljava/util/HashMap;

    new-instance v0, Lorg/h2/util/SoftHashMap;

    invoke-direct {v0}, Lorg/h2/util/SoftHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->cache:Lorg/h2/util/SoftHashMap;

    const-string v0, " \t\n\r\u000c+\"*%&/()=?\'!,.;:-_#@|^~`{}[]<>\\"

    iput-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->whitespaceChars:Ljava/lang/String;

    return-void
.end method

.method public static closeAll()V
    .locals 1

    sget-object v0, Lorg/h2/fulltext/FullTextSettings;->SETTINGS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    const-string v0, "CALL IFNULL(DATABASE_PATH(), \'MEM:\' || DATABASE())"

    invoke-interface {p0, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEM:UNNAMED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V

    return-object v0

    :cond_0
    const-string p0, "Fulltext search for private (unnamed) in-memory databases is not supported."

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;
    .locals 2

    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/h2/fulltext/FullTextSettings;->SETTINGS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/fulltext/FullTextSettings;

    if-nez v1, :cond_0

    new-instance v1, Lorg/h2/fulltext/FullTextSettings;

    invoke-direct {v1}, Lorg/h2/fulltext/FullTextSettings;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addIndexInfo(Lorg/h2/fulltext/IndexInfo;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->indexes:Ljava/util/HashMap;

    iget v1, p1, Lorg/h2/fulltext/IndexInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public convertWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->ignoreList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getIgnoreList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->ignoreList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getIndexInfo(I)Lorg/h2/fulltext/IndexInfo;
    .locals 1

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->indexes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/fulltext/IndexInfo;

    return-object p1
.end method

.method public getWhitespaceChars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->whitespaceChars:Ljava/lang/String;

    return-object v0
.end method

.method public getWordList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->words:Ljava/util/HashMap;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/fulltext/FullTextSettings;->initialized:Z

    return v0
.end method

.method public declared-synchronized prepare(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->cache:Lorg/h2/util/SoftHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/SoftHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/util/SoftHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/util/SoftHashMap;

    invoke-direct {v0}, Lorg/h2/util/SoftHashMap;-><init>()V

    iget-object v1, p0, Lorg/h2/fulltext/FullTextSettings;->cache:Lorg/h2/util/SoftHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/h2/util/SoftHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Lorg/h2/util/SoftHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/h2/util/SoftHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public removeAllIndexes()V
    .locals 1

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->indexes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public removeIndexInfo(Lorg/h2/fulltext/IndexInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/fulltext/FullTextSettings;->indexes:Ljava/util/HashMap;

    iget p1, p1, Lorg/h2/fulltext/IndexInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/fulltext/FullTextSettings;->initialized:Z

    return-void
.end method

.method public setWhitespaceChars(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/fulltext/FullTextSettings;->whitespaceChars:Ljava/lang/String;

    return-void
.end method
