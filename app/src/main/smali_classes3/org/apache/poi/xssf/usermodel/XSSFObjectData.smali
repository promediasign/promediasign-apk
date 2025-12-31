.class public Lorg/apache/poi/xssf/usermodel/XSSFObjectData;
.super Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ObjectData;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# instance fields
.field private oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    return-void
.end method

.method public static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 7

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    const-string v3, "Shape 1"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v2

    const-string v3, "{63B3BB69-23CF-44E3-9099-C40C66FF867C}"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->setUri(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v3, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v4, "compatExt"

    const-string v5, "http://schemas.microsoft.com/office/drawing/2010/main"

    const-string v6, "a14"

    invoke-direct {v3, v5, v4, v6}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {v2, v6, v5}, Lorg/apache/xmlbeans/XmlCursor;->insertNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "spid"

    const-string v4, "_x0000_s1"

    invoke-interface {v2, v3, v4}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v0
.end method


# virtual methods
.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOLE2ClassName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->getProgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectData()[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Invalid ole object found in sheet container"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getCTShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->readOleObject(J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Ole object not found in sheet container - it\'s probably a control element"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->oleObject:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    return-object v0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    const-string v1, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v2, "objectPr"

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v3, "id"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    const/4 v0, 0x0

    return-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v1
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public hasDirectoryEntry()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "can\'t determine if directory entry exists"

    aput-object v6, v5, v1

    aput-object v3, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v4, v0, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :goto_1
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
