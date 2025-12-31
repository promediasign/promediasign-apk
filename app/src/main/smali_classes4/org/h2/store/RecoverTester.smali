.class public Lorg/h2/store/RecoverTester;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/store/fs/Recorder;


# static fields
.field private static instance:Lorg/h2/store/RecoverTester;


# instance fields
.field private final knownErrors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileSize:J

.field private testDatabase:Ljava/lang/String;

.field private testEvery:I

.field private volatile testing:Z

.field private verifyCount:I

.field private writeCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "memFS:reopen"

    iput-object v0, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    const-string v0, "h2.recoverTestOffset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    const-string v0, "h2.recoverTest"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/RecoverTester;->testEvery:I

    const-string v0, "h2.recoverTestMaxFileSize"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long v0, v0, v2

    iput-wide v0, p0, Lorg/h2/store/RecoverTester;->maxFileSize:J

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/RecoverTester;->knownErrors:Ljava/util/HashSet;

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/h2/store/RecoverTester;
    .locals 2

    const-class v0, Lorg/h2/store/RecoverTester;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/h2/store/RecoverTester;->instance:Lorg/h2/store/RecoverTester;

    if-nez v1, :cond_0

    new-instance v1, Lorg/h2/store/RecoverTester;

    invoke-direct {v1}, Lorg/h2/store/RecoverTester;-><init>()V

    sput-object v1, Lorg/h2/store/RecoverTester;->instance:Lorg/h2/store/RecoverTester;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/h2/store/RecoverTester;->instance:Lorg/h2/store/RecoverTester;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lorg/h2/store/RecoverTester;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/h2/store/RecoverTester;->getInstance()Lorg/h2/store/RecoverTester;

    move-result-object v1

    invoke-static {p0}, Lorg/h2/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/h2/store/RecoverTester;->setTestEvery(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1}, Lorg/h2/store/fs/FilePathRec;->setRecorder(Lorg/h2/store/fs/Recorder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized testDatabase(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 11

    const-string v0, "jdbc:h2:"

    const-string v1, "begin ------------------------------ "

    const-string v2, "script to \'"

    const-string v3, "jdbc:h2:"

    const-string v4, "+ write #"

    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " verify #"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/h2/store/RecoverTester;->verifyCount:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x15fc1

    const/16 v5, 0x6d60

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".h2.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x6

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".mv.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".mv.db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget v8, p0, Lorg/h2/store/RecoverTester;->verifyCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/h2/store/RecoverTester;->verifyCount:I

    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    const-string v9, "user"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v9, "password"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v9, Lorg/h2/engine/ConnectionInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";FILE_LOCK=NO;TRACE_LEVEL_FILE=0"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3, v8}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    new-instance v3, Lorg/h2/engine/Database;

    invoke-direct {v3, v9, v6}, Lorg/h2/engine/Database;-><init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sql\'"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    const-string v2, "shutdown immediately"

    invoke-virtual {v8, v2}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/command/Prepared;->update()I

    invoke-virtual {v3, v6}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    instance-of v3, v2, Ljava/sql/SQLException;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/sql/SQLException;

    invoke-virtual {v3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ne v3, v5, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    if-ne v3, v4, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5

    :goto_4
    invoke-static {v2}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v3

    invoke-virtual {v3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v5, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    if-ne v3, v4, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_3

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v1, 0x2f

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/h2/tools/Recover;->execute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".h2.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v1, Lorg/h2/engine/ConnectionInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";FILE_LOCK=NO"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    new-instance p1, Lorg/h2/engine/Database;

    invoke-direct {p1, v1, v6}, Lorg/h2/engine/Database;-><init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_8

    :catch_3
    move-exception p1

    :try_start_8
    instance-of v0, p1, Lorg/h2/message/DbException;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/h2/message/DbException;

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-ne v0, v5, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-ne v0, v4, :cond_8

    monitor-exit p0

    return-void

    :cond_8
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    :goto_7
    const/16 v3, 0xa

    if-ge v7, v3, :cond_9

    array-length v4, v2

    if-ge v7, v4, :cond_9

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/RecoverTester;->knownErrors:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object p1, p0, Lorg/h2/store/RecoverTester;->knownErrors:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public log(ILjava/lang/String;[BJ)V
    .locals 4

    const-string p3, ".log"

    const/16 p4, 0x8

    if-eq p1, p4, :cond_0

    const/4 p4, 0x7

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    const-string p1, ".h2.db"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".mv.db"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    const/4 p4, 0x1

    add-int/2addr p1, p4

    iput p1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    iget p5, p0, Lorg/h2/store/RecoverTester;->testEvery:I

    rem-int/2addr p1, p5

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/store/RecoverTester;->maxFileSize:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    return-void

    :cond_3
    iget-boolean p1, p0, Lorg/h2/store/RecoverTester;->testing:Z

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iput-boolean p4, p0, Lorg/h2/store/RecoverTester;->testing:Z

    const/4 p1, 0x0

    const/4 p5, 0x0

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p2, v0}, Lorg/h2/store/RecoverTester;->testDatabase(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    iput-boolean p1, p0, Lorg/h2/store/RecoverTester;->testing:Z

    return-void

    :catchall_0
    move-exception p2

    move-object p5, v0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, p5

    :goto_0
    :try_start_2
    invoke-static {p2, p5}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p5}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    iput-boolean p1, p0, Lorg/h2/store/RecoverTester;->testing:Z

    throw p2
.end method

.method public setTestEvery(I)V
    .locals 0

    iput p1, p0, Lorg/h2/store/RecoverTester;->testEvery:I

    return-void
.end method
