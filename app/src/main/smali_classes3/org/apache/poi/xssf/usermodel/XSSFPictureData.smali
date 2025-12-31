.class public Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PictureData;


# static fields
.field protected static final RELATIONS:[Lorg/apache/poi/POIXMLRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/apache/poi/POIXMLRelation;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureType()I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public prepareForCommit()V
    .locals 0

    return-void
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
