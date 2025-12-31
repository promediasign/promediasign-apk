.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;,
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SchemaTypeLoaderCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CACHED_NOT_FOUND:Ljava/lang/Object;

.field private static final EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

.field public static METADATA_PACKAGE_LOAD:Ljava/lang/String;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderImpl:Ljava/lang/Class;


# instance fields
.field private _attributeCache:Ljava/util/Map;

.field private _attributeGroupCache:Ljava/util/Map;

.field private _attributeTypeCache:Ljava/util/Map;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _classLoaderTypeSystems:Ljava/util/Map;

.field private _classnameCache:Ljava/util/Map;

.field private _classpathTypeSystems:Ljava/util/Map;

.field private _documentCache:Ljava/util/Map;

.field private _elementCache:Ljava/util/Map;

.field private _idConstraintCache:Ljava/util/Map;

.field private _modelGroupCache:Ljava/util/Map;

.field private _resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

.field private _searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _typeCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/common/SystemCache;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SchemaTypeLoaderCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SchemaTypeLoaderCache;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$1;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->set(Lorg/apache/xmlbeans/impl/common/SystemCache;)V

    :cond_1
    return-void
.end method

.method private constructor <init>([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    :goto_0
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->initCaches()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static synthetic access$400()[Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object v0
.end method

.method public static build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    goto :goto_4

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$1;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-object v3, p0, v2

    if-eqz v3, :cond_5

    instance-of v4, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    invoke-static {v1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;Lorg/apache/xmlbeans/SchemaTypeLoader;)Z

    goto :goto_3

    :cond_2
    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    iget-object v4, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v5, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v5, v5, v4

    invoke-static {v1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;Lorg/apache/xmlbeans/SchemaTypeLoader;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "searchPath["

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "] is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;)[Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    :goto_4
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    aget-object p0, p0, v0

    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;-><init>([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)V

    return-object v0
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

.method public static crackEntry(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static crackEntry(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static crackPointer(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContextTypeLoader()Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->getFromTypeLoaderCache(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->get()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;-><init>([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->addToTypeLoaderCache(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/ClassLoader;)V

    :cond_0
    return-object v1
.end method

.method private final initCaches()V
    .locals 1

    .line 1
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classpathTypeSystems:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoaderTypeSystems:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_elementCache:Ljava/util/Map;

    .line 18
    .line 19
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeCache:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_modelGroupCache:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeGroupCache:Ljava/util/Map;

    .line 36
    .line 37
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_idConstraintCache:Ljava/util/Map;

    .line 42
    .line 43
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_typeCache:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_documentCache:Ljava/util/Map;

    .line 54
    .line 55
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeTypeCache:Ljava/util/Map;

    .line 60
    .line 61
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classnameCache:Ljava/util/Map;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeGroupCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/attributegroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered attribute group "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeGroupCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/attribute/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeTypeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/attribute/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not contain attribute type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeTypeCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_documentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/element/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not contain document type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_documentCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_elementCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/element/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_elementCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_idConstraintCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/identityconstraint/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered identity constraint "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_idConstraintCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_modelGroupCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/modelgroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered model group "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_modelGroupCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_typeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type system registered type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_typeCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    const-string v1, "/src"

    const-string v2, "schema"

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getTypeSystemOnClassloader(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Finding type system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " on classloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoaderTypeSystems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Type system "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " not cached - consulting field"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoaderTypeSystems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getTypeSystemOnClasspath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classpathTypeSystems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;-><init>(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classpathTypeSystems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    const/4 v4, 0x1

    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->isNamespaceDefined(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    .line 22
    .line 23
    const-string v2, "schema"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "/namespace/"

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 37
    .line 38
    const-string v3, "xmlns"

    .line 39
    .line 40
    invoke-direct {v2, p1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :cond_2
    return v0
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classnameCache:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    if-nez v0, :cond_6

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_2

    .line 30
    .line 31
    aget-object v0, v2, v1

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuffer;

    .line 46
    .line 47
    const-string v2, "schema"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    const-string v2, "/javaname/"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForClassname(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 84
    .line 85
    const-string v1, "Type system registered type "

    .line 86
    .line 87
    const-string v2, " but does not return it"

    .line 88
    .line 89
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classnameCache:Ljava/util/Map;

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v2, v0

    .line 105
    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_6
    return-object v0
.end method

.method public typeSystemForClassname(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    .line 1
    invoke-static {p1}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x2e

    .line 6
    .line 7
    const/16 v1, 0x2f

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    const-string p2, ".xsb"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClasspath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClassloader(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    .line 1
    invoke-static {p1}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    .line 11
    .line 12
    const-string p2, ".xsb"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v0

    .line 32
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForName(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    return-object v0
.end method

.method public typeSystemForName(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClasspath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClassloader(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
