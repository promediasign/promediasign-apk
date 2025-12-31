.class public Lorg/apache/poi/hssf/usermodel/HSSFPicture;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field public static final PICTURE_TYPE_DIB:I = 0x7

.field public static final PICTURE_TYPE_EMF:I = 0x2

.field public static final PICTURE_TYPE_JPEG:I = 0x5

.field public static final PICTURE_TYPE_PICT:I = 0x4

.field public static final PICTURE_TYPE_PNG:I = 0x6

.field public static final PICTURE_TYPE_WMF:I = 0x3

.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    const/16 p1, 0x4b

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    :cond_0
    return-void
.end method

.method public cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->serialize()[B

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ObjRecord;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    return-object v2
.end method

.method public createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 3

    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v2, 0x1ce

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    const/16 v2, 0x1ff

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    const/16 v1, -0xff3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipTypeWin32()B

    move-result v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v0}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find a patriarch for a HSSPicture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureData()Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureIndex()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    return v0
.end method

.method public getPreferredSize()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(D)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/ImageUtils;->setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p1

    return-object p1
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public resize()V
    .locals 2

    .line 1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->resize(D)V

    return-void
.end method

.method public resize(D)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->resize(DD)V

    return-void
.end method

.method public resize(DD)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_DONT_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p3, p2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result p4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v1

    sub-int/2addr p4, v1

    add-int/2addr p4, p2

    int-to-short p2, p4

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx2(I)V

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy2(I)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    const/16 v1, 0x105

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SZ[B)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setPictureIndex(I)V
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x104

    invoke-direct {v0, v3, v1, v2, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setShapeType(I)V
    .locals 2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shape type can not be changed in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
