.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttextbodya3catype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.end method

.method public abstract addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.end method

.method public abstract getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract getPArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract getPList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewP(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract isSetLstStyle()Z
.end method

.method public abstract removeP(I)V
.end method

.method public abstract setBodyPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V
.end method

.method public abstract setLstStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract setPArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V
.end method

.method public abstract setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V
.end method

.method public abstract sizeOfPArray()I
.end method

.method public abstract unsetLstStyle()V
.end method
