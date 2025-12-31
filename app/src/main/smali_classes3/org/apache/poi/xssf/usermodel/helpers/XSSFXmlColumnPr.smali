.class public Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

.field private ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

.field private table:Lorg/apache/poi/xssf/usermodel/XSSFTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalXPath()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapId()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getMapId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    move-result-object v0

    return-object v0
.end method
