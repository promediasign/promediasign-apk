.class public abstract Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartSeries;


# instance fields
.field private titleRef:Lorg/apache/poi/ss/util/CellReference;

.field private titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

.field private titleValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCTSerTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$TitleType:[I

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->setV(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unkown title type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleRef:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitleCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleRef:Lorg/apache/poi/ss/util/CellReference;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Title type is not CellReference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleValue:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Title type is not String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitleType()Lorg/apache/poi/ss/usermodel/charts/TitleType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    return-object v0
.end method

.method public isTitleSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleValue:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleType:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->titleRef:Lorg/apache/poi/ss/util/CellReference;

    return-void
.end method
