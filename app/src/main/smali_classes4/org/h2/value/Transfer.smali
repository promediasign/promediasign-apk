.class public Lorg/h2/value/Transfer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final LOB_MAC_SALT_LENGTH:I = 0x10

.field private static final LOB_MAGIC:I = 0x1234


# instance fields
.field private in:Ljava/io/DataInputStream;

.field private lobMacSalt:[B

.field private out:Ljava/io/DataOutputStream;

.field private session:Lorg/h2/engine/SessionInterface;

.field private socket:Ljava/net/Socket;

.field private ssl:Z

.field private version:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/SessionInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    return-void
.end method

.method private calculateLobMac(J)[B
    .locals 2

    iget-object v0, p0, Lorg/h2/value/Transfer;->lobMacSalt:[B

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/value/Transfer;->lobMacSalt:[B

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/Utils;->writeLong([BIJ)V

    iget-object p1, p0, Lorg/h2/value/Transfer;->lobMacSalt:[B

    invoke-static {v0, p1}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private readByte()B
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method private readDouble()D
    .locals 2

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method private readFloat()F
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method private writeByte(B)Lorg/h2/value/Transfer;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method private writeDouble(D)Lorg/h2/value/Transfer;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-object p0
.end method

.method private writeFloat(F)Lorg/h2/value/Transfer;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iput-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_2
    :try_start_3
    invoke-static {v1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_4
    iput-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public openNewConnection()Lorg/h2/value/Transfer;
    .locals 3

    iget-object v0, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    iget-boolean v2, p0, Lorg/h2/value/Transfer;->ssl:Z

    invoke-static {v0, v1, v2}, Lorg/h2/util/NetUtils;->createSocket(Ljava/net/InetAddress;IZ)Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Lorg/h2/value/Transfer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/h2/value/Transfer;-><init>(Lorg/h2/engine/SessionInterface;)V

    invoke-virtual {v1, v0}, Lorg/h2/value/Transfer;->setSocket(Ljava/net/Socket;)V

    iget-boolean v0, p0, Lorg/h2/value/Transfer;->ssl:Z

    invoke-virtual {v1, v0}, Lorg/h2/value/Transfer;->setSSL(Z)V

    return-object v1
.end method

.method public readBoolean()Z
    .locals 2

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public readBytes([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public readBytes()[B
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    iget-object v1, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0
.end method

.method public readInt()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readChar()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/h2/value/Value;
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    const/16 v2, 0xc

    const-wide/16 v3, -0x1

    const/16 v5, 0xb

    const/4 v6, 0x7

    const/16 v7, 0x9

    const-string v8, "magic="

    const/16 v9, 0x1234

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x15fd3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/h2/api/CustomDataTypesHandler;->convert(Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/h2/value/ValueEnumBase;->get(Ljava/lang/String;I)Lorg/h2/value/ValueEnumBase;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object v1

    return-object v1

    :pswitch_3
    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueGeometry;->get([B)Lorg/h2/value/ValueGeometry;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueGeometry;->get(Ljava/lang/String;)Lorg/h2/value/ValueGeometry;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/h2/value/ValueUuid;->get(JJ)Lorg/h2/value/ValueUuid;

    move-result-object v1

    return-object v1

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    iget-object v2, v0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object v1

    return-object v1

    :pswitch_7
    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    invoke-virtual {v1, v11}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v1

    return-object v1

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readValue()Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    if-gez v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_3

    :cond_5
    const-class v2, Ljava/lang/Object;

    :goto_3
    new-array v3, v1, [Lorg/h2/value/Value;

    :goto_4
    if-ge v11, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readValue()Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v2, v3}, Lorg/h2/value/ValueArray;->get(Ljava/lang/Class;[Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v1

    return-object v1

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v6

    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v5, :cond_b

    cmp-long v1, v6, v3

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v16

    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v10

    :cond_7
    move-object/from16 v18, v10

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v19

    iget-object v1, v0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v14

    const/16 v13, 0x10

    invoke-static/range {v13 .. v20}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v1

    return-object v1

    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-ltz v3, :cond_a

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v6, v1

    if-gtz v3, :cond_a

    new-instance v1, Lorg/h2/store/DataReader;

    iget-object v2, v0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Lorg/h2/store/DataReader;-><init>(Ljava/io/InputStream;)V

    long-to-int v2, v6

    new-array v3, v2, [C

    invoke-static {v1, v3, v2}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    if-ne v1, v9, :cond_9

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1, v6, v7}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v1

    return-object v1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_b
    iget-object v1, v0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v1

    new-instance v2, Lorg/h2/store/DataReader;

    iget-object v3, v0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Lorg/h2/store/DataReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2, v6, v7}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    if-ne v2, v9, :cond_c

    return-object v1

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v6

    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v5, :cond_e

    cmp-long v1, v6, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v16

    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v10

    :cond_d
    move-object/from16 v18, v10

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v19

    iget-object v1, v0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v14

    const/16 v13, 0xf

    invoke-static/range {v13 .. v20}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v1

    return-object v1

    :cond_e
    iget-object v1, v0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/value/Transfer;->in:Ljava/io/DataInputStream;

    invoke-interface {v1, v2, v6, v7}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    if-ne v2, v9, :cond_f

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object v1

    return-object v1

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    return-object v1

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v1

    return-object v1

    :pswitch_e
    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v1

    return-object v1

    :cond_10
    const v2, 0xf4240

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v3

    if-lt v1, v6, :cond_11

    invoke-static {v3, v4}, Lorg/h2/util/DateTimeUtils;->getTimeUTCWithoutDst(J)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    rem-int/2addr v1, v2

    invoke-static {v3, v4, v1}, Lorg/h2/value/ValueTimestamp;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestamp;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    rem-int/2addr v1, v2

    invoke-static {v3, v4, v1}, Lorg/h2/value/ValueTimestamp;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestamp;

    move-result-object v1

    return-object v1

    :pswitch_f
    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v1

    return-object v1

    :cond_12
    if-lt v1, v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/util/DateTimeUtils;->getTimeUTCWithoutDst(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object v1

    return-object v1

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object v1

    return-object v1

    :pswitch_10
    iget v1, v0, Lorg/h2/value/Transfer;->version:I

    if-lt v1, v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v1

    return-object v1

    :cond_14
    if-lt v1, v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/util/DateTimeUtils;->getTimeUTCWithoutDst(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTime;->fromMillis(J)Lorg/h2/value/ValueTime;

    move-result-object v1

    return-object v1

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTime;->fromMillis(J)Lorg/h2/value/ValueTime;

    move-result-object v1

    return-object v1

    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lorg/h2/value/Transfer;->readFloat()F

    move-result v1

    invoke-static {v1}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v1

    return-object v1

    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lorg/h2/value/Transfer;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    return-object v1

    :pswitch_13
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v1

    return-object v1

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    return-object v1

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    return-object v1

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v1

    return-object v1

    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lorg/h2/value/Transfer;->readByte()B

    move-result v1

    invoke-static {v1}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v1

    return-object v1

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    return-object v1

    :pswitch_19
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setSSL(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/value/Transfer;->ssl:Z

    return-void
.end method

.method public setSession(Lorg/h2/engine/SessionInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/value/Transfer;->socket:Ljava/net/Socket;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/h2/value/Transfer;->version:I

    return-void
.end method

.method public verifyLobMac([BJ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/h2/value/Transfer;->calculateLobMac(J)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/util/Utils;->compareSecure([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x15fd3

    const-string p2, "Invalid lob hmac; possibly the connection was re-opened internally"

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public writeBoolean(Z)Lorg/h2/value/Transfer;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public writeBytes([B)Lorg/h2/value/Transfer;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-object p0
.end method

.method public writeBytes([BII)Lorg/h2/value/Transfer;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    return-object p0
.end method

.method public writeInt(I)Lorg/h2/value/Transfer;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public writeLong(J)Lorg/h2/value/Transfer;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-object p0
.end method

.method public writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public writeValue(Lorg/h2/value/Value;)V
    .locals 14

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/16 v1, 0x1234

    const-wide/16 v2, 0x0

    const/16 v4, 0xc

    const-wide/16 v5, -0x1

    const/16 v7, 0xb

    const/4 v8, 0x7

    const/16 v9, 0x9

    const-string v10, "length="

    const/4 v11, 0x0

    const v12, 0x15fd3

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    :cond_1
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :pswitch_2
    check-cast p1, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {p1}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeZoneOffsetMins()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :pswitch_3
    iget v0, p0, Lorg/h2/value/Transfer;->version:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :pswitch_4
    check-cast p1, Lorg/h2/value/ValueUuid;

    invoke-virtual {p1}, Lorg/h2/value/ValueUuid;->getHigh()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/value/ValueUuid;->getLow()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :pswitch_5
    :try_start_0
    check-cast p1, Lorg/h2/value/ValueResultSet;

    invoke-virtual {p1}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->beforeFirst()V

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v13}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v3

    iget-object v4, p0, Lorg/h2/value/Transfer;->session:Lorg/h2/engine/SessionInterface;

    invoke-static {v4, p1, v2, v3}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v11}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    invoke-interface {p1}, Ljava/sql/ResultSet;->beforeFirst()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :goto_3
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_6
    check-cast p1, Lorg/h2/value/ValueArray;

    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const-class v2, Ljava/lang/Object;

    if-ne p1, v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto :goto_4

    :cond_4
    add-int/2addr v1, v13

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    :goto_4
    array-length p1, v0

    :goto_5
    if-ge v11, p1, :cond_11

    aget-object v1, v0, v11

    invoke-virtual {p0, v1}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :pswitch_7
    iget v0, p0, Lorg/h2/value/Transfer;->version:I

    if-lt v0, v7, :cond_6

    instance-of v0, p1, Lorg/h2/value/ValueLobDb;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/h2/value/ValueLobDb;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->isStored()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v5, v6}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    iget p1, p0, Lorg/h2/value/Transfer;->version:I

    if-lt p1, v4, :cond_5

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/h2/value/Transfer;->calculateLobMac(J)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    :cond_5
    :goto_6
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_8

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v4, v2

    if-gtz v0, :cond_7

    invoke-virtual {p0, v4, v5}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-static {p1, v0}, Lorg/h2/store/Data;->copyString(Ljava/io/Reader;Ljava/io/OutputStream;)V

    :goto_7
    invoke-virtual {p0, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_8
    iget v0, p0, Lorg/h2/value/Transfer;->version:I

    if-lt v0, v7, :cond_9

    instance-of v0, p1, Lorg/h2/value/ValueLobDb;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lorg/h2/value/ValueLobDb;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->isStored()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0, v5, v6}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    iget p1, p0, Lorg/h2/value/Transfer;->version:I

    if-lt p1, v4, :cond_5

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/h2/value/Transfer;->calculateLobMac(J)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_b

    invoke-virtual {p0, v4, v5}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/value/Transfer;->out:Ljava/io/DataOutputStream;

    invoke-static {p1, v0}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    cmp-long p1, v2, v4

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    const-string p1, "length:"

    const-string v0, " written:"

    .line 1
    invoke-static {p1, v4, v5, v0}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_9
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :pswitch_a
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :pswitch_b
    iget v0, p0, Lorg/h2/value/Transfer;->version:I

    if-lt v0, v9, :cond_c

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {p1}, Lorg/h2/value/ValueTimestamp;->getDateValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/value/ValueTimestamp;->getTimeNanos()J

    move-result-wide v0

    :goto_8
    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :cond_c
    const v1, 0xf4240

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    if-lt v0, v8, :cond_d

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide v2

    :goto_9
    invoke-virtual {p0, v2, v3}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result p1

    rem-int/2addr p1, v1

    :goto_a
    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    goto :goto_9

    :pswitch_c
    iget v0, p0, Lorg/h2/value/Transfer;->version:I

    if-lt v0, v9, :cond_e

    check-cast p1, Lorg/h2/value/ValueDate;

    invoke-virtual {p1}, Lorg/h2/value/ValueDate;->getDateValue()J

    move-result-wide v0

    goto :goto_8

    :cond_e
    invoke-virtual {p1}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    if-lt v0, v8, :cond_f

    :goto_b
    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide v0

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_8

    :pswitch_d
    iget v0, p0, Lorg/h2/value/Transfer;->version:I

    if-lt v0, v9, :cond_10

    check-cast p1, Lorg/h2/value/ValueTime;

    invoke-virtual {p1}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v0

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p1

    if-lt v0, v8, :cond_f

    goto :goto_b

    :pswitch_e
    invoke-virtual {p1}, Lorg/h2/value/Value;->getFloat()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/value/Transfer;->writeFloat(F)Lorg/h2/value/Transfer;

    goto :goto_c

    :pswitch_f
    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/h2/value/Transfer;->writeDouble(D)Lorg/h2/value/Transfer;

    goto :goto_c

    :pswitch_10
    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    goto :goto_8

    :pswitch_11
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    goto :goto_a

    :pswitch_12
    invoke-virtual {p1}, Lorg/h2/value/Value;->getShort()S

    move-result p1

    goto :goto_a

    :pswitch_13
    invoke-virtual {p1}, Lorg/h2/value/Value;->getByte()B

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/value/Transfer;->writeByte(B)Lorg/h2/value/Transfer;

    goto :goto_c

    :pswitch_14
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    :cond_11
    :goto_c
    :pswitch_15
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
