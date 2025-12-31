.class public Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Hyperlink;


# instance fields
.field private final _ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

.field private final _externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

.field private _location:Ljava/lang/String;

.field private final _type:Lorg/apache/poi/common/usermodel/HyperlinkType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iget-object v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstRow()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstColumn()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-nez p2, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto/16 :goto_2

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The hyperlink for cell "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " references relation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but that didn\'t exist!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "ftp://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "mailto:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto/16 :goto_0

    :cond_5
    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto/16 :goto_0

    :cond_6
    :goto_1
    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto/16 :goto_0

    :goto_2
    return-void
.end method

.method private buildCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "A1"

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private validate(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Hyperlink type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Address of hyperlink must be a valid URI"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public generateRelationIfNeeded(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->needsRelationToo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getCTHyperlink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    return-object v0
.end method

.method public getCellRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTooltip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v0

    return v0
.end method

.method public getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method

.method public needsRelationToo()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->validate(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCellReference(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setRef(Ljava/lang/String;)V

    return-void
.end method

.method public setCellReference(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    return-void
.end method

.method public setFirstColumn(I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    return-void
.end method

.method public setFirstRow(I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public setLastColumn(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    return-void
.end method

.method public setLastRow(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setLocation(Ljava/lang/String;)V

    return-void
.end method

.method public setTooltip(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    return-void
.end method
