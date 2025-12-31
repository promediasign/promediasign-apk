.class public Lorg/h2/server/pg/PgServerThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/pg/PgServerThread$Portal;,
        Lorg/h2/server/pg/PgServerThread$Prepared;
    }
.end annotation


# instance fields
.field private activeRequest:Lorg/h2/jdbc/JdbcStatement;

.field private clientEncoding:Ljava/lang/String;

.field private conn:Ljava/sql/Connection;

.field private dataIn:Ljava/io/DataInputStream;

.field private dataInRaw:Ljava/io/DataInputStream;

.field private dataOut:Ljava/io/DataOutputStream;

.field private databaseName:Ljava/lang/String;

.field private dateStyle:Ljava/lang/String;

.field private initDone:Z

.field private messageType:I

.field private out:Ljava/io/OutputStream;

.field private outBuffer:Ljava/io/ByteArrayOutputStream;

.field private final portals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/server/pg/PgServerThread$Portal;",
            ">;"
        }
    .end annotation
.end field

.field private final prepared:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/server/pg/PgServerThread$Prepared;",
            ">;"
        }
    .end annotation
.end field

.field private processId:I

.field private secret:I

.field private final server:Lorg/h2/server/pg/PgServer;

.field private socket:Ljava/net/Socket;

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/h2/server/pg/PgServer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/h2/engine/SysProperties;->PG_DEFAULT_CLIENT_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    const-string v0, "ISO"

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dateStyle:Ljava/lang/String;

    new-instance v0, Lorg/h2/value/CaseInsensitiveMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveMap;-><init>()V

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    new-instance v0, Lorg/h2/value/CaseInsensitiveMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveMap;-><init>()V

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    invoke-static {}, Lorg/h2/util/MathUtils;->secureRandomLong()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lorg/h2/server/pg/PgServerThread;->secret:I

    return-void
.end method

.method private declared-synchronized cancelRequest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private static checkParamLength(II)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "paramLen"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static formatAsText(I)Z
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getEncoding()Ljava/lang/String;
    .locals 2

    const-string v0, "UNICODE"

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-8"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    return-object v0
.end method

