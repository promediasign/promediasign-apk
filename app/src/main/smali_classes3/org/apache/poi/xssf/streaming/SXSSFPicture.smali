.class public final Lorg/apache/poi/xssf/streaming/SXSSFPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field private static DEFAULT_COLUMN_WIDTH:F

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

.field private final _wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    const v0, 0x41124000    # 9.140625f

    sput v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->DEFAULT_COLUMN_WIDTH:F

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFPicture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    return-void
.end method

.method private getColumnWidthInPixels(I)F
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnHelper()Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    sget p1, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->DEFAULT_COLUMN_WIDTH:F

    float-to-double v0, p1

    :goto_1
    double-to-float p1, v0

    const v0, 0x40e00ded    # 7.0017f

    mul-float p1, p1, v0

    return p1
.end method

.method public static getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance p0, Ljava/awt/Dimension;

    invoke-direct {p0}, Ljava/awt/Dimension;-><init>()V

    return-object p0
.end method

.method private getRowHeightInPixels(I)F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p1

    :goto_0
    const/high16 v0, 0x42c00000    # 96.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 12

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPictureType()I

    move-result v1

    invoke-static {v2, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    mul-double v2, v2, p1

    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v4

    mul-double v4, v4, p1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    float-to-double v6, p2

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getColumnWidthInPixels(I)F

    move-result v1

    add-float/2addr p2, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getColumnWidthInPixels(I)F

    move-result p2

    float-to-double v8, p2

    sub-double/2addr v6, v2

    sub-double/2addr v8, v6

    const-wide v6, 0x40c29a8000000000L    # 9525.0

    mul-double v8, v8, v6

    double-to-int p2, v8

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v8, 0x0

    :goto_1
    cmpg-double p2, v8, v4

    if-gtz p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getRowHeightInPixels(I)F

    move-result p2

    float-to-double v10, p2

    add-double/2addr v8, v10

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getRowHeightInPixels(I)F

    move-result p2

    float-to-double v10, p2

    sub-double/2addr v8, v4

    sub-double/2addr v10, v8

    mul-double v10, v10, v6

    double-to-int p2, v10

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p1

    mul-double v2, v2, v6

    double-to-long v1, v2

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    mul-double v4, v4, v6

    double-to-long v1, v4

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-object v0
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p1

    return-object p1
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getShapeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public isNoFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->isNoFill()Z

    move-result v0

    return v0
.end method

.method public resize()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->resize(D)V

    return-void
.end method

.method public resize(D)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx1(I)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy1(I)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    return-void
.end method

.method public resize(DD)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(DD)V

    return-void
.end method

.method public setFillColor(III)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->setFillColor(III)V

    return-void
.end method

.method public setLineStyleColor(III)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->setLineStyleColor(III)V

    return-void
.end method

.method public setNoFill(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->setNoFill(Z)V

    return-void
.end method
