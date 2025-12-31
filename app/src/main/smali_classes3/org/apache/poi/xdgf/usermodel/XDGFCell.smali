.class public Lorg/apache/poi/xdgf/usermodel/XDGFCell;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    new-instance p1, Lorg/apache/poi/POIXMLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid boolean value for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseIntegerValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    throw p1
.end method

.method public static parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float value for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseIntegerValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid integer value for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseVLength(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float value for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
