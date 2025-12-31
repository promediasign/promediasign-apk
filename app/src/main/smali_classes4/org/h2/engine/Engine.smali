.class public Lorg/h2/engine/Engine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/engine/SessionFactory;


# static fields
.field private static final DATABASES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Database;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lorg/h2/engine/Engine;

.field public static final synthetic a:I


# instance fields
.field private jmx:Z

.field private volatile wrongPasswordDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/h2/engine/Engine;

    invoke-direct {v0}, Lorg/h2/engine/Engine;-><init>()V

    sput-object v0, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MIN:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/h2/util/ThreadDeadlockDetector;->init()V

    :cond_0
    return-void
.end method

.method private static checkClustering(Lorg/h2/engine/ConnectionInfo;Lorg/h2/engine/Database;)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/engine/ConnectionInfo;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'\'"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TRUE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x15fed

    invoke-static {p0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    const p0, 0x15fee

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    return-void
.end method

.method private createSessionAndValidate(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;
    .locals 3

    :try_start_0
    const-string v0, "FILE_LOCK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/FileLock;->getFileLockMethod(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "OPEN_NEW"

    const-string v1, "TRUE"

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->clone()Lorg/h2/engine/ConnectionInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/engine/Engine;->openSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/h2/engine/Engine;->validateUserAndPassword(Z)V

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->setConnectionInfo(Lorg/h2/engine/ConnectionInfo;)V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x6d60

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/engine/Engine;->validateUserAndPassword(Z)V

    :cond_2
    throw p1
.end method

.method public static getInstance()Lorg/h2/engine/Engine;
    .locals 1

    sget-object v0, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    return-object v0
.end method

.method private declared-synchronized openSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;
    .locals 14

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "IFEXISTS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "IGNORE_UNKNOWN_SETTINGS"

    invoke-virtual {p1, v2, v1}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "CIPHER"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "INIT"

    invoke-virtual {p1, v5, v4}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, v3}, Lorg/h2/engine/Engine;->openSession(Lorg/h2/engine/ConnectionInfo;ZLjava/lang/String;)Lorg/h2/engine/Session;

    move-result-object v6

    if-eqz v6, :cond_6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v6, v0}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    invoke-static {}, Lorg/h2/engine/DbSettings;->getDefaultSettings()Lorg/h2/engine/DbSettings;

    move-result-object v3

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getKeys()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    const v9, 0x7fffffff

    if-ge v8, v7, :cond_3

    aget-object v10, v5, v8

    invoke-virtual {v3, v10}, Lorg/h2/engine/SettingsBase;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1, v10}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SET "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Lorg/h2/engine/Session;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v9

    invoke-interface {v9}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v10

    const v11, 0x15fb8

    if-ne v10, v11, :cond_1

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "admin rights required; user: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v10, v9, v11}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v10

    const-string v11, ""

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_2

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lorg/h2/engine/Session;->close()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v6, v4, v9}, Lorg/h2/engine/Session;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_4
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_1
    move-exception p1

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    :try_start_5
    invoke-virtual {v6}, Lorg/h2/engine/Session;->close()V

    throw p1

    :cond_5
    :goto_5
    invoke-virtual {v6, v1}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    invoke-virtual {v6, v0}, Lorg/h2/engine/Session;->commit(Z)V

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v6

    :goto_6
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :cond_6
    const v6, 0xea60

    if-gt v5, v6, :cond_7

    const-wide/16 v6, 0x1

    :try_start_8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    :try_start_9
    const-string p1, "Waited for database closing longer than 1 minute"

    const v0, 0x15fa4

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method private openSession(Lorg/h2/engine/ConnectionInfo;ZLjava/lang/String;)Lorg/h2/engine/Session;
    .locals 8

    .line 2
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NO_UPGRADE"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    const-string v3, "OPEN_NEW"

    invoke-virtual {p1, v3, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isUnnamedInMemory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Database;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_6

    if-eqz p2, :cond_3

    invoke-static {v2}, Lorg/h2/engine/Database;->exists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const p1, 0x15f9d

    invoke-static {p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    new-instance v3, Lorg/h2/engine/Database;

    invoke-direct {v3, p1, p3}, Lorg/h2/engine/Database;-><init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lorg/h2/engine/User;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v6

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v3, v6, v7, v4}, Lorg/h2/engine/User;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lorg/h2/engine/User;->setAdmin(Z)V

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserPasswordHash()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/h2/engine/User;->setUserPasswordHash([B)V

    invoke-virtual {v3, p2}, Lorg/h2/engine/Database;->setMasterUser(Lorg/h2/engine/User;)V

    goto :goto_3

    :cond_4
    move-object p2, v5

    :goto_3
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isUnnamedInMemory()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    move-object p2, v5

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lorg/h2/engine/Database;->opened()V

    :cond_7
    invoke-virtual {v3}, Lorg/h2/engine/Database;->isClosing()Z

    move-result v6

    if-eqz v6, :cond_8

    return-object v5

    :cond_8
    if-nez p2, :cond_b

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object v6

    invoke-virtual {v3, p3, v6}, Lorg/h2/engine/Database;->validateFilePasswordHash(Ljava/lang/String;[B)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserPasswordHash()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/h2/engine/User;->validateUserPasswordHash([B)Z

    move-result p3

    if-nez p3, :cond_9

    move-object p2, v5

    :cond_9
    if-eqz v2, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/h2/engine/User;->isAdmin()Z

    move-result p3

    if-nez p3, :cond_b

    :cond_a
    invoke-virtual {v3, v5}, Lorg/h2/engine/Database;->setEventListener(Lorg/h2/api/DatabaseEventListener;)V

    :cond_b
    if-eqz p2, :cond_e

    invoke-static {p1, v3}, Lorg/h2/engine/Engine;->checkClustering(Lorg/h2/engine/ConnectionInfo;Lorg/h2/engine/Database;)V

    invoke-virtual {v3, p2}, Lorg/h2/engine/Database;->createSession(Lorg/h2/engine/User;)Lorg/h2/engine/Session;

    move-result-object p2

    if-nez p2, :cond_c

    return-object v5

    :cond_c
    const-string p3, "JMX"

    invoke-virtual {p1, p3, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_0
    const-string v2, "org.h2.jmx.DatabaseInfo.registerMBean"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v1, p0, Lorg/h2/engine/Engine;->jmx:Z

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {v3, p2}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V

    const p2, 0xc3b4

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_d
    :goto_5
    return-object p2

    :cond_e
    const/16 p2, 0x6d60

    invoke-static {p2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p2

    invoke-virtual {v3, v0}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wrong user or password; user: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V

    throw p2
.end method

.method private validateUserAndPassword(Z)V
    .locals 10

    sget v0, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MIN:I

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    iget-wide v3, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    sget-object p1, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    monitor-enter p1

    long-to-int v0, v3

    :try_start_0
    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    iput-wide v5, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_2
    return-void

    :cond_1
    sget-object p1, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    monitor-enter p1

    :try_start_3
    iget-wide v3, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    sget v5, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MAX:I

    if-gtz v5, :cond_2

    const v5, 0x7fffffff

    :cond_2
    iget-wide v6, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    iget-wide v8, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    iget-wide v6, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    iget-wide v5, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    cmp-long v7, v5, v1

    if-gez v7, :cond_4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    iput-wide v8, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    :cond_4
    if-lez v0, :cond_5

    invoke-static {}, Lorg/h2/util/MathUtils;->secureRandomLong()J

    move-result-wide v0

    const-wide/16 v5, 0x64

    rem-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long/2addr v3, v0

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    :cond_5
    const/16 v0, 0x6d60

    :try_start_5
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_4
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lorg/h2/engine/Engine;->jmx:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "org.h2.jmx.DatabaseInfo.unregisterMBean"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "JMX"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0xc3b4

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    sget-object v0, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;
    .locals 1

    .line 1
    sget-object v0, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    invoke-direct {v0, p1}, Lorg/h2/engine/Engine;->createSessionAndValidate(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/SessionInterface;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/engine/Engine;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object p1

    return-object p1
.end method