.method private getSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show max_identifier_length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CALL 63"

    goto :goto_0

    :cond_0
    const-string v1, "set client_encoding to"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "set DATESTYLE ISO"

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0}, Lorg/h2/server/pg/PgServer;->getTrace()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private static getTypeSize(II)I
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x413

    if-eq p0, v0, :cond_0

    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0xa

    const/16 p0, 0xff

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private initDb()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    const-string v3, "PG_CATALOG"

    const-string v4, "PG_VERSION"

    invoke-interface {v2, v0, v3, v4, v0}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    if-nez v3, :cond_0

    invoke-static {v0}, Lorg/h2/server/pg/PgServerThread;->installPgCatalog(Ljava/sql/Statement;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_4

    :cond_0
    :goto_0
    const-string v3, "select * from pg_catalog.pg_version"

    invoke-interface {v0, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    if-gt v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "Incompatible PG_VERSION"

    invoke-static {v3}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/h2/server/pg/PgServerThread;->installPgCatalog(Ljava/sql/Statement;)V

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "set search_path = PUBLIC, pg_catalog"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v1}, Lorg/h2/server/pg/PgServer;->getTypeSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "select oid from pg_catalog.pg_type"

    invoke-interface {v0, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_4
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return-void

    :catchall_2
    move-exception v3

    move-object v2, v0

    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_3
    move-exception v1

    move-object v2, v0

    :goto_5
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw v1
.end method

.method private static installPgCatalog(Ljava/sql/Statement;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "/org/h2/server/pg/pg_catalog.sql"

    invoke-static {v2}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/h2/util/ScriptReader;

    invoke-direct {v1, v0}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p0, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    const-string v0, "Can not read pg_catalog resource"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private process()V
    .locals 10

    const-string v0, "jdbc:h2:"

    iget-boolean v1, p0, Lorg/h2/server/pg/PgServerThread;->initDone:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    iput-boolean v2, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-static {v4}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    invoke-virtual {v6, v5, v3, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    const-string v4, ")"

    const-string v5, " ("

    if-eqz v1, :cond_20

    const/16 v6, 0x53

    if-eq v1, v6, :cond_1f

    const/16 v7, 0x58

    if-eq v1, v7, :cond_1e

    const/16 v7, 0x70

    if-eq v1, v7, :cond_1a

    const/16 v0, 0x50

    const/4 v2, 0x0

    if-eq v1, v0, :cond_16

    const/16 v7, 0x51

    if-eq v1, v7, :cond_11

    const-string v7, "expected S or P"

    const-string v8, "expected S or P, got "

    const-string v9, "Portal not found: "

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v2, "Unsupported: "

    .line 1
    invoke-static {v1, v2, v5}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v1, v1

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_0
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v4, "Execute"

    invoke-virtual {v1, v4}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/pg/PgServerThread$Portal;

    if-nez v1, :cond_2

    .line 3
    invoke-static {v9, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_2
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v0

    iget-object v4, v1, Lorg/h2/server/pg/PgServerThread$Portal;->prep:Lorg/h2/server/pg/PgServerThread$Prepared;

    iget-object v5, v4, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    iget-object v6, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    iget-object v4, v4, Lorg/h2/server/pg/PgServerThread$Prepared;->sql:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5, v0}, Lorg/h2/jdbc/JdbcStatement;->setMaxRows(I)V

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    invoke-virtual {v5}, Lorg/h2/jdbc/JdbcPreparedStatement;->execute()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v5}, Lorg/h2/jdbc/JdbcStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lorg/h2/server/pg/PgServerThread$Portal;->resultColumnFormat:[I

    invoke-direct {p0, v0, v4}, Lorg/h2/server/pg/PgServerThread;->sendDataRow(Ljava/sql/ResultSet;[I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-direct {p0, v5, v3}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lorg/h2/jdbc/JdbcStatement;->getUpdateCount()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    goto/16 :goto_1b

    :goto_4
    :try_start_3
    invoke-virtual {v5}, Lorg/h2/jdbc/JdbcStatement;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendCancelQueryResponse()V

    goto :goto_3

    :cond_5
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_5
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    throw v0

    :pswitch_1
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readByte()B

    move-result v1

    int-to-char v1, v1

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v4, "Describe"

    invoke-virtual {v3, v4}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    if-ne v1, v6, :cond_7

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/pg/PgServerThread$Prepared;

    if-nez v0, :cond_6

    const-string v0, "Prepared not found: "

    .line 5
    invoke-static {v0, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_6
    :try_start_4
    iget-object v1, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    invoke-direct {p0, v1, v2}, Lorg/h2/server/pg/PgServerThread;->sendParameterDescription(Ljava/sql/ParameterMetaData;[I)V

    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendRowDescription(Ljava/sql/ResultSetMetaData;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1b

    :cond_7
    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/pg/PgServerThread$Portal;

    if-nez v0, :cond_8

    .line 7
    invoke-static {v9, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8
    :cond_8
    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Portal;->prep:Lorg/h2/server/pg/PgServerThread$Prepared;

    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    :try_start_5
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendRowDescription(Ljava/sql/ResultSetMetaData;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1b

    :cond_9
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_2
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readByte()B

    move-result v1

    int-to-char v1, v1

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v4, "Close"

    invoke-virtual {v3, v4}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    if-ne v1, v6, :cond_a

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/pg/PgServerThread$Prepared;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    goto :goto_7

    :cond_a
    if-ne v1, v0, :cond_c

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendCloseComplete()V

    goto/16 :goto_1b

    :cond_c
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Bind"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/server/pg/PgServerThread$Portal;

    invoke-direct {v0}, Lorg/h2/server/pg/PgServerThread$Portal;-><init>()V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Portal;->name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/pg/PgServerThread$Prepared;

    if-nez v1, :cond_d

    const-string v0, "Prepared not found"

    goto/16 :goto_0

    :cond_d
    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Portal;->prep:Lorg/h2/server/pg/PgServerThread$Prepared;

    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/h2/server/pg/PgServerThread$Portal;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v2

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_e

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v2, :cond_f

    :try_start_6
    iget-object v6, v1, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    iget-object v7, v1, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    aget v7, v7, v5

    invoke-direct {p0, v6, v7, v5, v4}, Lorg/h2/server/pg/PgServerThread;->setParameter(Ljava/sql/PreparedStatement;II[I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto/16 :goto_1b

    :cond_f
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v1

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/h2/server/pg/PgServerThread$Portal;->resultColumnFormat:[I

    :goto_a
    if-ge v3, v1, :cond_10

    iget-object v2, v0, Lorg/h2/server/pg/PgServerThread$Portal;->resultColumnFormat:[I

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendBindComplete()V

    goto/16 :goto_1b

    :cond_11
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Query"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/h2/util/ScriptReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    :goto_b
    :try_start_7
    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v0, :cond_12

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    :goto_c
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    goto :goto_12

    :cond_12
    :try_start_8
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->getSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    check-cast v4, Lorg/h2/jdbc/JdbcStatement;
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    invoke-virtual {v4, v0}, Lorg/h2/jdbc/JdbcStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lorg/h2/jdbc/JdbcStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v5
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->sendRowDescription(Ljava/sql/ResultSetMetaData;)V

    :goto_d
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-direct {p0, v0, v2}, Lorg/h2/server/pg/PgServerThread;->sendDataRow(Ljava/sql/ResultSet;[I)V

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_e

    :cond_13
    invoke-direct {p0, v4, v3}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_10

    :goto_e
    :try_start_b
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_f
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_11

    :cond_14
    :try_start_c
    invoke-virtual {v4}, Lorg/h2/jdbc/JdbcStatement;->getUpdateCount()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_10
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v4, v2

    :goto_11
    if-eqz v4, :cond_15

    :try_start_d
    invoke-virtual {v4}, Lorg/h2/jdbc/JdbcStatement;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendCancelQueryResponse()V

    goto :goto_f

    :cond_15
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_f

    :goto_12
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendReadyForQuery()V

    goto/16 :goto_1b

    :goto_13
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Parse"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/server/pg/PgServerThread$Prepared;

    invoke-direct {v0}, Lorg/h2/server/pg/PgServerThread$Prepared;-><init>()V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->getSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->sql:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v1

    if-lez v1, :cond_17

    new-array v2, v1, [I

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v1, :cond_17

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_17
    :try_start_e
    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    iget-object v5, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->sql:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    check-cast v4, Lorg/h2/jdbc/JdbcPreparedStatement;

    iput-object v4, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-virtual {v4}, Lorg/h2/jdbc/JdbcPreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/ParameterMetaData;->getParameterCount()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    :goto_15
    iget-object v5, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    array-length v5, v5

    if-ge v3, v5, :cond_19

    if-ge v3, v1, :cond_18

    aget v5, v2, v3

    if-eqz v5, :cond_18

    iget-object v6, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v6, v5}, Lorg/h2/server/pg/PgServer;->checkType(I)V

    goto :goto_16

    :cond_18
    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/sql/ParameterMetaData;->getParameterType(I)I

    move-result v5

    invoke-static {v5}, Lorg/h2/server/pg/PgServer;->convertType(I)I

    move-result v5

    :goto_16
    iget-object v6, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_19
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendParseComplete()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_1b

    :cond_1a
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v4, "PasswordMessage"

    invoke-virtual {v1, v4}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    :try_start_f
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string v5, "MODE"

    const-string v6, "PostgreSQL"

    invoke-virtual {v4, v5, v6}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "USER"

    iget-object v6, p0, Lorg/h2/server/pg/PgServerThread;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "PASSWORD"

    invoke-virtual {v4, v5, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {v1, v0, v4}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0}, Lorg/h2/server/pg/PgServer;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-static {}, Lorg/h2/engine/SysProperties;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_18

    :cond_1b
    :goto_17
    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Lorg/h2/engine/ConnectionInfo;->setBaseDir(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0}, Lorg/h2/server/pg/PgServer;->getIfExists()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "IFEXISTS"

    const-string v4, "TRUE"

    invoke-virtual {v1, v0, v4}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, v3}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/ConnectionInfo;Z)V

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->initDb()V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendAuthenticationOk()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_1b

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v2, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    goto/16 :goto_1b

    :cond_1e
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Terminate"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :goto_19
    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    goto/16 :goto_1b

    :cond_1f
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Sync"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_20
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Init"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v0

    const v1, 0x4d2162e

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "CancelRequest"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v0

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v1

    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v2, v0}, Lorg/h2/server/pg/PgServer;->getThread(I)Lorg/h2/server/pg/PgServerThread;

    move-result-object v2

    if-eqz v2, :cond_21

    iget v3, v2, Lorg/h2/server/pg/PgServerThread;->secret:I

    if-ne v1, v3, :cond_21

    invoke-direct {v2}, Lorg/h2/server/pg/PgServerThread;->cancelRequest()V

    goto :goto_19

    :cond_21
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid CancelRequest: pid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    goto :goto_19

    :cond_22
    const v1, 0x4d2162f

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "SSLRequest"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1b

    :cond_23
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v3, "StartupMessage"

    invoke-virtual {v1, v3}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v3, " version "

    .line 9
    invoke-static {v0, v3, v5}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v5, v0, 0x10

    .line 10
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :goto_1a
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendAuthenticationCleartextPassword()V

    iput-boolean v2, p0, Lorg/h2/server/pg/PgServerThread;->initDone:Z

    :goto_1b
    return-void

    :cond_24
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iput-object v1, p0, Lorg/h2/server/pg/PgServerThread;->userName:Ljava/lang/String;

    goto :goto_1c

    :cond_25
    const-string v3, "database"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v3, v1}, Lorg/h2/server/pg/PgServer;->checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/server/pg/PgServerThread;->databaseName:Ljava/lang/String;

    goto :goto_1c

    :cond_26
    const-string v3, "client_encoding"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iput-object v1, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    goto :goto_1c

    :cond_27
    const-string v3, "DateStyle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iput-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dateStyle:Ljava/lang/String;

    :cond_28
    :goto_1c
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " param "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    goto :goto_1a

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readByte()B
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method private readFully([B)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method private readInt()I
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readShort()S
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method private readString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private sendAuthenticationCleartextPassword()V
    .locals 1

    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendAuthenticationOk()V
    .locals 3

    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    const-string v0, "client_encoding"

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DateStyle"

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dateStyle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "integer_datetimes"

    const-string v1, "off"

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_superuser"

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_encoding"

    const-string v2, "SQL_ASCII"

    invoke-direct {p0, v0, v2}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_version"

    const-string v2, "8.1.4"

    invoke-direct {p0, v0, v2}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_authorization"

    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->userName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "standard_conforming_strings"

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimeZone"

    const-string v1, "CET"

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendBackendKeyData()V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendReadyForQuery()V

    return-void
.end method

.method private sendBackendKeyData()V
    .locals 1

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    iget v0, p0, Lorg/h2/server/pg/PgServerThread;->processId:I

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    iget v0, p0, Lorg/h2/server/pg/PgServerThread;->secret:I

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendBindComplete()V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendCancelQueryResponse()V
    .locals 2

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "CancelSuccessResponse"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "ERROR"

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "57014"

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "canceling statement due to user request"

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendCloseComplete()V
    .locals 1

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    .locals 4

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcStatement;->getLastExecutedCommandType()I

    move-result v0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    const/16 v1, 0x44

    const-string v2, "UPDATE "

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "check CommandComplete tag for command "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string p1, "BEGIN"

    goto :goto_1

    :cond_2
    const-string p1, "INSERT 0 "

    :goto_2
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "DELETE "

    goto :goto_2

    :cond_4
    const-string p1, "SELECT"

    goto :goto_1

    :goto_3
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendDataRow(Ljava/sql/ResultSet;[I)V
    .locals 9

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    const/16 v2, 0x44

    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v4

    invoke-static {v4}, Lorg/h2/server/pg/PgServer;->convertType(I)I

    move-result v4

    invoke-static {v4}, Lorg/h2/server/pg/PgServerThread;->formatAsText(I)Z

    move-result v5

    if-eqz p2, :cond_3

    array-length v6, p2

    if-nez v6, :cond_0

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    array-length v6, p2

    const/4 v7, 0x0

    if-ne v6, v2, :cond_2

    aget v5, p2, v7

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v3, -0x1

    array-length v8, p2

    if-ge v6, v8, :cond_3

    aget v5, p2, v6

    if-nez v5, :cond_1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-direct {p0, p1, v3, v4, v5}, Lorg/h2/server/pg/PgServerThread;->writeDataColumn(Ljava/sql/ResultSet;IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendErrorResponse(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "ERROR"

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendErrorResponse(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "ERROR"

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "08P01"

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendMessage()V
    .locals 4

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    iget v3, p0, Lorg/h2/server/pg/PgServerThread;->messageType:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private sendNoData()V
    .locals 1

    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendParameterDescription(Ljava/sql/ParameterMetaData;[I)V
    .locals 3

    invoke-interface {p1}, Ljava/sql/ParameterMetaData;->getParameterCount()I

    move-result p1

    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    if-eqz p2, :cond_0

    aget v1, p2, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x413

    :goto_1
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/pg/PgServer;->checkType(I)V

    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendParseComplete()V
    .locals 1

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendReadyForQuery()V
    .locals 1

    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    goto :goto_0

    :catch_0
    const/16 v0, 0x45

    :goto_0
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendRowDescription(Ljava/sql/ResultSetMetaData;)V
    .locals 10

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendNoData()V

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    add-int/lit8 v6, v5, 0x1

    invoke-interface {p1, v6}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-interface {p1, v6}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v7

    invoke-static {v7}, Lorg/h2/server/pg/PgServer;->convertType(I)I

    move-result v8

    invoke-interface {p1, v6}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v9

    aput v9, v2, v5

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v7, v8}, Lorg/h2/server/pg/PgServer;->checkType(I)V

    :cond_1
    aput v8, v1, v5

    move v5, v6

    goto :goto_0

    :cond_2
    const/16 p1, 0x54

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_3

    aget-object v5, v3, p1

    invoke-static {v5}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    aget v5, v1, p1

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    aget v5, v1, p1

    aget v6, v2, p1

    invoke-static {v5, v6}, Lorg/h2/server/pg/PgServerThread;->getTypeSize(II)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    aget v5, v1, p1

    invoke-static {v5}, Lorg/h2/server/pg/PgServerThread;->formatAsText(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    :goto_2
    return-void
.end method

.method private declared-synchronized setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setParameter(Ljava/sql/PreparedStatement;II[I)V
    .locals 3

    array-length v0, p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p3, v0, :cond_1

    aget p4, p4, p3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    add-int/2addr p3, v1

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p1, p3, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto/16 :goto_3

    :cond_2
    if-eqz p4, :cond_3

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->readFully([B)V

    new-instance p4, Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_2
    invoke-interface {p1, p3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const/16 p4, 0x11

    if-eq p2, p4, :cond_9

    const/16 p4, 0x17

    const/4 v1, 0x4

    if-eq p2, p4, :cond_8

    const/16 p4, 0x14

    const/16 v2, 0x8

    if-eq p2, p4, :cond_7

    const/16 p4, 0x15

    if-eq p2, p4, :cond_6

    const/16 p4, 0x2bc

    if-eq p2, p4, :cond_5

    const/16 p4, 0x2bd

    if-eq p2, p4, :cond_4

    iget-object p4, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Binary format for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->readFully([B)V

    new-instance p4, Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v2, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    iget-object p2, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    goto :goto_3

    :cond_5
    invoke-static {v1, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    iget-object p2, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readFloat()F

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    goto :goto_3

    :cond_6
    const/4 p2, 0x2

    invoke-static {p2, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V

    goto :goto_3

    :cond_7
    invoke-static {v2, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    iget-object p2, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_3

    :cond_8
    invoke-static {v1, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->readFully([B)V

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    :goto_3
    return-void
.end method

.method private startMessage(I)V
    .locals 1

    iput p1, p0, Lorg/h2/server/pg/PgServerThread;->messageType:I

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->outBuffer:Ljava/io/ByteArrayOutputStream;

    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    return-void
.end method

.method private write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method private write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeDataColumn(Ljava/sql/ResultSet;IIZ)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p4, :cond_3

    const/16 p4, 0x10

    if-eq p3, p4, :cond_1

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p2, p1

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write([B)V

    goto/16 :goto_2

    :cond_1
    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x74

    goto :goto_0

    :cond_2
    const/16 p1, 0x66

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_2

    :cond_3
    const/16 p4, 0x11

    if-eq p3, p4, :cond_9

    const/16 p4, 0x17

    const/4 v0, 0x4

    if-eq p3, p4, :cond_8

    const/16 p4, 0x14

    const/16 v1, 0x8

    if-eq p3, p4, :cond_7

    const/16 p4, 0x15

    if-eq p3, p4, :cond_6

    const/16 p4, 0x2bc

    if-eq p3, p4, :cond_5

    const/16 p4, 0x2bd

    if-ne p3, p4, :cond_4

    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output binary format is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2

    :cond_6
    const/4 p3, 0x2

    invoke-direct {p0, p3}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getShort(I)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    goto :goto_2

    :cond_9
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p1

    if-nez p1, :cond_a

    :goto_1
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    goto :goto_2

    :cond_a
    array-length p2, p1

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write([B)V

    :goto_2
    return-void
.end method

.method private writeInt(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeShort(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    return-void
.end method

.method private writeStringPart(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Close"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/pg/PgServer;->remove(Lorg/h2/server/pg/PgServerThread;)V

    return-void
.end method

.method public getProcessId()I
    .locals 1

    iget v0, p0, Lorg/h2/server/pg/PgServerThread;->processId:I

    return v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 3

    const-string v0, "Disconnect"

    :try_start_0
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v2, "Connect"

    invoke-virtual {v1, v2}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    :goto_0
    iget-boolean v1, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->process()V

    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    goto :goto_4

    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v2, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    throw v1

    :goto_4
    return-void
.end method

.method public setProcessId(I)V
    .locals 0

    iput p1, p0, Lorg/h2/server/pg/PgServerThread;->processId:I

    return-void
.end method

.method public setThread(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->thread:Ljava/lang/Thread;

    return-void
.end method
