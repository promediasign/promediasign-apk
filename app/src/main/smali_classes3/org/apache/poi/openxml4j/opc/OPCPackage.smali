.class public abstract Lorg/apache/poi/openxml4j/opc/OPCPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/RelationshipSource;
.implements Ljava/io/Closeable;


# static fields
.field protected static final defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

.field protected defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

.field protected isDirty:Z

.field protected originalPackagePath:Ljava/lang/String;

.field protected output:Ljava/io/OutputStream;

.field private packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

.field protected packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

.field protected partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

.field protected partMarshallers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/internal/ContentType;",
            "Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;",
            ">;"
        }
    .end annotation
.end field

.field protected partUnmarshallers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/internal/ContentType;",
            "Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;",
            ">;"
        }
    .end annotation
.end field

.field protected relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sput-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->init()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PackageBase may not be subclassed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static configurePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_URI:Ljava/net/URI;

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    const-string v2, "application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    const-string v1, "/default.xml"

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->CORE_PROPERTIES_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    const-string v1, "Generated by Apache POI OpenXML4J"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatorProperty(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->configurePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "This package (or file) already exists : use the open() method or delete the file."

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->configurePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method private getRelationshipsHelper(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationships(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 4

    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    :try_start_0
    new-instance v2, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v2, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;

    invoke-direct {v3}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/DefaultMarshaller;

    invoke-direct {v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/DefaultMarshaller;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v2, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v2, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPackagePropertiesMarshaller;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPackagePropertiesMarshaller;-><init>()V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package.init() : this exception should never happen, if you read this message please send a mail to the developers team. : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static open(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "file must not be a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    iget-object v1, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_3
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'file\' must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    iget-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_2
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 4
    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 5
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path must not be a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    iget-object v1, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p1, v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_2
    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'path\' must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static open(Lorg/apache/poi/openxml4j/util/ZipEntrySource;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 6
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    iget-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_2
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static openOrCreate(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    return-object p1
.end method

.method public addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2

    .line 2
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid target - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "relationshipType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMarshaller(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The specified content type is not valid: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. The marshaller will not be added !"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x5

    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setDeleted(Z)V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->remove(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part with the name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "part"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    return-object p1
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    .line 2
    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p2, "OPC Compliance error [M4.1]: can\'t add another core properties part ! Use the built-in package method instead."

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p1

    :cond_2
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p2, "Rule M1.25: The Relationships part shall not have relationships to any other part."

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addThumbnail(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "\'"

    const-string v1, "/docProps/"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ContentTypes;->getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/docProps/thumbnail"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v2, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/thumbnail"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    return-void

    :cond_0
    new-instance p2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "You already add a thumbnail named \'"

    .line 2
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p2

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v2, "Can\'t add a thumbnail file named \'"

    .line 4
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v1, p1, p2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "filename"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addUnmarshaller(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The specified content type is not valid: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. The unmarshaller will not be added !"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x5

    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clearRelationships()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sget-object v3, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    const/4 v4, 0x5

    if-ne v2, v3, :cond_0

    sget-object v2, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The close() method is intended to SAVE a package. This package is open in READ ONLY mode, use the revert() method instead !"

    aput-object v3, v1, v0

    invoke-virtual {v2, v4, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Unable to call close() on a package that hasn\'t been fully opened yet"

    aput-object v3, v1, v0

    invoke-virtual {v2, v4, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->closeImpl()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/File;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->clearAll()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public abstract closeImpl()V
.end method

.method public containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    return-object p1
.end method

.method public createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object p2
.end method

.method public createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "A part with the name \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p2, "OPC Compliance error [M4.1]: you try to add more than one core properties relationship in the package !"

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "partName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
.end method

.method public deletePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deletePartRecursive(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->deletePartRecursive(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :cond_1
    return-void

    :goto_1
    sget-object v1, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An exception occurs while deleting part \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Some parts may remain in the package. - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x5

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureRelationships()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->flush()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->flushImpl()V

    return-void
.end method

.method public abstract flushImpl()V
.end method

.method public getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    return-object v0
.end method

.method public getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->CORE_PROPERTIES_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    return-object v0
.end method

.method public getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public abstract getPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
.end method

.method public getParts()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsImpl()[Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-direct {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v7, v2, v4

    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v9, v7, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v8, v9}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x5

    if-eqz v8, :cond_1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    sget-object v8, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "OPC Compliance error [M4.1]: there is more than one core properties relationship in the package! POI will use only the first, but other software may reject this file."

    aput-object v11, v10, v0

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    iget-object v10, v7, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;

    if-eqz v8, :cond_2

    new-instance v10, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;

    iget-object v11, v7, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-direct {v10, p0, v11}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :try_start_0
    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;->unmarshall(Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    iget-object v10, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v11, v8, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v10, v11, v8}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    instance-of v10, v8, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz v10, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    check-cast v8, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    iput-object v8, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    sget-object v8, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unmarshall operation : IOException for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v7, v10, v0

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v9, v7, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v8, v9, v7}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    add-int/2addr v4, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part with the name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' already exist : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name pattern must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relationshipType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getPartsImpl()[Lorg/apache/poi/openxml4j/opc/PackagePart;
.end method

.method public getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    return-object p1
.end method

.method public getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsHelper(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    return-object v0
.end method

.method public getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsHelper(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relationshipType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasRelationships()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRelationshipExists(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public registerPartAndContentType(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-void
.end method

.method public removeMarshaller(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :cond_0
    return-void
.end method

.method public removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 4

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setDeleted(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->remove(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->removeContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getSourcePartUriFromRelationshipPartUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->clearRelationships()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clearRelationships()V

    goto :goto_1

    :catch_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/OPCPackage;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Part name URI \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not valid ! This message is not intended to be displayed !"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x7

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
.end method

.method public removePartRecursive(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :cond_1
    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    return-void
.end method

.method public removeRelationship(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->removeRelationship(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    :cond_0
    return-void
.end method

.method public removeUnmarshaller(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public replaceContentType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    .line 37
    .line 38
    invoke-virtual {v3, v1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v2, p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    .line 50
    .line 51
    const-string v1, "invalid content type - "

    .line 52
    .line 53
    invoke-static {v1, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {v0, p2, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    return v1
.end method

.method public revert()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revertImpl()V

    return-void
.end method

.method public abstract revertImpl()V
.end method

.method public save(Ljava/io/File;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "You can\'t call save(File) to save to the currently open file. To save to the current file, please just call close()"

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "targetFile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->saveImpl(Ljava/io/OutputStream;)V

    return-void
.end method

.method public abstract saveImpl(Ljava/io/OutputStream;)V
.end method

.method public throwExceptionIfReadOnly()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Operation not allowed, document open in read only mode!"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwExceptionIfWriteOnly()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Operation not allowed, document open in write only mode!"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPartAndContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->removeContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-void
.end method

.method public validatePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Not implemented yet !!!"

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
