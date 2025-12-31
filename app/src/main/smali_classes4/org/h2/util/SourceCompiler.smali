.class public Lorg/h2/util/SourceCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/SourceCompiler$ClassFileManager;,
        Lorg/h2/util/SourceCompiler$JavaClassObject;,
        Lorg/h2/util/SourceCompiler$StringJavaFileObject;,
        Lorg/h2/util/SourceCompiler$GroovyCompiler;
    }
.end annotation


# static fields
.field private static final COMPILE_DIR:Ljava/lang/String;

.field private static final JAVAC_SUN:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final JAVA_COMPILER:Ljavax/tools/JavaCompiler;


# instance fields
.field final compiled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final sources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field useJavaSystemCompiler:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.io.tmpdir"

    const-string v1, "."

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    :try_start_1
    const-string v1, "com.sun.tools.javac.Main"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    sget-boolean v0, Lorg/h2/engine/SysProperties;->JAVA_SYSTEM_COMPILER:Z

    iput-boolean v0, p0, Lorg/h2/util/SourceCompiler;->useJavaSystemCompiler:Z

    return-void
.end method

.method private static copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    new-instance v0, Lorg/h2/util/SourceCompiler$2;

    invoke-direct {v0, p0, p1}, Lorg/h2/util/SourceCompiler$2;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/h2/util/Task;->execute()Lorg/h2/util/Task;

    return-void
.end method

.method private static varargs exec([Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    const-string v3, "JAVA_TOOL_OPTIONS"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/util/SourceCompiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/util/SourceCompiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/h2/util/SourceCompiler;->handleSyntaxError(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getCompleteSourceCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "package "

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const-string v2, ";\n"

    .line 18
    .line 19
    invoke-static {v1, v0, p0, v2}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const-string p0, "@CODE"

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ltz p0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x5

    .line 36
    add-int/2addr v2, p0

    .line 37
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "import java.util.*;\nimport java.math.*;\nimport java.sql.*;\n"

    .line 43
    .line 44
    :goto_0
    const-string p0, "public class "

    .line 45
    .line 46
    const-string v2, " {\n    public static "

    .line 47
    .line 48
    invoke-static {v1, v0, p0, p1, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p0, "\n}\n"

    .line 52
    .line 53
    invoke-static {p2, p0, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method private static handleSyntaxError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "warning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Note:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "warning:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xa410

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catch_0
    :cond_3
    return-void
.end method

.method private static isGroovySource(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "//groovy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@groovy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static javacProcess(Ljava/io/File;)V
    .locals 8

    sget-object v4, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v0, "javac"

    const-string v1, "-sourcepath"

    const-string v3, "-d"

    const-string v5, "-encoding"

    move-object v2, v4

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/SourceCompiler;->exec([Ljava/lang/String;)I

    return-void
.end method

.method private static declared-synchronized javacSun(Ljava/io/File;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Lorg/h2/util/SourceCompiler;

    monitor-enter v2

    :try_start_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v5}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    sget-object v5, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    const-string v6, "compile"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "-sourcepath"

    sget-object v10, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const-string v9, "-d"

    const-string v11, "-encoding"

    const-string v12, "UTF-8"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object v8, v10

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v6, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p0}, Lorg/h2/util/SourceCompiler;->handleSyntaxError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit v2

    throw p0
.end method


# virtual methods
.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/SourceCompiler;->isGroovySource(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lorg/h2/util/SourceCompiler$GroovyCompiler;->parseClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Lorg/h2/util/SourceCompiler$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/h2/util/SourceCompiler$1;-><init>(Lorg/h2/util/SourceCompiler;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/h2/util/SourceCompiler;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public javacCompile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/io/File;

    .line 11
    .line 12
    const/16 v2, 0x2e

    .line 13
    .line 14
    const/16 v3, 0x2f

    .line 15
    .line 16
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v0, v1

    .line 31
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 32
    .line 33
    const-string v1, ".java"

    .line 34
    .line 35
    invoke-static {p2, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/io/File;

    .line 43
    .line 44
    const-string v2, ".class"

    .line 45
    .line 46
    invoke-static {p2, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-static {p2, v0}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    .line 73
    .line 74
    .line 75
    sget-object p2, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    .line 76
    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    invoke-static {p1}, Lorg/h2/util/SourceCompiler;->javacSun(Ljava/io/File;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p2

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception p2

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {p1}, Lorg/h2/util/SourceCompiler;->javacProcess(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 91
    .line 92
    .line 93
    move-result-wide p2

    .line 94
    long-to-int p3, p2

    .line 95
    new-array p2, p3, [B

    .line 96
    .line 97
    new-instance p3, Ljava/io/DataInputStream;

    .line 98
    .line 99
    new-instance v0, Ljava/io/FileInputStream;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 117
    .line 118
    .line 119
    return-object p2

    .line 120
    :goto_1
    :try_start_1
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 129
    .line 130
    .line 131
    throw p2
.end method

.method public javaxToolsJavac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Ljava/io/StringWriter;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v7, Lorg/h2/util/SourceCompiler$ClassFileManager;

    .line 13
    .line 14
    sget-object v8, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    invoke-interface {v8, v9, v9, v9}, Ljavax/tools/JavaCompiler;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v7, v0}, Lorg/h2/util/SourceCompiler$ClassFileManager;-><init>(Ljavax/tools/StandardJavaFileManager;)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lorg/h2/util/SourceCompiler$StringJavaFileObject;

    .line 30
    .line 31
    invoke-direct {v0, p1, p3}, Lorg/h2/util/SourceCompiler$StringJavaFileObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    monitor-enter v8

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v0, v8

    .line 42
    move-object v1, p2

    .line 43
    move-object v2, v7

    .line 44
    :try_start_0
    invoke-interface/range {v0 .. v6}, Ljavax/tools/JavaCompiler;->getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-interface {p3}, Ljavax/tools/JavaCompiler$CompilationTask;->call()Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Lorg/h2/util/SourceCompiler;->handleSyntaxError(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :try_start_1
    invoke-interface {v7, v9}, Ljavax/tools/JavaFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    return-object p1

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    throw p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public setJavaSystemCompiler(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/util/SourceCompiler;->useJavaSystemCompiler:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method
