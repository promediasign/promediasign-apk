.class public Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEFAULT_COMPILER:Ljava/lang/String;

.field public static DEFAULT_JAR:Ljava/lang/String;

.field public static DEFAULT_MEM_MAX:Ljava/lang/String;

.field public static DEFAULT_MEM_START:Ljava/lang/String;

.field static synthetic class$org$apache$xmlbeans$impl$tool$CodeGenUtil:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->class$org$apache$xmlbeans$impl$tool$CodeGenUtil:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.tool.CodeGenUtil"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->class$org$apache$xmlbeans$impl$tool$CodeGenUtil:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->$assertionsDisabled:Z

    const-string v0, "8m"

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_MEM_START:Ljava/lang/String;

    const-string v0, "256m"

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_MEM_MAX:Ljava/lang/String;

    const-string v0, "javac"

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_COMPILER:Ljava/lang/String;

    const-string v0, "jar"

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_JAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAllJavaFiles(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->quoteAndEscapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$1;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->addAllJavaFiles(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static externalCompile(Ljava/util/List;Ljava/io/File;[Ljava/io/File;Z)Z
    .locals 10

    .line 1
    sget-object v4, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_COMPILER:Ljava/lang/String;

    sget-object v6, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_MEM_START:Ljava/lang/String;

    sget-object v7, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_MEM_MAX:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v9}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->externalCompile(Ljava/util/List;Ljava/io/File;[Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static externalCompile(Ljava/util/List;Ljava/io/File;[Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    .line 2
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_0

    sget-object p4, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_COMPILER:Ljava/lang/String;

    :cond_0
    invoke-static {p4}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->findJavaTool(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "compiler not found "

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    new-instance p1, Ljava/io/File;

    const-string p4, "."

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p4, "-d"

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->quoteAndEscapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-nez p2, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->systemClasspath()[Ljava/io/File;

    move-result-object p2

    :cond_4
    array-length p4, p2

    const/4 v0, 0x0

    if-lez p4, :cond_6

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_2
    array-length v1, p2

    if-ge p1, v1, :cond_5

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p2, p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "-classpath"

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->quoteAndEscapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez p5, :cond_7

    const-string p5, "1.4"

    :cond_7
    const-string p1, "-source"

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "-target"

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_8

    const-string p1, "-g"

    goto :goto_3

    :cond_8
    const-string p1, "-g:none"

    :goto_3
    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p9, :cond_9

    const-string p1, "-verbose"

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p0, p8}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->addAllJavaFiles(Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x0

    :try_start_0
    const-string p1, "javac"

    const-string p2, ""

    invoke-static {p1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_b

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "-J-Xms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p7, :cond_c

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "-J-Xmx"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "@"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p8, p1

    goto :goto_5

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Could not create command-line file for javac"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    :try_start_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p9, :cond_e

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "compile command:"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_6
    array-length p3, p1

    if-ge p2, p3, :cond_d

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p5, p1, p2

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_d
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    :cond_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance p4, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p5

    invoke-direct {p4, p5, p3}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    new-instance p4, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p5

    invoke-direct {p4, p5, p2}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    if-nez p9, :cond_f

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p4

    if-eqz p4, :cond_12

    :cond_f
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    if-lez p4, :cond_10

    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/PrintStream;->flush()V

    :cond_10
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    if-lez p3, :cond_11

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintStream;->flush()V

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_12

    return v0

    :cond_12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_13
    const/4 p0, 0x1

    return p0

    :goto_7
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return v0
.end method

.method public static externalCompile(Ljava/util/List;Ljava/io/File;[Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10

    .line 3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->externalCompile(Ljava/util/List;Ljava/io/File;[Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static externalJar(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_JAR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->externalJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static externalJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)Z
    .locals 2

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_JAR:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->findJavaTool(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p3, "jar not found "

    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "cf"

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->quoteNoEscapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "-C"

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->quoteNoEscapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p4, :cond_4

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "jar command:"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_1
    array-length p3, p1

    if-ge p2, p3, :cond_3

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    new-instance v0, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil$ThreadedReader;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    if-nez p4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p4

    if-eqz p4, :cond_8

    :cond_5
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    if-lez p4, :cond_6

    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/PrintStream;->flush()V

    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    if-lez p3, :cond_7

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintStream;->flush()V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0

    :goto_2
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return p0
.end method

.method private static findJavaTool(Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    const-string v2, ".exe"

    .line 16
    .line 17
    invoke-static {p0, v2}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    const-string v1, "java.home"

    .line 32
    .line 33
    invoke-static {v1}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v4, Ljava/io/File;

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    const-string v6, ".."

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    const-string v6, "bin"

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_2
    new-instance v5, Ljava/io/File;

    .line 80
    .line 81
    new-instance v7, Ljava/lang/StringBuffer;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    return-object v5

    .line 110
    :cond_3
    new-instance v4, Ljava/io/File;

    .line 111
    .line 112
    new-instance v5, Ljava/lang/StringBuffer;

    .line 113
    .line 114
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v4, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_4

    .line 138
    .line 139
    return-object v4

    .line 140
    :cond_4
    new-instance p0, Ljava/io/File;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_5

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_5
    return-object v0
.end method

.method private static quoteAndEscapeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "\\\\"

    const-string v3, "\\\\\\\\"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static quoteNoEscapeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 10
    .line 11
    const/16 v1, 0x2f

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "\""

    .line 17
    .line 18
    invoke-static {v0, p0, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 7

    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "//"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "///"

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance p0, Ljava/net/URI;

    const-string v2, "file"

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static systemClasspath()[Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "java.class.path"

    invoke-static {v1}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method
