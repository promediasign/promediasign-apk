.class public Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$schemaorg_apache_xmlbeans$system$sF1327CCA741569E70F9CA8C9AF9B44B2$TypeSystemHolder:Ljava/lang/Class;

.field public static final typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->loadTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    sput-object v0, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

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

.method private static final loadTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    sget-object v3, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sF1327CCA741569E70F9CA8C9AF9B44B2$TypeSystemHolder:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2.TypeSystemHolder"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v4}, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sF1327CCA741569E70F9CA8C9AF9B44B2$TypeSystemHolder:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "java.lang.Class"

    invoke-static {v3}, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$java$lang$Class:Ljava/lang/Class;

    :cond_1
    new-array v5, v1, [Ljava/lang/Class;

    aput-object v3, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sget-object v3, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sF1327CCA741569E70F9CA8C9AF9B44B2$TypeSystemHolder:Ljava/lang/Class;

    if-nez v3, :cond_2

    invoke-static {v4}, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lschemaorg_apache_xmlbeans/system/sF1327CCA741569E70F9CA8C9AF9B44B2/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sF1327CCA741569E70F9CA8C9AF9B44B2$TypeSystemHolder:Ljava/lang/Class;

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Could not instantiate SchemaTypeSystemImpl ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "): is the version of xbean.jar correct?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load org.apache.xmlbeans.impl.SchemaTypeSystemImpl: make sure xbean.jar is on the classpath."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
