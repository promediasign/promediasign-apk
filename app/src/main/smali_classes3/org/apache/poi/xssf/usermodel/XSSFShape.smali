.class public abstract Lorg/apache/poi/xssf/usermodel/XSSFShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Shape;


# static fields
.field public static final EMU_PER_PIXEL:I = 0x2535
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final EMU_PER_POINT:I = 0x319c
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final PIXEL_DPI:I = 0x60
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final POINT_DPI:I = 0x48
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field


# instance fields
.field protected anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

.field protected drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

.field protected parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v0
.end method

.method public getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    return-object v0
.end method

.method public abstract getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public isNoFill()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public setFillColor(III)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    int-to-byte p1, p1

    int-to-byte p2, p2

    int-to-byte p3, p3

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const/4 p1, 0x1

    aput-byte p2, v2, p1

    const/4 p1, 0x2

    aput-byte p3, v2, p1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    return-void
.end method

.method public setLineStyle(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setPrstDash(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V

    return-void
.end method

.method public setLineStyleColor(III)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_1
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    int-to-byte p1, p1

    int-to-byte p2, p2

    int-to-byte p3, p3

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const/4 p1, 0x1

    aput-byte p2, v2, p1

    const/4 p1, 0x2

    aput-byte p3, v2, p1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    return-void
.end method

.method public setLineWidth(D)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    :goto_0
    const-wide v1, 0x40c8ce0000000000L    # 12700.0

    mul-double p1, p1, v1

    double-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    return-void
.end method

.method public setNoFill(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetPattFill()V

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetSolidFill()V

    :cond_1
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-void
.end method
