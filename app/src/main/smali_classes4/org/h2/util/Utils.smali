.class public Lorg/h2/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/Utils$ClassFactory;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final GC_DELAY:I = 0x32

.field private static final MAX_GC:I = 0x8

.field private static final RESOURCES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static lastGC:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    new-array v1, v0, [I

    sput-object v1, Lorg/h2/util/Utils;->EMPTY_INT_ARRAY:[I

    new-array v0, v0, [J

    sput-object v0, Lorg/h2/util/Utils;->EMPTY_LONG_ARRAY:[J

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/util/Utils;->RESOURCES:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs callMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/h2/util/Utils;->match([Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v6

    if-le v6, v3, :cond_1

    move-object v4, v5

    move v3, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0, p1}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cloneByteArray([B)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    return-object p0

    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static declared-synchronized collectGarbage()V
    .locals 11

    const-class v0, Lorg/h2/util/Utils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-wide v6, Lorg/h2/util/Utils;->lastGC:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x32

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-gez v8, :cond_1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-nez v7, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sput-wide v1, Lorg/h2/util/Utils;->lastGC:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v5

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public static compareNotNullSigned([B[B)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_2

    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public static compareNotNullUnsigned([B[B)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_2

    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public static compareSecure([B[B)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-byte v5, p0, v3

    aget-byte v6, p1, v3

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    :goto_2
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static copy([B[B)[B
    .locals 2

    array-length v0, p0

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-array p1, v0, [B

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static getByteArrayHash([B)I
    .locals 5

    array-length v0, p0

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    move v1, v0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    aget-byte v3, p0, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v0, 0x10

    move v2, v0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v4, p0, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v2, v2, -0x1

    aget-byte v4, p0, v2

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x4

    :goto_2
    if-ge v3, v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v4, p0, v3

    add-int/2addr v0, v4

    add-int/2addr v3, v1

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    return v1
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMemoryFree()I
    .locals 3

    invoke-static {}, Lorg/h2/util/Utils;->collectGarbage()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static getMemoryMax()J
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMemoryUsed()I
    .locals 5

    invoke-static {}, Lorg/h2/util/Utils;->collectGarbage()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/16 v0, 0xa

    shr-long v0, v1, v0

    long-to-int v1, v0

    return v1
.end method

.method public static getNonPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Short;

    return-object p0

    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    const-class p0, Ljava/lang/Void;

    :cond_9
    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public static getProperty(Ljava/lang/String;Z)Z
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p1
.end method

.method public static getResource(Ljava/lang/String;)[B
    .locals 2

    sget-object v0, Lorg/h2/util/Utils;->RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/h2/util/Utils;->loadResource(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getStaticField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static haveCommonComparableSuperclass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Comparable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    move-object p0, v1

    goto :goto_0

    :cond_4
    :goto_3
    return v0
.end method

.method public static indexOf([B[BI)I
    .locals 6

    array-length v0, p1

    if-nez v0, :cond_0

    return p2

    :cond_0
    array-length v0, p0

    const/4 v1, -0x1

    if-le p2, v0, :cond_1

    return v1

    :cond_1
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    :goto_0
    if-ge p2, v0, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    add-int v4, p2, v3

    aget-byte v4, p0, v4

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public static isClassPresent(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static loadResource(Ljava/lang/String;)[B
    .locals 5

    const-string v0, "/"

    const-string v1, "data.zip"

    const-class v2, Lorg/h2/util/Utils;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, p0}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v3
.end method

.method private static match([Ljava/lang/Class;[Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/h2/util/Utils;->getNonPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aget-object v5, p1, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    :goto_1
    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public static varargs newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/h2/util/Utils;->match([Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v6

    if-le v6, v4, :cond_0

    move-object v2, v5

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newIntArray(I)[I
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/h2/util/Utils;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_0
    new-array p0, p0, [I

    return-object p0
.end method

.method public static newLongArray(I)[J
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/h2/util/Utils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    :cond_0
    new-array p0, p0, [J

    return-object p0
.end method

.method private static partialQuickSort([Ljava/lang/Object;IILjava/util/Comparator;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;II",
            "Ljava/util/Comparator<",
            "-TX;>;II)V"
        }
    .end annotation

    move v1, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    if-gt v1, v9, :cond_7

    if-lt v6, v8, :cond_7

    if-le v1, v8, :cond_0

    if-ge v6, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne v1, v6, :cond_1

    return-void

    :cond_1
    sub-int v0, v6, v1

    invoke-static {v0}, Lorg/h2/util/MathUtils;->randomInt(I)I

    move-result v0

    add-int/2addr v0, v1

    aget-object v2, p0, v0

    add-int v3, v1, v6

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    aput-object v2, p0, v3

    aput-object v4, p0, v0

    move v10, v1

    move v3, v6

    :cond_2
    :goto_0
    if-gt v10, v3, :cond_5

    :goto_1
    aget-object v0, p0, v10

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    aget-object v0, p0, v3

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    if-gt v10, v3, :cond_2

    aget-object v0, p0, v10

    add-int/lit8 v4, v10, 0x1

    aget-object v5, p0, v3

    aput-object v5, p0, v10

    add-int/lit8 v5, v3, -0x1

    aput-object v0, p0, v3

    move v10, v4

    move v3, v5

    goto :goto_0

    :cond_5
    if-ge v1, v3, :cond_6

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/h2/util/Utils;->partialQuickSort([Ljava/lang/Object;IILjava/util/Comparator;II)V

    :cond_6
    if-ge v10, v6, :cond_7

    move-object v0, p0

    move v1, v10

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/h2/util/Utils;->partialQuickSort([Ljava/lang/Object;IILjava/util/Comparator;II)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static partitionTopN([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;II",
            "Ljava/util/Comparator<",
            "-TX;>;)V"
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    add-int/2addr p2, p1

    add-int/lit8 v6, p2, -0x1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p1

    invoke-static/range {v1 .. v6}, Lorg/h2/util/Utils;->partialQuickSort([Ljava/lang/Object;IILjava/util/Comparator;II)V

    return-void
.end method

.method private static readInt([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1
.end method

.method public static readLong([BI)J
    .locals 4

    invoke-static {p0, p1}, Lorg/h2/util/Utils;->readInt([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lorg/h2/util/Utils;->readInt([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static scaleForAvailableMemory(I)I
    .locals 7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    const-wide/32 v4, 0x40000000

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    int-to-long v2, p0

    mul-long v2, v2, v0

    div-long/2addr v2, v4

    long-to-int p0, v2

    return p0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    const-string v1, "com.sun.management.OperatingSystemMXBean"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTotalPhysicalMemorySize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    int-to-long v2, p0

    mul-long v2, v2, v0

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v2

    :catch_0
    return p0
.end method

.method public static sortTopN([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;II",
            "Ljava/util/Comparator<",
            "-TX;>;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/h2/util/Utils;->partitionTopN([Ljava/lang/Object;IILjava/util/Comparator;)V

    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length p2, p0

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method private static writeInt([BII)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeLong([BIJ)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v1, v0

    invoke-static {p0, p1, v1}, Lorg/h2/util/Utils;->writeInt([BII)V

    add-int/lit8 p1, p1, 0x4

    long-to-int p3, p2

    invoke-static {p0, p1, p3}, Lorg/h2/util/Utils;->writeInt([BII)V

    return-void
.end method
