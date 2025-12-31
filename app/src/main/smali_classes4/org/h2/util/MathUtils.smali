.class public Lorg/h2/util/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static cachedSecureRandom:Ljava/security/SecureRandom;

.field static volatile seeded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareInt(II)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static compareLong(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static convertLongToInt(J)I
    .locals 3

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method public static generateAlternativeSeed()[B
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "generateAlternativeSeed"

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    invoke-static {v2, v5}, Lorg/h2/util/MathUtils;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    const-string v5, "java.net.InetAddress"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getLocalHost"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "getHostName"

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v8, "getAllByName"

    new-array v9, v1, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v0

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v0

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const-string v8, "getAddress"

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v8, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v6, v9

    invoke-virtual {v5, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v9, v1

    goto :goto_1

    :catchall_0
    nop

    :cond_0
    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-nez v11, :cond_1

    add-int/2addr v8, v1

    goto :goto_3

    :cond_1
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/2addr v5, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :goto_4
    invoke-static {v2, v0}, Lorg/h2/util/MathUtils;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v1, [B

    return-object v0
.end method

.method private static declared-synchronized getSecureRandom()Ljava/security/SecureRandom;
    .locals 5

    const-class v0, Lorg/h2/util/MathUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/h2/util/MathUtils;->cachedSecureRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    sput-object v1, Lorg/h2/util/MathUtils;->cachedSecureRandom:Ljava/security/SecureRandom;

    new-instance v1, Lorg/h2/util/MathUtils$1;

    invoke-direct {v1}, Lorg/h2/util/MathUtils$1;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Generate Seed"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v3, 0x190

    :try_start_3
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "InterruptedException"

    invoke-static {v3, v2}, Lorg/h2/util/MathUtils;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-boolean v2, Lorg/h2/util/MathUtils;->seeded:Z

    if-nez v2, :cond_1

    invoke-static {}, Lorg/h2/util/MathUtils;->generateAlternativeSeed()[B

    move-result-object v2

    sget-object v3, Lorg/h2/util/MathUtils;->cachedSecureRandom:Ljava/security/SecureRandom;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v4, Lorg/h2/util/MathUtils;->cachedSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    :try_start_7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lorg/h2/util/MathUtils;->generateAlternativeSeed()[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_8
    const-string v2, "SecureRandom"

    invoke-static {v2, v1}, Lorg/h2/util/MathUtils;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lorg/h2/util/MathUtils;->cachedSecureRandom:Ljava/security/SecureRandom;

    :cond_1
    :goto_2
    sget-object v1, Lorg/h2/util/MathUtils;->cachedSecureRandom:Ljava/security/SecureRandom;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw v1
.end method

.method public static nextPowerOf2(I)I
    .locals 5

    const-wide/16 v0, 0x1

    :goto_0
    int-to-long v2, p0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/32 v2, 0x3fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    add-long/2addr v0, v0

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static randomBytes([B)V
    .locals 1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method

.method public static randomInt(I)I
    .locals 1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static roundUpInt(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    neg-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static roundUpLong(JJ)J
    .locals 2

    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    neg-long p2, p2

    and-long/2addr p0, p2

    return-wide p0
.end method

.method public static secureRandomBytes(I)[B
    .locals 1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    new-array p0, p0, [B

    invoke-static {}, Lorg/h2/util/MathUtils;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static secureRandomInt(I)I
    .locals 1

    invoke-static {}, Lorg/h2/util/MathUtils;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static secureRandomLong()J
    .locals 3

    invoke-static {}, Lorg/h2/util/MathUtils;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
