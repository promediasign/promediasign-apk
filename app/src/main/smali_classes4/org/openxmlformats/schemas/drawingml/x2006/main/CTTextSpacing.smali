.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttextspacingef87type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;
.end method

.method public abstract addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;
.end method

.method public abstract getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;
.end method

.method public abstract getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;
.end method

.method public abstract isSetSpcPct()Z
.end method

.method public abstract isSetSpcPts()Z
.end method

.method public abstract setSpcPct(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;)V
.end method

.method public abstract setSpcPts(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;)V
.end method

.method public abstract unsetSpcPct()V
.end method

.method public abstract unsetSpcPts()V
.end method
