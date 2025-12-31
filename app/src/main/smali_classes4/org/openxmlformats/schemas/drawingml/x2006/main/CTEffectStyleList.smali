.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cteffectstylelistc50ftype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewEffectStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;
.end method

.method public abstract getEffectStyleArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;
.end method

.method public abstract getEffectStyleArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;
.end method

.method public abstract getEffectStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewEffectStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;
.end method

.method public abstract removeEffectStyle(I)V
.end method

.method public abstract setEffectStyleArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;)V
.end method

.method public abstract setEffectStyleArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;)V
.end method

.method public abstract sizeOfEffectStyleArray()I
.end method
