.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctbackground36f7type"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
.end method

.method public abstract addNewBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
.end method

.method public abstract getBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getBwMode()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;
.end method

.method public abstract isSetBgPr()Z
.end method

.method public abstract isSetBgRef()Z
.end method

.method public abstract isSetBwMode()Z
.end method

.method public abstract setBgPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;)V
.end method

.method public abstract setBgRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
.end method

.method public abstract setBwMode(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;)V
.end method

.method public abstract unsetBgPr()V
.end method

.method public abstract unsetBgRef()V
.end method

.method public abstract unsetBwMode()V
.end method

.method public abstract xgetBwMode()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;
.end method

.method public abstract xsetBwMode(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;)V
.end method
