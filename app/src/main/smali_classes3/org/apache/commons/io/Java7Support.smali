.class abstract Lorg/apache/commons/io/Java7Support;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IS_JAVA7:Z

.field private static createSymlink:Ljava/lang/reflect/Method;

.field private static delete:Ljava/lang/reflect/Method;

.field private static emptyFileAttributes:Ljava/lang/Object;

.field private static emptyLinkOpts:Ljava/lang/Object;

.field private static exists:Ljava/lang/reflect/Method;

.field private static isSymbolicLink:Ljava/lang/reflect/Method;

.field private static readSymlink:Ljava/lang/reflect/Method;

.field private static toFile:Ljava/lang/reflect/Method;

.field private static toPath:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "java.nio.file.Files"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "java.nio.file.Path"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "java.nio.file.attribute.FileAttribute"

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "java.nio.file.LinkOption"

    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v7, "isSymbolicLink"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v5, v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/io/Java7Support;->isSymbolicLink:Ljava/lang/reflect/Method;

    const-string v7, "delete"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v5, v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/io/Java7Support;->delete:Ljava/lang/reflect/Method;

    const-string v7, "readSymbolicLink"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v5, v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/io/Java7Support;->readSymlink:Ljava/lang/reflect/Method;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/io/Java7Support;->emptyFileAttributes:Ljava/lang/Object;

    const-string v7, "createSymbolicLink"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v5, v8, v2

    aput-object v5, v8, v1

    aput-object v6, v8, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/io/Java7Support;->createSymlink:Ljava/lang/reflect/Method;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/Java7Support;->emptyLinkOpts:Ljava/lang/Object;

    const-string v6, "exists"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v5, v0, v2

    aput-object v3, v0, v1

    invoke-virtual {v4, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/Java7Support;->exists:Ljava/lang/reflect/Method;

    const-class v0, Ljava/io/File;

    const-string v3, "toPath"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/Java7Support;->toPath:Ljava/lang/reflect/Method;

    const-string v0, "toFile"

    invoke-virtual {v5, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/Java7Support;->toFile:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lorg/apache/commons/io/Java7Support;->IS_JAVA7:Z

    return-void
.end method

.method public static isAtLeastJava7()Z
    .locals 1

    sget-boolean v0, Lorg/apache/commons/io/Java7Support;->IS_JAVA7:Z

    return v0
.end method

.method public static isSymLink(Ljava/io/File;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/commons/io/Java7Support;->toPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/io/Java7Support;->isSymbolicLink:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
