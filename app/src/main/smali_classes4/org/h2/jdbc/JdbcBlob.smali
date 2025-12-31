.class public Lorg/h2/jdbc/JdbcBlob;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Blob;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;

.field value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1, p3}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15f97

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public free()V
    .locals 1

    const-string v0, "free"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public getBinaryStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "getBinaryStream"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 0

    .line 2
    const-string p1, "LOB update"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(JI)[B
    .locals 4

    const-string v0, "getBytes("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    :try_start_1
    invoke-static {v1, p1, p2}, Lorg/h2/util/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    int-to-long p1, p3

    invoke-static {v1, v0, p1, p2}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public length()J
    .locals 5

    :try_start_0
    const-string v0, "length"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public position(Ljava/sql/Blob;J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "position(blobPattern, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const-string p1, "LOB subset"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public position([BJ)J
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quoteBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const-string p1, "LOB search"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(J)Ljava/io/OutputStream;
    .locals 3

    const-string v0, "setBinaryStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    iget-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    iget-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance p2, Ljava/io/PipedInputStream;

    invoke-direct {p2}, Ljava/io/PipedInputStream;-><init>()V

    new-instance v0, Lorg/h2/jdbc/JdbcBlob$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/jdbc/JdbcBlob$1;-><init>(Lorg/h2/jdbc/JdbcBlob;Lorg/h2/jdbc/JdbcConnection;Ljava/io/PipedInputStream;)V

    new-instance p1, Lorg/h2/jdbc/JdbcBlob$2;

    invoke-direct {p1, p0, p2, v0}, Lorg/h2/jdbc/JdbcBlob$2;-><init>(Lorg/h2/jdbc/JdbcBlob;Ljava/io/PipedInputStream;Lorg/h2/util/Task;)V

    invoke-virtual {v0}, Lorg/h2/util/Task;->execute()Lorg/h2/util/Task;

    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p2

    :cond_1
    const-string p1, "length"

    iget-object p2, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string v0, "pos"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(J[B)I
    .locals 3

    .line 1
    const-string v0, "setBytes("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quoteBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    iget-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    array-length p1, p3

    return p1

    :cond_1
    const-string p3, "pos"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(J[BII)I
    .locals 0

    .line 2
    const-string p1, "LOB update"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)V
    .locals 0

    const-string p1, "LOB update"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
