.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctabsoluteanchore360type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;
.end method

.method public abstract addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.end method

.method public abstract getClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;
.end method

.method public abstract getCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract getGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract getPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract getSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.end method

.method public abstract isSetCxnSp()Z
.end method

.method public abstract isSetGraphicFrame()Z
.end method

.method public abstract isSetGrpSp()Z
.end method

.method public abstract isSetPic()Z
.end method

.method public abstract isSetSp()Z
.end method

.method public abstract setClientData(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;)V
.end method

.method public abstract setCxnSp(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V
.end method

.method public abstract setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setGraphicFrame(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V
.end method

.method public abstract setGrpSp(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V
.end method

.method public abstract setPic(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
.end method

.method public abstract setSp(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
.end method

.method public abstract unsetCxnSp()V
.end method

.method public abstract unsetGraphicFrame()V
.end method

.method public abstract unsetGrpSp()V
.end method

.method public abstract unsetPic()V
.end method

.method public abstract unsetSp()V
.end method
