.class public abstract Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

.field private static final diagnosticPrefix:Ljava/lang/String;

.field private static diagnosticsStream:Ljava/io/PrintStream;

.field protected static factories:Ljava/util/Hashtable;

.field private static final thisClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "org.apache.commons.logging.LogFactory"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    const-string v0, "BOOTLOADER"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string v0, "UNKNOWN"

    .line 30
    .line 31
    :goto_0
    const-string v2, "[LogFactory from "

    .line 32
    .line 33
    const-string v3, "] "

    .line 34
    .line 35
    invoke-static {v2, v0, v3}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->initDiagnostics()Ljava/io/PrintStream;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 46
    .line 47
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 56
    .line 57
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logClassLoaderEnvironment(Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->createFactoryStore()Ljava/util/Hashtable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 65
    .line 66
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const-string v0, "BOOTSTRAP COMPLETED"

    .line 73
    .line 74
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

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

.method public static createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 12

    const-string v0, "Unable to load factory class via classloader "

    const-string v1, "Unable to locate any class called \'"

    const-string v2, "\' cannot be loaded via classloader "

    const-string v3, "Class \'"

    const-string v4, "The conflict is caused by the presence of multiple LogFactory classes in incompatible classloaders. Background can be found in http://commons.apache.org/logging/tech.html. If you have not explicitly specified a custom LogFactory then it is likely that the container has set one without your knowledge. In this case, consider using the commons-logging-adapters.jar file or specifying the standard LogFactory from the command line. "

    const-string v5, "The application has specified that a custom LogFactory implementation should be used but Class \'"

    const-string v6, "Factory class "

    const-string v7, "Loaded class "

    const-string v8, "org.apache.commons.logging.LogFactory"

    const/4 v9, 0x0

    if-eqz p1, :cond_9

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v11, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    if-nez v11, :cond_0

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v9, v10

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :catch_2
    move-exception v2

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " from classloader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " loaded from classloader "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " does not extend \'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    if-nez v6, :cond_2

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\' as loaded by this classloader."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    const-string v6, "[BAD CL TREE] "

    invoke-static {v6, p1}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :cond_3
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LA/g;->x(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v9

    :catch_3
    move-exception p0

    goto/16 :goto_5

    :catch_4
    move-object v10, v9

    :catch_5
    :try_start_2
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v1, :cond_a

    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->implementsLogFactory(Ljava/lang/Class;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\' cannot be converted to \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    if-nez p0, :cond_4

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'. "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string p0, "Please check the custom implementation. "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string p0, "Help can be found @http://commons.apache.org/logging/troubleshooting.html."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6
    move-exception v1

    move-object v10, v9

    :goto_3
    sget-object v4, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v4, :cond_a

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " - it depends on some other class that cannot be found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_7
    throw v1

    :catch_7
    move-exception v2

    move-object v10, v9

    :goto_4
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v3, :cond_a

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\' via classloader "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_8
    throw v2

    :cond_9
    move-object v10, v9

    :cond_a
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " - trying the classloader associated with this LogFactory."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_b
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    return-object v9

    :catch_8
    move-exception p1

    move-object v9, p0

    move-object p0, p1

    :goto_5
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "Unable to create LogFactory instance."

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_c
    if-eqz v9, :cond_e

    sget-object p1, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    if-nez p1, :cond_d

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    :cond_d
    invoke-virtual {p1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_e

    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v0, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_e
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {p1, p0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static final createFactoryStore()Ljava/util/Hashtable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.commons.logging.LogFactory.HashtableImpl"

    invoke-static {v1, v0}, Lorg/apache/commons/logging/LogFactory;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    const-string v2, "org.apache.commons.logging.impl.WeakHashtable"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->handleThrowable(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    const-string v2, "[ERROR] LogFactory: Load of custom hashtable failed"

    if-eqz v1, :cond_1

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :cond_3
    return-object v0
.end method

.method public static directGetContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LA/g;->x(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unable to get classloader for class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "\' due to security restrictions - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_0
    throw v0
.end method

.method private static final getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    move-wide v4, v1

    .line 13
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_8

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/net/URL;

    .line 24
    .line 25
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;

    .line 26
    .line 27
    .line 28
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    const-string v8, "priority"

    .line 32
    .line 33
    const-string v9, " with priority "

    .line 34
    .line 35
    const-string v10, "\'"

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    move-wide v4, v3

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    nop

    .line 52
    move-object v3, v6

    .line 53
    move-object v0, v7

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_2
    move-wide v4, v1

    .line 57
    :goto_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "[LOOKUP] Properties file found at \'"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .line 91
    .line 92
    :cond_3
    move-object v3, v6

    .line 93
    move-object v0, v7

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    :try_start_3
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 102
    .line 103
    .line 104
    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    goto :goto_2

    .line 106
    :catch_1
    nop

    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_5
    move-wide v11, v1

    .line 110
    :goto_2
    const-string v8, "[LOOKUP] Properties file at \'"

    .line 111
    .line 112
    cmpl-double v13, v11, v4

    .line 113
    .line 114
    if-lez v13, :cond_7

    .line 115
    .line 116
    :try_start_4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_6

    .line 121
    .line 122
    new-instance v13, Ljava/lang/StringBuffer;

    .line 123
    .line 124
    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    const-string v8, " overrides file at \'"

    .line 143
    .line 144
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    move-object v3, v6

    .line 167
    move-object v0, v7

    .line 168
    move-wide v4, v11

    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_1

    .line 176
    .line 177
    new-instance v7, Ljava/lang/StringBuffer;

    .line 178
    .line 179
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    const-string v6, " does not override file at \'"

    .line 198
    .line 199
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :catch_2
    nop

    .line 224
    move-object v3, v0

    .line 225
    :goto_3
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_8

    .line 230
    .line 231
    const-string p0, "SecurityException thrown while trying to find/read config files."

    .line 232
    .line 233
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    if-eqz p0, :cond_a

    .line 241
    .line 242
    if-nez v0, :cond_9

    .line 243
    .line 244
    const-string p0, "[LOOKUP] No properties file of name \'"

    .line 245
    .line 246
    const-string v1, "\' found."

    .line 247
    .line 248
    invoke-static {p0, p1, v1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    :goto_4
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_9
    new-instance p0, Ljava/lang/StringBuffer;

    .line 257
    .line 258
    const-string v1, "[LOOKUP] Properties file of name \'"

    .line 259
    .line 260
    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    .line 265
    .line 266
    const-string p1, "\' found at \'"

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 272
    .line 273
    .line 274
    const/16 p1, 0x22

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    goto :goto_4

    .line 284
    :cond_a
    :goto_5
    return-object v0
.end method

.method private static getContextClassLoaderInternal()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/LogFactory$1;

    invoke-direct {v0}, Lorg/apache/commons/logging/LogFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getFactory()Lorg/apache/commons/logging/LogFactory;
    .locals 13

    .line 1
    const-string v0, "]. Trying alternative implementations..."

    .line 2
    .line 3
    const-string v1, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    .line 4
    .line 5
    const-string v2, "org.apache.commons.logging.LogFactory"

    .line 6
    .line 7
    const-string v3, " as specified by file \'META-INF/services/org.apache.commons.logging.LogFactory\' which was present in the path of the context classloader."

    .line 8
    .line 9
    const-string v4, "[LOOKUP]  Creating an instance of LogFactory class "

    .line 10
    .line 11
    const-string v5, "\' as specified by system property org.apache.commons.logging.LogFactory"

    .line 12
    .line 13
    const-string v6, "[LOOKUP] Creating an instance of LogFactory class \'"

    .line 14
    .line 15
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoaderInternal()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    if-nez v7, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    if-eqz v8, :cond_0

    .line 26
    .line 27
    const-string v8, "Context classloader is null."

    .line 28
    .line 29
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {v7}, Lorg/apache/commons/logging/LogFactory;->getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    new-instance v8, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    const-string v9, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    .line 44
    .line 45
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v7}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v8, "[LOOKUP] "

    .line 63
    .line 64
    invoke-static {v8, v7}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    const-string v8, "commons-logging.properties"

    .line 68
    .line 69
    invoke-static {v7, v8}, Lorg/apache/commons/logging/LogFactory;->getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    const-string v9, "use_tccl"

    .line 76
    .line 77
    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-nez v9, :cond_2

    .line 92
    .line 93
    sget-object v9, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-object v9, v7

    .line 97
    :goto_0
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-eqz v10, :cond_3

    .line 102
    .line 103
    const-string v10, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 104
    .line 105
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    const/4 v10, 0x0

    .line 109
    :try_start_0
    invoke-static {v2, v10}, Lorg/apache/commons/logging/LogFactory;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    if-eqz v11, :cond_5

    .line 114
    .line 115
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_4

    .line 120
    .line 121
    new-instance v12, Ljava/lang/StringBuffer;

    .line 122
    .line 123
    invoke-direct {v12, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception v5

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    :goto_1
    invoke-static {v11, v9, v7}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    const-string v5, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    .line 155
    .line 156
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :goto_2
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuffer;

    .line 167
    .line 168
    const-string v2, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v3, "] as specified by a system property."

    .line 182
    .line 183
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    throw v0

    .line 191
    :goto_3
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_7

    .line 196
    .line 197
    new-instance v6, Ljava/lang/StringBuffer;

    .line 198
    .line 199
    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-static {v6, v5, v0}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_8

    .line 222
    .line 223
    const-string v5, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 224
    .line 225
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_8
    :try_start_1
    const-string v5, "META-INF/services/org.apache.commons.logging.LogFactory"

    .line 229
    .line 230
    invoke-static {v7, v5}, Lorg/apache/commons/logging/LogFactory;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    .line 231
    .line 232
    .line 233
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 234
    if-eqz v5, :cond_a

    .line 235
    .line 236
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    .line 237
    .line 238
    new-instance v11, Ljava/io/InputStreamReader;

    .line 239
    .line 240
    const-string v12, "UTF-8"

    .line 241
    .line 242
    invoke-direct {v11, v5, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :catch_2
    move-exception v3

    .line 250
    goto :goto_6

    .line 251
    :catch_3
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    .line 252
    .line 253
    new-instance v11, Ljava/io/InputStreamReader;

    .line 254
    .line 255
    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 259
    .line 260
    .line 261
    :goto_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 266
    .line 267
    .line 268
    if-eqz v5, :cond_b

    .line 269
    .line 270
    const-string v6, ""

    .line 271
    .line 272
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-nez v6, :cond_b

    .line 277
    .line 278
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_9

    .line 283
    .line 284
    new-instance v6, Ljava/lang/StringBuffer;

    .line 285
    .line 286
    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_9
    invoke-static {v5, v9, v7}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_a
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_b

    .line 311
    .line 312
    const-string v3, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    .line 313
    .line 314
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :goto_6
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-eqz v4, :cond_b

    .line 323
    .line 324
    new-instance v4, Ljava/lang/StringBuffer;

    .line 325
    .line 326
    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v4, v1, v0}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_b
    :goto_7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v8, :cond_f

    .line 349
    .line 350
    if-eqz v0, :cond_c

    .line 351
    .line 352
    const-string v0, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    .line 353
    .line 354
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :cond_c
    invoke-virtual {v8, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_e

    .line 362
    .line 363
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_d

    .line 368
    .line 369
    const-string v1, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    .line 370
    .line 371
    const-string v2, "\'"

    .line 372
    .line 373
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_d
    invoke-static {v0, v9, v7}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 381
    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_e
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_10

    .line 389
    .line 390
    const-string v0, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    .line 391
    .line 392
    :goto_8
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_f
    if-eqz v0, :cond_10

    .line 397
    .line 398
    const-string v0, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_10
    :goto_9
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_11

    .line 406
    .line 407
    const-string v0, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    .line 408
    .line 409
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_11
    const-string v0, "org.apache.commons.logging.impl.LogFactoryImpl"

    .line 413
    .line 414
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 415
    .line 416
    invoke-static {v0, v1, v7}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 417
    .line 418
    .line 419
    return-object v10
.end method

.method private static getProperties(Ljava/net/URL;)Ljava/util/Properties;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/LogFactory$5;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/LogFactory$5;-><init>(Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/LogFactory$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/LogFactory$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Enumeration;

    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/LogFactory$6;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static handleThrowable(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0
.end method

.method private static implementsLogFactory(Ljava/lang/Class;)Z
    .locals 4

    const-string v0, "[CUSTOM LOG FACTORY] "

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-static {v0, v2}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "org.apache.commons.logging.LogFactory"

    invoke-static {v3, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " implements LogFactory but was loaded by an incompatible classloader."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " does not implement LogFactory."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_2
    const-string p0, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    :goto_1
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_5

    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_5
    return v1
.end method

.method private static initDiagnostics()Ljava/io/PrintStream;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.commons.logging.diagnostics.dest"

    invoke-static {v1, v0}, Lorg/apache/commons/logging/LogFactory;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "STDOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0

    :cond_1
    const-string v2, "STDERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static isDiagnosticsEnabled()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logClassLoaderEnvironment(Ljava/lang/Class;)V
    .locals 3

    .line 1
    const-string v0, "[ENV] Application classpath (java.class.path): "

    .line 2
    .line 3
    const-string v1, "[ENV] Extension directories (java.ext.dir): "

    .line 4
    .line 5
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "java.ext.dir"

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuffer;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "java.class.path"

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const-string v0, "[ENV] Security setting prevent interrogation of system classpaths."

    .line 56
    .line 57
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    const-string v1, "[ENV] Class "

    .line 69
    .line 70
    const-string v2, " was loaded via classloader "

    .line 71
    .line 72
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "[ENV] Ancestry of classloader which loaded "

    .line 91
    .line 92
    const-string v2, " is "

    .line 93
    .line 94
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0, p0}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catch_1
    const-string p0, "[ENV] Security forbids determining the classloader for "

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private static final logDiagnostic(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method private static logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    const-string v2, " == \'"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v0, "\'"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    const-string v2, "ClassLoader tree:"

    .line 54
    .line 55
    invoke-static {p0, v2}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    if-ne p1, v0, :cond_3

    .line 70
    .line 71
    const-string p0, " (SYSTEM) "

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    const-string p0, " --> "

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    const-string p0, "BOOT"

    .line 88
    .line 89
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    const-string p0, " --> SECRET"

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void

    .line 104
    :catch_1
    const-string p1, "Security forbids determining the system classloader."

    .line 105
    .line 106
    invoke-static {p0, p1}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/LogFactory$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$2;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/commons/logging/LogConfigurationException;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "An error occurred while loading the factory class:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_0
    throw p0

    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Created object "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " to manage classloader "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
