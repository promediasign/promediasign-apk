.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctfillstylelist959dtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getBlipFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getBlipFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getBlipFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGradFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGradFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGradFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getGrpFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getGrpFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getNoFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getNoFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPattFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getPattFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getPattFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSolidFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getSolidFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getSolidFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBlipFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract insertNewGradFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract insertNewGrpFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract insertNewNoFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract insertNewPattFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract insertNewSolidFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract removeBlipFill(I)V
.end method

.method public abstract removeGradFill(I)V
.end method

.method public abstract removeGrpFill(I)V
.end method

.method public abstract removeNoFill(I)V
.end method

.method public abstract removePattFill(I)V
.end method

.method public abstract removeSolidFill(I)V
.end method

.method public abstract setBlipFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setBlipFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setGradFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGradFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setGrpFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setNoFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setNoFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setPattFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setSolidFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setSolidFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract sizeOfBlipFillArray()I
.end method

.method public abstract sizeOfGradFillArray()I
.end method

.method public abstract sizeOfGrpFillArray()I
.end method

.method public abstract sizeOfNoFillArray()I
.end method

.method public abstract sizeOfPattFillArray()I
.end method

.method public abstract sizeOfSolidFillArray()I
.end method
