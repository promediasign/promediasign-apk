.class Lorg/h2/server/web/WebSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_HISTORY:I = 0x3e8


# instance fields
.field private bnf:Lorg/h2/bnf/Bnf;

.field private final commandHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conn:Ljava/sql/Connection;

.field private contents:Lorg/h2/bnf/context/DbContents;

.field executingStatement:Ljava/sql/Statement;

.field lastAccess:J

.field locale:Ljava/util/Locale;

.field final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private meta:Ljava/sql/DatabaseMetaData;

.field result:Ljava/sql/ResultSet;

.field private final server:Lorg/h2/server/web/WebServer;

.field private shutdownServerOnDisconnect:Z


# direct methods
.method public constructor <init>(Lorg/h2/server/web/WebServer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    new-instance v0, Lorg/h2/bnf/context/DbContents;

    invoke-direct {v0}, Lorg/h2/bnf/context/DbContents;-><init>()V

    iput-object v0, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    iput-object p1, p0, Lorg/h2/server/web/WebSession;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {p1}, Lorg/h2/server/web/WebServer;->getCommandHistoryList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/h2/server/web/WebSession;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {p1}, Lorg/h2/server/web/WebServer;->isCommandHistoryAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/h2/server/web/WebSession;->server:Lorg/h2/server/web/WebServer;

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/h2/server/web/WebServer;->saveCommandHistoryList(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/WebSession;->conn:Ljava/sql/Connection;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "sessions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/h2/server/web/WebSession;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {p1}, Lorg/h2/server/web/WebServer;->getSessions()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBnf()Lorg/h2/bnf/Bnf;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->bnf:Lorg/h2/bnf/Bnf;

    return-object v0
.end method

.method public getCommand(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCommandHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->conn:Ljava/sql/Connection;

    return-object v0
.end method

.method public getContents()Lorg/h2/bnf/context/DbContents;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    return-object v0
.end method

.method public getInfo()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v1, Ljava/sql/Timestamp;

    iget-wide v2, p0, Lorg/h2/server/web/WebSession;->lastAccess:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastAccess"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "url"

    iget-object v2, p0, Lorg/h2/server/web/WebSession;->conn:Ljava/sql/Connection;

    if-nez v2, :cond_0

    const-string v2, "${text.admin.notConnected}"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_0
    invoke-interface {v2}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getURL()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget-object v2, p0, Lorg/h2/server/web/WebSession;->conn:Ljava/sql/Connection;

    if-nez v2, :cond_1

    const-string v2, "-"

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastQuery"

    iget-object v2, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/h2/server/web/WebSession;->commandHistory:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "executing"

    iget-object v2, p0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    if-nez v2, :cond_3

    const-string v2, "${text.admin.no}"

    goto :goto_3

    :cond_3
    const-string v2, "${text.admin.yes}"

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {v1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->meta:Ljava/sql/DatabaseMetaData;

    return-object v0
.end method

.method public getShutdownServerOnDisconnect()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/web/WebSession;->shutdownServerOnDisconnect:Z

    return v0
.end method

.method public loadBnf()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/h2/bnf/Bnf;->getInstance(Ljava/io/Reader;)Lorg/h2/bnf/Bnf;

    move-result-object v0

    new-instance v1, Lorg/h2/bnf/context/DbContextRule;

    iget-object v2, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    new-instance v2, Lorg/h2/bnf/context/DbContextRule;

    iget-object v3, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    new-instance v3, Lorg/h2/bnf/context/DbContextRule;

    iget-object v4, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    new-instance v4, Lorg/h2/bnf/context/DbContextRule;

    iget-object v5, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    new-instance v5, Lorg/h2/bnf/context/DbContextRule;

    iget-object v6, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    new-instance v6, Lorg/h2/bnf/context/DbContextRule;

    iget-object v7, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    new-instance v7, Lorg/h2/bnf/context/DbContextRule;

    iget-object v8, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    const-string v8, "procedure"

    invoke-virtual {v0, v8, v7}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    const-string v7, "column_name"

    invoke-virtual {v0, v7, v1}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    const-string v1, "new_table_alias"

    invoke-virtual {v0, v1, v2}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    const-string v1, "table_alias"

    invoke-virtual {v0, v1, v3}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    const-string v1, "column_alias"

    invoke-virtual {v0, v1, v6}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    const-string v1, "table_name"

    invoke-virtual {v0, v1, v4}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    const-string v1, "schema_name"

    invoke-virtual {v0, v1, v5}, Lorg/h2/bnf/Bnf;->updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V

    invoke-virtual {v0}, Lorg/h2/bnf/Bnf;->linkStatements()V

    iput-object v0, p0, Lorg/h2/server/web/WebSession;->bnf:Lorg/h2/bnf/Bnf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/server/web/WebSession;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConnection(Ljava/sql/Connection;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/server/web/WebSession;->conn:Ljava/sql/Connection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/h2/server/web/WebSession;->meta:Ljava/sql/DatabaseMetaData;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/h2/bnf/context/DbContents;

    invoke-direct {p1}, Lorg/h2/bnf/context/DbContents;-><init>()V

    iput-object p1, p0, Lorg/h2/server/web/WebSession;->contents:Lorg/h2/bnf/context/DbContents;

    return-void
.end method

.method public setShutdownServerOnDisconnect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/server/web/WebSession;->shutdownServerOnDisconnect:Z

    return-void
.end method
