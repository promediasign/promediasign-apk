.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctlinechart249ctype"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
.end method

.method public abstract addNewDropLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;
.end method

.method public abstract addNewHiLowLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract addNewMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
.end method

.method public abstract addNewSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewUpDownBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;
.end method

.method public abstract addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getAxIdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getAxIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
.end method

.method public abstract getDropLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;
.end method

.method public abstract getHiLowLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
.end method

.method public abstract getSerArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
.end method

.method public abstract getSerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getUpDownBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;
.end method

.method public abstract getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract insertNewAxId(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
.end method

.method public abstract isSetDLbls()Z
.end method

.method public abstract isSetDropLines()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHiLowLines()Z
.end method

.method public abstract isSetMarker()Z
.end method

.method public abstract isSetSmooth()Z
.end method

.method public abstract isSetUpDownBars()Z
.end method

.method public abstract isSetVaryColors()Z
.end method

.method public abstract removeAxId(I)V
.end method

.method public abstract removeSer(I)V
.end method

.method public abstract setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
.end method

.method public abstract setAxIdArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
.end method

.method public abstract setDLbls(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
.end method

.method public abstract setDropLines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setGrouping(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;)V
.end method

.method public abstract setHiLowLines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setMarker(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;)V
.end method

.method public abstract setSerArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;)V
.end method

.method public abstract setSmooth(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setUpDownBars(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;)V
.end method

.method public abstract setVaryColors(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract sizeOfAxIdArray()I
.end method

.method public abstract sizeOfSerArray()I
.end method

.method public abstract unsetDLbls()V
.end method

.method public abstract unsetDropLines()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHiLowLines()V
.end method

.method public abstract unsetMarker()V
.end method

.method public abstract unsetSmooth()V
.end method

.method public abstract unsetUpDownBars()V
.end method

.method public abstract unsetVaryColors()V
.end method
