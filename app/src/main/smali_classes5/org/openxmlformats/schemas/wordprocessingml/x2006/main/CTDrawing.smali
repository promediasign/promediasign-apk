.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctdrawing8d34type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
.end method

.method public abstract addNewInline()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
.end method

.method public abstract getAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
.end method

.method public abstract getAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
.end method

.method public abstract getAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInlineArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
.end method

.method public abstract getInlineArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
.end method

.method public abstract getInlineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
.end method

.method public abstract insertNewInline(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
.end method

.method public abstract removeAnchor(I)V
.end method

.method public abstract removeInline(I)V
.end method

.method public abstract setAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;)V
.end method

.method public abstract setAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;)V
.end method

.method public abstract setInlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;)V
.end method

.method public abstract setInlineArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;)V
.end method

.method public abstract sizeOfAnchorArray()I
.end method

.method public abstract sizeOfInlineArray()I
.end method
