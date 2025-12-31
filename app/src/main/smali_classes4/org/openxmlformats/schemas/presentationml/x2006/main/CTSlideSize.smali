.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctslidesizeb0fdtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getCx()I
.end method

.method public abstract getCy()I
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setCx(I)V
.end method

.method public abstract setCy(I)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;)V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetCx()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;
.end method

.method public abstract xgetCy()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;
.end method

.method public abstract xsetCx(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;)V
.end method

.method public abstract xsetCy(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;)V
.end method
