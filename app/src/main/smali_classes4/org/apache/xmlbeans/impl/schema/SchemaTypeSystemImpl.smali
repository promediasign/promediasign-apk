.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;,
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;,
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATA_BABE:I = -0x25854542

.field private static final EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

.field private static final EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

.field private static final EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

.field private static final EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

.field private static final EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

.field private static final EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

.field private static final EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

.field public static final FIELD_GLOBAL:I = 0x1

.field public static final FIELD_LOCALATTR:I = 0x2

.field public static final FIELD_LOCALELT:I = 0x3

.field public static final FIELD_NONE:I = 0x0

.field public static final FILETYPE_SCHEMAATTRIBUTE:I = 0x4

.field public static final FILETYPE_SCHEMAATTRIBUTEGROUP:I = 0x7

.field public static final FILETYPE_SCHEMAELEMENT:I = 0x3

.field public static final FILETYPE_SCHEMAIDENTITYCONSTRAINT:I = 0x8

.field public static final FILETYPE_SCHEMAINDEX:I = 0x1

.field public static final FILETYPE_SCHEMAMODELGROUP:I = 0x6

.field public static final FILETYPE_SCHEMAPOINTER:I = 0x5

.field public static final FILETYPE_SCHEMATYPE:I = 0x2

.field public static final FLAG_PART_ABSTRACT:I = 0x80

.field public static final FLAG_PART_BLOCKEXT:I = 0x10

.field public static final FLAG_PART_BLOCKREST:I = 0x20

.field public static final FLAG_PART_BLOCKSUBST:I = 0x40

.field public static final FLAG_PART_FINALEXT:I = 0x100

.field public static final FLAG_PART_FINALREST:I = 0x200

.field public static final FLAG_PART_FIXED:I = 0x4

.field public static final FLAG_PART_NILLABLE:I = 0x8

.field public static final FLAG_PART_SKIPPABLE:I = 0x1

.field public static final FLAG_PROP_ISATTR:I = 0x1

.field public static final FLAG_PROP_JAVAARRAY:I = 0x8

.field public static final FLAG_PROP_JAVAOPTIONAL:I = 0x4

.field public static final FLAG_PROP_JAVASINGLETON:I = 0x2

.field private static final HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

.field public static final MAJOR_VERSION:I = 0x2

.field public static METADATA_PACKAGE_GEN:Ljava/lang/String; = null

.field public static final MINOR_VERSION:I = 0x18

.field public static final RELEASE_NUMBER:I

