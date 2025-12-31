.class final Lio/netty/util/internal/PlatformDependent0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_FIELD_OFFSET:J

.field private static final ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

.field private static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

.field static final HASH_CODE_ASCII_SEED:I = -0x3d4d51cb

.field static final HASH_CODE_C1:I = -0x3361d2af

.field static final HASH_CODE_C2:I = 0x1b873593

.field private static final INTERNAL_UNSAFE:Ljava/lang/Object;

.field private static final IS_ANDROID:Z

.field private static final IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

.field private static final JAVA_VERSION:I

.field private static final UNALIGNED:Z

.field static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v3, Lio/netty/util/internal/PlatformDependent0;

    invoke-static {v3}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    sput-object v3, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitNoUnsafeCause0()Ljava/lang/Throwable;

    move-result-object v4

    sput-object v4, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion0()I

    move-result v5

    sput v5, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    move-result v5

    sput-boolean v5, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitTryReflectionSetAccessible0()Z

    move-result v5

    sput-boolean v5, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    const-wide/16 v5, 0x1

    const-class v7, [B

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    goto/16 :goto_3

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    new-instance v10, Lio/netty/util/internal/PlatformDependent0$1;

    invoke-direct {v10}, Lio/netty/util/internal/PlatformDependent0$1;-><init>()V

    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/Throwable;

    if-eqz v11, :cond_1

    move-object v4, v10

    check-cast v4, Ljava/lang/Throwable;

    const-string v10, "sun.misc.Unsafe.theUnsafe: unavailable"

    invoke-interface {v3, v10, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v8

    goto :goto_0

    :cond_1
    check-cast v10, Lsun/misc/Unsafe;

    const-string v11, "sun.misc.Unsafe.theUnsafe: available"

    invoke-interface {v3, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    if-eqz v10, :cond_3

    new-instance v11, Lio/netty/util/internal/PlatformDependent0$2;

    invoke-direct {v11, v10}, Lio/netty/util/internal/PlatformDependent0$2;-><init>(Lsun/misc/Unsafe;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    const-string v11, "sun.misc.Unsafe.copyMemory: available"

    invoke-interface {v3, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v4, v11

    check-cast v4, Ljava/lang/Throwable;

    const-string v10, "sun.misc.Unsafe.copyMemory: unavailable"

    invoke-interface {v3, v10, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v8

    :cond_3
    :goto_1
    if-eqz v10, :cond_5

    new-instance v11, Lio/netty/util/internal/PlatformDependent0$3;

    invoke-direct {v11, v10, v9}, Lio/netty/util/internal/PlatformDependent0$3;-><init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_4

    check-cast v11, Ljava/lang/reflect/Field;

    const-string v12, "java.nio.Buffer.address: available"

    invoke-interface {v3, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    check-cast v11, Ljava/lang/Throwable;

    const-string v4, "java.nio.Buffer.address: unavailable"

    invoke-interface {v3, v4, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v8

    move-object v4, v11

    move-object v11, v10

    goto :goto_2

    :cond_5
    move-object v11, v8

    :goto_2
    if-eqz v10, :cond_6

    invoke-virtual {v10, v7}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v12, v5

    if-eqz v14, :cond_6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v10, "unsafe.arrayIndexScale is {} (expected: 1). Not using unsafe."

    invoke-interface {v3, v10, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v10, "Unexpected unsafe.arrayIndexScale"

    invoke-direct {v4, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v10, v8

    :cond_6
    :goto_3
    sput-object v4, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    sput-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v12, -0x1

    if-nez v10, :cond_7

    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    sput-object v8, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    sput-object v8, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    goto/16 :goto_9

    :cond_7
    :try_start_0
    new-instance v4, Lio/netty/util/internal/PlatformDependent0$4;

    invoke-direct {v4, v9}, Lio/netty/util/internal/PlatformDependent0$4;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Ljava/lang/reflect/Constructor;

    if-eqz v9, :cond_8

    invoke-virtual {v10, v5, v6}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v9, v4

    check-cast v9, Ljava/lang/reflect/Constructor;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v0, [Ljava/lang/Object;

    aput-object v10, v15, v1

    aput-object v14, v15, v2

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Constructor;

    const-string v9, "direct buffer constructor: available"

    invoke-interface {v3, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    nop

    move-object v4, v8

    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide v5, v12

    goto/16 :goto_b

    :cond_8
    :try_start_2
    const-string v5, "direct buffer constructor: unavailable"

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v3, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v8

    move-wide v5, v12

    :goto_4
    cmp-long v3, v5, v12

    if-eqz v3, :cond_9

    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v5, v6}, Lsun/misc/Unsafe;->freeMemory(J)V

    :cond_9
    sput-object v4, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    invoke-static {v11}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v7}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    new-instance v3, Lio/netty/util/internal/PlatformDependent0$5;

    invoke-direct {v3}, Lio/netty/util/internal/PlatformDependent0$5;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "java.nio.Bits.unaligned: available, {}"

    invoke-interface {v5, v6, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    const-string v4, "os.arch"

    const-string v5, ""

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    check-cast v3, Ljava/lang/Throwable;

    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "java.nio.Bits.unaligned: unavailable {}"

    invoke-interface {v5, v7, v6, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    sput-boolean v4, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_e

    new-instance v3, Lio/netty/util/internal/PlatformDependent0$6;

    invoke-direct {v3}, Lio/netty/util/internal/PlatformDependent0$6;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Throwable;

    if-nez v4, :cond_c

    new-instance v4, Lio/netty/util/internal/PlatformDependent0$7;

    invoke-direct {v4, v3}, Lio/netty/util/internal/PlatformDependent0$7;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/reflect/Method;

    if-eqz v5, :cond_b

    :try_start_3
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/Method;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v1

    aput-object v6, v0, v2

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v3

    move-object v3, v4

    move-object v8, v5

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_6
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    goto :goto_7

    :cond_b
    move-object v0, v3

    move-object v3, v4

    goto :goto_7

    :cond_c
    move-object v0, v8

    :goto_7
    instance-of v1, v3, Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable"

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_d
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): available"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move-object v0, v8

    :goto_8
    sput-object v8, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    move-object v8, v0

    :goto_9
    sput-object v8, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_f

    const-string v1, "available"

    goto :goto_a

    :cond_f
    const-string v1, "unavailable"

    :goto_a
    const-string v2, "java.nio.DirectByteBuffer.<init>(long, int): {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :goto_b
    cmp-long v1, v5, v12

    if-eqz v1, :cond_10

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->freeMemory(J)V

    :cond_10
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressSize()I
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method public static allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;
    .locals 3

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocateMemory(J)J
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static allocateUninitializedArray(I)[B
    .locals 5

    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static byteArrayBaseOffset()J
    .locals 2

    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    return-wide v0
.end method

.method public static copyMemory(JJJ)V
    .locals 9

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static/range {p0 .. p5}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(JJJ)V

    goto :goto_0

    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    :goto_0
    return-void
.end method

.method public static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 11

    .line 2
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static/range {p0 .. p7}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    goto :goto_0

    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    :goto_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(JJJ)V
    .locals 9

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    sub-long/2addr p4, v7

    add-long/2addr p0, v7

    add-long/2addr p2, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 17

    .line 2
    move-wide/from16 v9, p1

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, v13, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v1, p0

    move-wide v2, v9

    move-object/from16 v4, p3

    move-wide v5, v11

    move-wide v7, v15

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    sub-long/2addr v13, v15

    add-long/2addr v9, v15

    add-long/2addr v11, v15

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2

    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static equals([BI[BII)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    and-int/lit8 v4, v3, 0x7

    sget-wide v5, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    sub-int v1, p3, v1

    int-to-long v7, v1

    const/16 v1, 0x8

    if-lt v3, v1, :cond_1

    int-to-long v10, v4

    add-long/2addr v10, v5

    const-wide/16 v12, 0x8

    sub-long v14, v5, v12

    int-to-long v12, v3

    add-long/2addr v14, v12

    :goto_0
    cmp-long v1, v14, v10

    if-ltz v1, :cond_1

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    move-wide/from16 v16, v10

    add-long v9, v14, v7

    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v1, v12, v9

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-wide/16 v9, 0x8

    sub-long/2addr v14, v9

    move-wide/from16 v10, v16

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-lt v4, v1, :cond_2

    add-int/lit8 v4, v4, -0x4

    int-to-long v9, v4

    add-long/2addr v9, v5

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-long/2addr v9, v7

    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-eq v3, v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    const/4 v1, 0x0

    add-long/2addr v7, v5

    const/4 v3, 0x1

    const/4 v9, 0x2

    if-lt v4, v9, :cond_5

    sget-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v10, v0, v5, v6}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v11

    invoke-virtual {v10, v2, v7, v8}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v12

    if-ne v11, v12, :cond_4

    if-eq v4, v9, :cond_3

    const-wide/16 v11, 0x2

    add-long/2addr v5, v11

    invoke-virtual {v10, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    add-long/2addr v7, v11

    invoke-virtual {v10, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    return v9

    :cond_5
    if-eqz v4, :cond_7

    sget-object v4, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    invoke-virtual {v4, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    if-ne v0, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v9, 0x1

    :goto_3
    return v9
.end method

.method public static equalsConstantTime([BI[BII)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    and-int/lit8 v4, v3, 0x7

    int-to-long v4, v4

    sget-wide v6, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    add-long v8, v6, v4

    sub-int v1, p3, v1

    int-to-long v10, v1

    const-wide/16 v12, 0x8

    sub-long v14, v6, v12

    int-to-long v12, v3

    add-long/2addr v14, v12

    const-wide/16 v16, 0x0

    :goto_0
    cmp-long v1, v14, v8

    if-ltz v1, :cond_0

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v18

    add-long v12, v14, v10

    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    xor-long v12, v18, v12

    or-long v16, v16, v12

    const-wide/16 v12, 0x8

    sub-long/2addr v14, v12

    goto :goto_0

    :cond_0
    const-wide/16 v12, 0x4

    cmp-long v1, v4, v12

    if-ltz v1, :cond_1

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-long/2addr v6, v10

    invoke-virtual {v1, v2, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    xor-int/2addr v1, v3

    int-to-long v6, v1

    or-long v16, v16, v6

    sub-long/2addr v4, v12

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    sub-long v12, v8, v4

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v12, v13}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v3

    add-long/2addr v12, v10

    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v1

    xor-int/2addr v1, v3

    int-to-long v12, v1

    or-long v16, v16, v12

    sub-long/2addr v4, v6

    :cond_2
    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    sub-long/2addr v8, v6

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    add-long/2addr v8, v10

    invoke-virtual {v1, v2, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    xor-int/2addr v0, v1

    int-to-long v0, v0

    or-long v16, v16, v0

    :cond_3
    move-wide/from16 v0, v16

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime(JJ)I

    move-result v0

    return v0
.end method

.method private static explicitNoUnsafeCause0()Ljava/lang/Throwable;
    .locals 4

    const-string v0, "io.netty.noUnsafe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.noUnsafe: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v0, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    invoke-interface {v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "io.netty.tryUnsafe"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "org.jboss.netty.tryUnsafe"

    :goto_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sun.misc.Unsafe: unavailable ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static explicitTryReflectionSetAccessible0()Z
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "io.netty.tryReflectionSetAccessible"

    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static freeMemory(J)V
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    return-void
.end method

.method public static getByte(J)B
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    return p0
.end method

.method public static getByte([BI)B
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$8;

    invoke-direct {v0, p0}, Lio/netty/util/internal/PlatformDependent0$8;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$9;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$9;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getInt(J)I
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .locals 1

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getInt([BI)I
    .locals 5

    .line 3
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getLong(J)J
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getLong(Ljava/lang/Object;J)J
    .locals 1

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong([BI)J
    .locals 5

    .line 3
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getShort(J)S
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result p0

    return p0
.end method

.method public static getShort([BI)S
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$10;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$10;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getUnsafeUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static hasAllocateArrayMethod()Z
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasDirectBufferNoCleanerConstructor()Z
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasUnsafe()Z
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hashCodeAscii([BII)I
    .locals 10

    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    and-int/lit8 p1, p2, 0x7

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x8

    sub-long v6, v0, v4

    int-to-long v8, p2

    add-long/2addr v6, v8

    const p2, -0x3d4d51cb

    :goto_0
    cmp-long v8, v6, v2

    if-ltz v8, :cond_0

    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, p0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9, p2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiCompute(JI)I

    move-result p2

    sub-long/2addr v6, v4

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v5, 0x4

    if-eq p1, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    and-int/2addr v2, v6

    const/4 v6, 0x6

    if-eq p1, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v2, v6

    const v6, 0x1b873593

    const v7, -0x3361d2af    # -8.293031E7f

    if-eqz v2, :cond_5

    mul-int p2, p2, v7

    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v2

    add-int/2addr p2, v2

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    const v2, 0x1b873593

    goto :goto_4

    :cond_5
    const v2, -0x3361d2af    # -8.293031E7f

    :goto_4
    if-eq p1, v4, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eq p1, v5, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    and-int/2addr v8, v9

    const/4 v9, 0x5

    if-eq p1, v9, :cond_8

    const/4 v3, 0x1

    :cond_8
    and-int/2addr v3, v8

    if-eqz v3, :cond_a

    mul-int p2, p2, v2

    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p0, v0, v1}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v3

    add-int/2addr p2, v3

    if-ne v2, v7, :cond_9

    goto :goto_7

    :cond_9
    const v6, -0x3361d2af    # -8.293031E7f

    :goto_7
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    move v2, v6

    :cond_a
    if-lt p1, v5, :cond_b

    mul-int p2, p2, v2

    sget-object p1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result p0

    add-int/2addr p2, p0

    :cond_b
    return p2
.end method

.method public static hashCodeAsciiCompute(JI)I
    .locals 3

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int p2, p2, v0

    long-to-int v0, p0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v0

    const v1, 0x1b873593

    mul-int v0, v0, v1

    add-int/2addr v0, p2

    const-wide v1, 0x1f1f1f1f00000000L    # 8.854494059669966E-159

    and-long/2addr p0, v1

    const/16 p2, 0x20

    ushr-long/2addr p0, p2

    long-to-int p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCodeAsciiSanitize(B)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static hashCodeAsciiSanitize(I)I
    .locals 1

    .line 2
    const v0, 0x1f1f1f1f

    and-int/2addr p0, v0

    return p0
.end method

.method public static hashCodeAsciiSanitize(S)I
    .locals 0

    .line 3
    and-int/lit16 p0, p0, 0x1f1f

    return p0
.end method

.method public static isAndroid()Z
    .locals 1

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    return v0
.end method

.method private static isAndroid0()Z
    .locals 3

    const-string v0, "java.vm.name"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Platform: Android"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isExplicitNoUnsafe()Z
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExplicitTryReflectionSetAccessible()Z
    .locals 1

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    return v0
.end method

.method public static isUnaligned()Z
    .locals 1

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    return v0
.end method

.method public static isZero([BII)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    return v3

    :cond_0
    sget-wide v4, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    and-int/lit8 v6, v2, 0x7

    int-to-long v7, v6

    add-long/2addr v7, v4

    const-wide/16 v9, 0x8

    sub-long v11, v4, v9

    int-to-long v13, v2

    add-long/2addr v11, v13

    :goto_0
    const/4 v2, 0x0

    cmp-long v13, v11, v7

    if-ltz v13, :cond_2

    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_1

    return v2

    :cond_1
    sub-long/2addr v11, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    add-int/lit8 v6, v6, -0x4

    sget-object v7, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v8, v6

    add-long/2addr v8, v4

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    if-eqz v7, :cond_3

    return v2

    :cond_3
    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v0, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v4

    if-nez v4, :cond_4

    if-eq v6, v7, :cond_5

    add-int/2addr v1, v7

    aget-byte v0, v0, v1

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    return v3

    :cond_6
    aget-byte v0, v0, v1

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method public static javaVersion()I
    .locals 1

    sget v0, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    return v0
.end method

.method private static javaVersion0()I
    .locals 4

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->majorVersionFromJavaSpecificationVersion()I

    move-result v0

    :goto_0
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Java version: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public static majorVersion(Ljava/lang/String;)I
    .locals 4

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget p0, v0, v1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    aget p0, v0, v1

    :cond_1
    return p0
.end method

.method public static majorVersionFromJavaSpecificationVersion()I
    .locals 2

    const-string v0, "java.specification.version"

    const-string v1, "1.6"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->majorVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static newDirectBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 2

    const-string v0, "capacity"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 p0, 0x1

    aput-object p1, p2, p0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static putByte(JB)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public static putByte([BIB)V
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static putInt(JI)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    return-void
.end method

.method public static putInt([BII)V
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static putLong(JJ)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method public static putLong([BIJ)V
    .locals 6

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static putShort(JS)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    return-void
.end method

.method public static putShort([BIS)V
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static reallocateMemory(JJ)J
    .locals 1

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static setMemory(JJB)V
    .locals 6

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    return-void
.end method

.method public static setMemory(Ljava/lang/Object;JJB)V
    .locals 7

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->setMemory(Ljava/lang/Object;JJB)V

    return-void
.end method

.method public static throwException(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "cause"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unalignedAccess()Z
    .locals 1

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    return v0
.end method
