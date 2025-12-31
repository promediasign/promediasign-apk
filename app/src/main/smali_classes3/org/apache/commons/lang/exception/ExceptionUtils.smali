.class public abstract Lorg/apache/commons/lang/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field private static final CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

.field private static final THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "java.lang.Throwable"

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    const-string v12, "getLinkedCause"

    const-string v13, "getThrowable"

    const-string v2, "getCause"

    const-string v3, "getNextException"

    const-string v4, "getTargetException"

    const-string v5, "getException"

    const-string v6, "getSourceException"

    const-string v7, "getRootCause"

    const-string v8, "getCausedByException"

    const-string v9, "getNested"

    const-string v10, "getLinkedException"

    const-string v11, "getNestedException"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_0
    const-string v3, "getCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    :try_start_1
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_1
    const-string v3, "initCause"

    sget-object v4, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v4, :cond_2

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez p1, :cond_1

    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object p1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-static {p0, v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    const-string p1, "detail"

    invoke-static {p0, p1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private static getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method private static getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {p0}, Lorg/apache/commons/lang/exception/Nestable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isThrowableNested()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The List must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