.field static final SINGLE_ZERO_BYTE:[B

.field private static _mask:[B

.field private static _random:Ljava/util/Random;

.field static synthetic class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;


# instance fields
.field private _allNonGroupHandlesResolved:Z

.field private _annotations:Ljava/util/List;

.field private _attributeGroups:Ljava/util/Map;

.field private _attributeTypes:Ljava/util/Map;

.field private _basePackage:Ljava/lang/String;

.field private _classloader:Ljava/lang/ClassLoader;

.field private _containers:Ljava/util/Map;

.field private _deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

.field private _documentTypes:Ljava/util/Map;

.field private _filer:Lorg/apache/xmlbeans/Filer;

.field private _globalAttributes:Ljava/util/Map;

.field private _globalElements:Ljava/util/Map;

.field private _globalTypes:Ljava/util/Map;

.field private _identityConstraints:Ljava/util/Map;

.field private _incomplete:Z

.field _linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

.field private _modelGroups:Ljava/util/Map;

.field private _name:Ljava/lang/String;

.field private _namespaces:Ljava/util/Set;

.field private _redefinedAttributeGroups:Ljava/util/List;

.field private _redefinedGlobalTypes:Ljava/util/List;

.field private _redefinedModelGroups:Ljava/util/List;

.field private final _resolvedHandles:Ljava/util/Map;

.field private _resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

.field private _typeRefsByClassname:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    :cond_0
    sput-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    const-string v3, "org.apache.xmlbeans.SchemaTypeSystem"

    if-nez v2, :cond_1

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v2, :cond_2

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v4, :cond_3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "\\."

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    const-string v2, "org.apache.xmlbeans.impl.schema.TypeSystemHolder"

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->makeClassStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x10

    new-array v2, v2, [B

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaType;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->SINGLE_ZERO_BYTE:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Loading type system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Finished loading type system "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v1, p1, v0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nextBytes([B)V

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "schema"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".system."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeLoader;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/ResourceLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/Filer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    return-object p0
.end method

.method private addContainer(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private assertContainersSynchronized()V
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalElements()Ljava/util/List;

    move-result-object v2

    new-array v3, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalAttributes()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->modelGroups()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_4

    :cond_6
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->redefinedModelGroups()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_9
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->attributeGroups()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_8

    :cond_c
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->redefinedAttributeGroups()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_f
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalTypes()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_c

    :cond_12
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_d

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    :goto_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->redefinedGlobalTypes()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    :cond_15
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    :goto_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->documentTypes()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaType;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_10

    :cond_18
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_11

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    :goto_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->attributeTypes()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaType;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_12

    :cond_1b
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    :goto_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->identityConstraints()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    check-cast v2, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_14

    :cond_1e
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    :goto_15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_21
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_23

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_17

    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    :goto_17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_24
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_19

    :cond_25
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_26
    :goto_19
    return-void
.end method

.method private static buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addDocumentType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAttributeType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    if-eqz v1, :cond_c

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    goto :goto_8

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_9

    :cond_a
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {p3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V

    goto :goto_b

    :cond_c
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaAnnotation;

    const-string p3, ""

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    goto :goto_c

    :cond_d
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    goto :goto_d

    :cond_e
    return-void
.end method

.method private static buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildTypeRefsByClassname()Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v5, 0x24

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
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

.method public static crackPointer(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, -0x25854542

    if-eq p0, v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :cond_1
    const/16 v4, 0x18

    if-le v2, v4, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v0

    :cond_2
    if-gt p0, v3, :cond_3

    if-ne p0, v3, :cond_4

    const/16 p0, 0x12

    if-lt v2, p0, :cond_4

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    :cond_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v0

    :cond_5
    :try_start_8
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    const-string v2, "pointer"

    const-string v3, "unk"

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->readFrom(Ljava/io/DataInputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->stringForCode(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_5
    nop

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_6
    nop

    move-object v1, v0

    goto :goto_1

    :goto_0
    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_6
    throw p0

    :goto_1
    if-eqz v1, :cond_7

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :cond_7
    return-object v0
.end method

.method public static fileContainsTypeSystem(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "Problem loading SchemaTypeSystem, zipfilename "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "index.xsb"

    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    .line 36
    .line 37
    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 47
    .line 48
    .line 49
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    move-object v2, v3

    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v1

    .line 58
    move-object v2, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .line 63
    .line 64
    :catch_1
    return p0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catch_2
    move-exception v1

    .line 68
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuffer;

    .line 69
    .line 70
    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->log(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    .line 85
    .line 86
    new-instance p0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "index"

    .line 93
    .line 94
    const/16 v3, 0x9

    .line 95
    .line 96
    invoke-direct {p0, v0, p1, v1, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :goto_2
    if-eqz v2, :cond_2

    .line 101
    .line 102
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 103
    .line 104
    .line 105
    :catch_3
    :cond_2
    throw p0
.end method

.method private fixupContainers()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 3

    const-string v0, ".TypeSystemHolder"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "typeSystem"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p1
.end method

.method private getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->addContainer(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private initFromHeader()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Reading unresolved handles for type system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    const-string v4, "index"

    invoke-direct {v3, p0, v4, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandlePool(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readClassnameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readNamespaces()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v5, 0x13

    invoke-virtual {v3, v6, v5, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotations()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    :cond_1
    invoke-direct {p0, v0, v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-void

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    :cond_2
    throw v0
.end method

.method private static makeClassStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    const/16 v1, 0x2f

    .line 8
    .line 9
    const/16 v2, 0x2e

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    const-string v4, "L"

    .line 21
    .line 22
    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    aget-object v3, v0, v3

    .line 26
    .line 27
    const-string v4, ";"

    .line 28
    .line 29
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x2

    .line 34
    aput-object v1, v0, v3

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuffer;

    .line 37
    .line 38
    const-string v3, "class$"

    .line 39
    .line 40
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v3, 0x24

    .line 44
    .line 45
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 v1, 0x3

    .line 57
    aput-object p0, v0, v1

    .line 58
    .line 59
    return-object v0
.end method

.method private static nameToPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static declared-synchronized nextBytes([B)V
    .locals 14

    const-class v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_4

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v5, "user.name"

    const-string v6, "user.dir"

    const-string v7, "user.timezone"

    const-string v8, "user.country"

    const-string v9, "java.class.path"

    const-string v10, "java.home"

    const-string v11, "java.vendor"

    const-string v12, "java.version"

    const-string v13, "os.version"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x9

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-static {v6}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_3

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    array-length v5, v4

    rem-int v5, v3, v5

    aget-byte v6, v4, v5

    mul-int/lit8 v6, v6, 0x15

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :goto_3
    :try_start_2
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;

    :cond_4
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextBytes([B)V

    :goto_4
    array-length v1, p0

    if-ge v2, v1, :cond_5

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    array-length v3, v1

    and-int/2addr v3, v2

    aget-byte v4, p0, v2

    aget-byte v1, v1, v3

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0

    throw p0
.end method

.method private static repackageConstant(Ljava/lang/String;[Ljava/lang/String;Lrepackage/Repackager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object p0, p1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lrepackage/Repackager;->repackage(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0
.end method

.method public attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public containers()[Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public documentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    return-object p1
.end method

.method public findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    return-object p1
.end method

.method public findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p1
.end method

.method public findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p1
.end method

.method public findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    return-object p1
.end method

.method public findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    return-object p1
.end method

.method public findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    return-object p1
.end method

.method public findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "schema"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/src"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 0

    return-object p0
.end method

.method public globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public globalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;->get()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isIncomplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    return v0
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadFromBuilder([Lorg/apache/xmlbeans/SchemaGlobalElement;[Lorg/apache/xmlbeans/SchemaGlobalAttribute;[Lorg/apache/xmlbeans/SchemaType;[Lorg/apache/xmlbeans/SchemaType;[Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-static {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-static {p4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-static {p5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildTypeRefsByClassname()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    return-void
.end method

.method public loadFromStscState(Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->typesByClassname()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->idConstraints()[Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->annotations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getNamespaces()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainerMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->fixupContainers()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->assertContainersSynchronized()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V

    return-void
.end method

.method public modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object v0
.end method

.method public redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object v0
.end method

.method public resolve()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Resolve called type system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Resolving all handles for type system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Finished resolving type system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v2, v0, v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    return-void
.end method

.method public resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_7

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    const v1, 0xffff

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->getActualFiletype()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Resolving id constraint for handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingIdentityConstraint()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal handle type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Resolving attribute group for handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingAttributeGroup()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Resolving model group for handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingModelGroup()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Resolving attribute for handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingAttribute()Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Resolving element for handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingElement()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Resolving type for handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent;

    move-object v1, p1

    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_3
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public save(Lorg/apache/xmlbeans/Filer;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->startWriteMode()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalElements([Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalAttributes([Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIndex()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointers()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveLoader()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filer must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incomplete SchemaTypeSystems cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalAttributes([Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalElements([Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIndex()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    const-string v1, "index"

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIndexData()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIndexData()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void
.end method

.method public saveLoader()V
    .locals 10

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indexClassForSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->makeClassStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    array-length v2, v1

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    instance-of v3, v2, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/util/FilerImpl;->getRepackager()Lrepackage/Repackager;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    :try_start_0
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_9

    :catch_0
    nop

    move-object v0, v4

    goto/16 :goto_b

    :cond_3
    :goto_2
    const-string v5, "TypeSystemHolder.template"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".class"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/apache/xmlbeans/Filer;->createBinaryFile(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v7, 0x1

    :goto_3
    if-ge v7, v6, :cond_4

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected constant type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object v4, v3

    goto :goto_9

    :catch_1
    nop

    move-object v0, v4

    move-object v4, v3

    goto :goto_b

    :pswitch_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    :goto_4
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_6

    :pswitch_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    goto :goto_4

    :pswitch_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    :goto_5
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_6

    :pswitch_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    goto :goto_5

    :pswitch_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->repackageConstant(Ljava/lang/String;[Ljava/lang/String;Lrepackage/Repackager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    :goto_7
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catch_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    nop

    :goto_8
    if-eqz v4, :cond_9

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_d

    :cond_5
    :try_start_5
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v1, "couldn\'t find resource: TypeSystemHolder.template"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_9
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    :catch_4
    nop

    :cond_6
    :goto_a
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_7
    throw v0

    :goto_b
    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    :catch_6
    nop

    :cond_8
    :goto_c
    if-eqz v0, :cond_9

    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_9
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public saveModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public savePointerFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void
.end method

.method public savePointers()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    const-string v2, "schema"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "/element/"

    .line 15
    .line 16
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 33
    .line 34
    const-string v4, "/attribute/"

    .line 35
    .line 36
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 53
    .line 54
    const-string v4, "/modelgroup/"

    .line 55
    .line 56
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 73
    .line 74
    const-string v4, "/attributegroup/"

    .line 75
    .line 76
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 93
    .line 94
    const-string v4, "/type/"

    .line 95
    .line 96
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuffer;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 113
    .line 114
    const-string v4, "/identityconstraint/"

    .line 115
    .line 116
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    const-string v3, "/namespace/"

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuffer;

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    const-string v3, "/javaname/"

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuffer;

    .line 180
    .line 181
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 185
    .line 186
    const-string v4, "/redefinedmodelgroup/"

    .line 187
    .line 188
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuffer;

    .line 200
    .line 201
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 205
    .line 206
    const-string v4, "/redefinedattributegroup/"

    .line 207
    .line 208
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuffer;

    .line 220
    .line 221
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 225
    .line 226
    const-string v3, "/redefinedtype/"

    .line 227
    .line 228
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x2e

    .line 22
    .line 23
    const/16 v3, 0x2f

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    aget-object v2, p1, v0

    .line 10
    .line 11
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p2}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 22
    .line 23
    const-string v3, "xmlns"

    .line 24
    .line 25
    invoke-direct {v2, v0, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public saveToDirectory(Ljava/io/File;)V
    .locals 7

    new-instance v6, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/util/FilerImpl;-><init>(Ljava/io/File;Ljava/io/File;Lrepackage/Repackager;ZZ)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->save(Lorg/apache/xmlbeans/Filer;)V

    return-void
.end method

.method public saveType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void
.end method

.method public saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveType(Lorg/apache/xmlbeans/SchemaType;)V

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-void
.end method

.method public setIncomplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    return-void
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public typeSystemForName(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
