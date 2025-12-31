.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnumdata4f16type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
.end method

.method public abstract addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getFormatCode()Ljava/lang/String;
.end method

.method public abstract getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
.end method

.method public abstract getPtArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
.end method

.method public abstract getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getPtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFormatCode()Z
.end method

.method public abstract isSetPtCount()Z
.end method

.method public abstract removePt(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setFormatCode(Ljava/lang/String;)V
.end method

.method public abstract setPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;)V
.end method

.method public abstract setPtArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;)V
.end method

.method public abstract setPtCount(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
.end method

.method public abstract sizeOfPtArray()I
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFormatCode()V
.end method

.method public abstract unsetPtCount()V
.end method

.method public abstract xgetFormatCode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;
.end method

.method public abstract xsetFormatCode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;)V
.end method
