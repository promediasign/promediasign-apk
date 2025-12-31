.class public final Lorg/apache/poi/ss/util/PropertyTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _propertyTemplate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/PropertyTemplate;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/util/PropertyTemplate;-><init>()V

    invoke-direct {p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->getTemplate()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    new-instance v2, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/util/CellAddress;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->cloneCellProperties(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addProperty(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iget-object p1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addProperty(IILjava/lang/String;S)V
    .locals 0

    .line 2
    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static cloneCellProperties(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    :goto_0
    if-gt v1, p1, :cond_1

    const-string v2, "borderBottom"

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v2, :cond_0

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    const-string v3, "borderTop"

    invoke-direct {p0, v2, v1, v3, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    :goto_0
    if-gt v1, p1, :cond_1

    const-string v2, "borderBottom"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v2, v0, v0, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_0
    const-string v2, "bottomBorderColor"

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 6

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    move v3, v0

    :goto_1
    if-gt v3, v1, :cond_6

    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v3, v3, v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v5, :cond_2

    if-le v3, v0, :cond_3

    :cond_2
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    :cond_3
    if-eq p3, v5, :cond_4

    if-ge v3, v1, :cond_5

    :cond_4
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 6

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    move v3, v0

    :goto_1
    if-gt v3, v1, :cond_6

    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v3, v3, v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v5, :cond_2

    if-le v3, v0, :cond_3

    :cond_2
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_3
    if-eq p3, v5, :cond_4

    if-ge v3, v1, :cond_5

    :cond_4
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p1

    :goto_0
    if-gt v0, v1, :cond_1

    const-string v2, "borderLeft"

    invoke-direct {p0, v0, p1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    const-string v3, "borderRight"

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p1

    :goto_0
    if-gt v0, v1, :cond_1

    const-string v2, "borderLeft"

    invoke-virtual {p0, v0, p1, v2}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v2, v0, v0, p1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_0
    const-string v2, "leftBorderColor"

    invoke-direct {p0, v0, p1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawOutsideBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported PropertyTemplate.Extent, valid Extents are ALL, HORIZONTAL, and VERTICAL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v0, :cond_2

    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    :cond_3
    if-eq p3, v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v0, :cond_5

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    :cond_5
    return-void
.end method

.method private drawOutsideBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported PropertyTemplate.Extent, valid Extents are ALL, HORIZONTAL, and VERTICAL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v0, :cond_2

    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_3
    if-eq p3, v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v0, :cond_5

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_5
    return-void
.end method

.method private drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    :goto_0
    if-gt v0, v1, :cond_1

    const-string v2, "borderRight"

    invoke-direct {p0, v0, p1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v2, :cond_0

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    const-string v3, "borderLeft"

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    :goto_0
    if-gt v0, v1, :cond_1

    const-string v2, "borderRight"

    invoke-virtual {p0, v0, p1, v2}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v2, v0, v0, p1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_0
    const-string v2, "rightBorderColor"

    invoke-direct {p0, v0, p1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    :goto_0
    if-gt v1, p1, :cond_1

    const-string v2, "borderTop"

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    const-string v3, "borderBottom"

    invoke-direct {p0, v2, v1, v3, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    :goto_0
    if-gt v1, p1, :cond_1

    const-string v2, "borderTop"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v2, v0, v0, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_0
    const-string v2, "topBorderColor"

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 6

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    move v3, v2

    :goto_1
    if-gt v3, p1, :cond_6

    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v0, v1, v3, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v5, :cond_2

    if-le v3, v2, :cond_3

    :cond_2
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    :cond_3
    if-eq p3, v5, :cond_4

    if-ge v3, p1, :cond_5

    :cond_4
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 6

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    move v3, v2

    :goto_1
    if-gt v3, p1, :cond_6

    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v0, v1, v3, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v5, :cond_2

    if-le v3, v2, :cond_3

    :cond_2
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_3
    if-eq p3, v5, :cond_4

    if-ge v3, p1, :cond_5

    :cond_4
    invoke-direct {p0, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private static getShort(Ljava/lang/Object;)S
    .locals 1

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTemplate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    return-object v0
.end method

.method private removeBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "topBorderColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "bottomBorderColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "leftBorderColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "rightBorderColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeProperties(IILjava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeBorders(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "borderTop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "borderBottom"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "borderLeft"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "borderRight"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeProperties(IILjava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method private removeProperties(IILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iget-object p1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyBorders(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v4

    invoke-static {v4, p1}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v3

    invoke-static {v4, v3}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_4

    :pswitch_1
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_4

    :pswitch_2
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_1

    :pswitch_3
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_0

    :pswitch_4
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_4

    :pswitch_5
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    goto :goto_4

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    goto :goto_4

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    goto :goto_4

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    goto :goto_4

    :pswitch_a
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_0

    :pswitch_b
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_1

    :pswitch_c
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_3

    :pswitch_d
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_4

    :pswitch_1
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_4

    :pswitch_2
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_1

    :pswitch_3
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_0

    :pswitch_4
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_4

    :pswitch_5
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    goto :goto_4

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    goto :goto_4

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    goto :goto_4

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    goto :goto_4

    :pswitch_a
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_0

    :pswitch_b
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_1

    :pswitch_c
    sget-object p3, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    goto :goto_3

    :pswitch_d
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeBorders(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    :cond_0
    return-void
.end method

.method public getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    return-object p1
.end method

.method public getBorderStyle(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    :cond_0
    return-object v0
.end method

.method public getNumBorderColors(II)I
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->getNumBorderColors(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result p1

    return p1
.end method

.method public getNumBorderColors(Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "topBorderColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const-string v2, "bottomBorderColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const-string v2, "leftBorderColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const-string v2, "rightBorderColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getNumBorders(II)I
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->getNumBorders(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result p1

    return p1
.end method

.method public getNumBorders(Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "borderTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const-string v2, "borderBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const-string v2, "borderLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const-string v2, "borderRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getTemplateProperty(IILjava/lang/String;)S
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->getTemplateProperty(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)S

    move-result p1

    return p1
.end method

.method public getTemplateProperty(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)S
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->getShort(Ljava/lang/Object;)S

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
