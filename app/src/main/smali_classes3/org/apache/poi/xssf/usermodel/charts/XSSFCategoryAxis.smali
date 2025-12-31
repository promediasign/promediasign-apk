.class public Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;
.super Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;
.source "SourceFile"


# instance fields
.field private ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFChart;)V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    return-void
.end method

.method private createAxis(JLorg/apache/poi/ss/usermodel/charts/AxisPosition;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->chart:Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewCatAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos;->NEXT_TO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->setPosition(Lorg/apache/poi/ss/usermodel/charts/AxisPosition;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->setOrientation(Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->setCrosses(Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->setVisible(Z)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->setMajorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;->setMinorTickMark(Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;)V

    return-void
.end method


# virtual methods
.method public crossAxis(Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/charts/ChartAxis;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object v0

    return-object v0
.end method

.method public getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    return-object v0
.end method

.method public getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->isSetNumFmt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    return-object v0
.end method

.method public getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLine()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method public getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public getMajorGridLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    return-object v0
.end method

.method public getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object v0

    return-object v0
.end method

.method public hasNumberFormat()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFCategoryAxis;->ctCatAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->isSetNumFmt()Z

    move-result v0

    return v0
.end method
