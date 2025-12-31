.class Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;
.super Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Series"
.end annotation


# instance fields
.field private categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation
.end field

.field private id:I

.field private order:I

.field private values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILorg/apache/poi/ss/usermodel/charts/ChartDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;-><init>()V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->id:I

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->order:I

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    iput-object p4, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-void
.end method


# virtual methods
.method public addToChart(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;)V
    .locals 3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->id:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->order:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->addNewSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildAxDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->addNewVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartUtil;->buildNumDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->isTitleSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/charts/AbstractXSSFChartSeries;->getCTSerTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;->setTx(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;)V

    :cond_0
    return-void
.end method

.method public getCategoryAxisData()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->categories:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-object v0
.end method

.method public getValues()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/charts/XSSFLineChartData$Series;->values:Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;

    return-object v0
.end method
