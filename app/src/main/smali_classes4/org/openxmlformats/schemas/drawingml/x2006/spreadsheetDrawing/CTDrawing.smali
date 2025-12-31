.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctdrawing2748type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewAbsoluteAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract addNewOneCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract addNewTwoCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract getAbsoluteAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract getAbsoluteAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract getAbsoluteAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOneCellAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract getOneCellAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract getOneCellAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTwoCellAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract getTwoCellAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract getTwoCellAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAbsoluteAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract insertNewOneCellAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract insertNewTwoCellAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract removeAbsoluteAnchor(I)V
.end method

.method public abstract removeOneCellAnchor(I)V
.end method

.method public abstract removeTwoCellAnchor(I)V
.end method

.method public abstract setAbsoluteAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;)V
.end method

.method public abstract setAbsoluteAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;)V
.end method

.method public abstract setOneCellAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;)V
.end method

.method public abstract setOneCellAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;)V
.end method

.method public abstract setTwoCellAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;)V
.end method

.method public abstract setTwoCellAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;)V
.end method

.method public abstract sizeOfAbsoluteAnchorArray()I
.end method

.method public abstract sizeOfOneCellAnchorArray()I
.end method

.method public abstract sizeOfTwoCellAnchorArray()I
.end method
