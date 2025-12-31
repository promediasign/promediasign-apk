.class public final Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORE_PROPERTIES_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field public static final CORE_PROPERTIES_URI:Ljava/net/URI;

.field public static final FORWARD_SLASH_CHAR:C

.field public static final FORWARD_SLASH_STRING:Ljava/lang/String;

.field public static final PACKAGE_CORE_PROPERTIES_NAME:Ljava/lang/String;

.field public static final PACKAGE_PROPERTIES_SEGMENT_NAME:Ljava/lang/String;

.field public static final PACKAGE_RELATIONSHIPS_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field public static final PACKAGE_RELATIONSHIPS_ROOT_URI:Ljava/net/URI;

.field public static final PACKAGE_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field public static final PACKAGE_ROOT_URI:Ljava/net/URI;

.field public static final RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

.field public static final RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

.field private static final _logger:Lorg/apache/poi/util/POILogger;

.field private static final hexDigits:[C

.field private static final missingAuthPattern:Ljava/util/regex/Pattern;

.field private static packageRootUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->_logger:Lorg/apache/poi/util/POILogger;

    const-string v0, "_rels"

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    const-string v1, ".rels"

    sput-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    const/16 v2, 0x2f

    sput-char v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    const-string v3, "/"

    sput-object v3, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_STRING:Ljava/lang/String;

    const-string v4, "docProps"

    sput-object v4, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_PROPERTIES_SEGMENT_NAME:Ljava/lang/String;

    const-string v5, "core.xml"

    sput-object v5, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_CORE_PROPERTIES_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v8, Ljava/net/URI;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->packageRootUri:Ljava/net/URI;

    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v8, v6

    goto :goto_0

    :catch_1
    move-object v7, v6

    move-object v8, v7

    :catch_2
    :goto_0
    move-object v0, v6

    :goto_1
    sput-object v7, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    sput-object v8, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_URI:Ljava/net/URI;

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->CORE_PROPERTIES_URI:Ljava/net/URI;

    :try_start_3
    invoke-static {v8}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_3
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0
    :try_end_4
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    new-instance v2, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    const/4 v3, 0x0

    invoke-direct {v2, v7, v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;-><init>(Ljava/net/URI;Z)V
    :try_end_5
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v6, v2

    goto :goto_2

    :catch_3
    move-object v0, v6

    goto :goto_2

    :catch_4
    move-object v0, v6

    move-object v1, v0

    :catch_5
    :goto_2
    sput-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->CORE_PROPERTIES_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    sput-object v6, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    const-string v0, "\\w+://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->missingAuthPattern:Ljava/util/regex/Pattern;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->hexDigits:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1
    :cond_2
    invoke-static {p0, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static combine(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    .line 7
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Prefix and suffix can\'t be combine !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createPartName(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 2

    .line 3
    if-eqz p0, :cond_0

    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;-><init>(Ljava/net/URI;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPartName(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    return-object p0
.end method

.method public static decodeURI(Ljava/net/URI;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x25

    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    sub-int v3, v1, v2

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-lt v3, v4, :cond_0

    .line 29
    .line 30
    add-int/lit8 v3, v2, 0x1

    .line 31
    .line 32
    add-int/lit8 v4, v2, 0x3

    .line 33
    .line 34
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/16 v4, 0x10

    .line 39
    .line 40
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    int-to-char v3, v3

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "The uri "

    .line 54
    .line 55
    const-string v2, " contain invalid encoded character !"

    .line 56
    .line 57
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v2, v1, 0xff

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->isUnsafe(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->hexDigits:[C

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    int-to-char v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilename(Ljava/net/URI;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getFilenameWithoutExtension(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getFilename(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageRootUri()Ljava/net/URI;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->packageRootUri:Ljava/net/URI;

    return-object v0
.end method

.method public static getPath(Ljava/net/URI;)Ljava/net/URI;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-ne v2, v3, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/URI;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object p0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getFilename(Ljava/net/URI;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sub-int/2addr v1, v2

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object p0

    .line 90
    :catch_0
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    .line 93
    .line 94
    const-string v0, "Can\'t be a relationship part"

    .line 95
    .line 96
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string v0, "partName"

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public static getSourcePartUriFromRelationshipPartUri(Ljava/net/URI;)Ljava/net/URI;
    .locals 4

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_URI:Ljava/net/URI;

    invoke-virtual {p0, v0}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getFilenameWithoutExtension(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getURIFromPath(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a relationship part"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getURIFromPath(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "path"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isRelationshipPartURI(Ljava/net/URI;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isUnsafe(I)Z
    .locals 1

    const/16 v0, 0x80

    if-gt p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

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

.method public static isValidPartName(Ljava/net/URI;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static relativizeURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->relativizeURI(Ljava/net/URI;Ljava/net/URI;Z)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static relativizeURI(Ljava/net/URI;Ljava/net/URI;Z)Ljava/net/URI;
    .locals 12

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v3

    if-eqz v6, :cond_11

    array-length v6, v5

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v7, :cond_0

    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->_logger:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-virtual {p1, v9, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v8

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_1
    array-length v10, v3

    if-ge p2, v10, :cond_2

    array-length v10, v5

    if-ge p2, v10, :cond_2

    aget-object v10, v3, p2

    aget-object v11, v5, p2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/2addr v6, v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_2
    const-string p2, "../"

    const-string v10, ""

    if-eqz v6, :cond_3

    if-ne v6, v1, :cond_8

    :cond_3
    aget-object v11, v3, v0

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    aget-object v11, v5, v0

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 p0, 0x0

    :goto_2
    array-length p1, v3

    add-int/lit8 p1, p1, -0x2

    if-ge p0, p1, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_3
    array-length p1, v5

    if-ge p0, p1, :cond_7

    aget-object p1, v5, p0

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    aget-object p1, v5, p0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    sub-int/2addr p1, v1

    if-eq p0, p1, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_4
    add-int/2addr p0, v1

    goto :goto_3

    :cond_7
    :try_start_1
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->_logger:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-virtual {p1, v9, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v8

    :cond_8
    array-length v11, v3

    if-ne v6, v11, :cond_a

    array-length v11, v5

    if-ne v6, v11, :cond_a

    invoke-virtual {p0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    array-length p0, v3

    sub-int/2addr p0, v1

    aget-object p0, v3, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_a
    if-ne v6, v1, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    move p0, v6

    :goto_5
    array-length v10, v3

    sub-int/2addr v10, v1

    if-ge p0, v10, :cond_c

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v1

    goto :goto_5

    :cond_c
    :goto_6
    array-length p0, v5

    if-ge v6, p0, :cond_e

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eq p0, v7, :cond_d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    aget-object p0, v5, v6

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v1

    goto :goto_6

    :cond_e
    :goto_7
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p1, "#"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :try_start_2
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->_logger:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-virtual {p1, v9, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v8

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t relativize an empty target URI !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t relativize an empty source URI !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "targetUri invalid - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sourcePartUri invalid - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 5

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x5c

    .line 11
    .line 12
    const/16 v2, 0x2f

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    const/16 v0, 0x23

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "#"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-lez v0, :cond_4

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/lit8 v1, v1, -0x1

    .line 70
    .line 71
    :goto_0
    if-ltz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    const/16 v4, 0xa0

    .line 84
    .line 85
    if-ne v3, v4, :cond_3

    .line 86
    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-lez v3, :cond_4

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :cond_4
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->missingAuthPattern:Ljava/util/regex/Pattern;

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    const-string v0, "/"

    .line 145
    .line 146
    invoke-static {p0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    :cond_5
    new-instance v0, Ljava/net/URI;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method
