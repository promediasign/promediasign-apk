.class Lorg/apache/poi/javax/xml/stream/FactoryFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;,
        Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
    }
.end annotation


# static fields
.field static synthetic class$javax$xml$stream$FactoryFinder:Ljava/lang/Class;

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "xml.stream.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "STREAM: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    const-string v0, "loaded from services: "

    const-string v1, "found "

    const-string v2, "found java.home property "

    const-string v3, "found system property"

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-static {v4, p2}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    :try_start_1
    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "jaxp.properties"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-static {v3, p2}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v2

    sget-boolean v3, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "META-INF/services/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    :try_start_2
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :goto_1
    sget-boolean v1, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    if-eqz p1, :cond_4

    const-string p0, "loaded from fallback value: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;

    const-string p2, "Provider for "

    const-string v0, " cannot be found"

    .line 2
    invoke-static {p2, p0, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p0, p2}, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static findClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    const-string v0, "org.apache.poi.javax.xml.stream.FactoryFinder"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$javax$xml$stream$FactoryFinder:Ljava/lang/Class;

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$javax$xml$stream$FactoryFinder:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :catch_2
    nop

    goto :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "$ClassLoaderFinderConcrete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_1
    new-instance v1, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_2
    sget-object v1, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$javax$xml$stream$FactoryFinder:Ljava/lang/Class;

    if-nez v1, :cond_1

    :goto_3
    invoke-static {v0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$javax$xml$stream$FactoryFinder:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_5

    :goto_4
    sget-object v1, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->class$javax$xml$stream$FactoryFinder:Ljava/lang/Class;

    if-nez v1, :cond_1

    goto :goto_3

    :goto_5
    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "Provider "

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :catch_1
    move-exception p1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :goto_1
    new-instance v1, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string p0, " could not be instantiated: "

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v1, p0, p1}, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :goto_2
    new-instance v1, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;

    .line 50
    .line 51
    const-string v2, " not found"

    .line 52
    .line 53
    invoke-static {v0, p0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0, p1}, Lorg/apache/poi/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method
