.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctmarkuprangeba3dtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getDisplacedByCustomXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml$Enum;
.end method

.method public abstract isSetDisplacedByCustomXml()Z
.end method

.method public abstract setDisplacedByCustomXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml$Enum;)V
.end method

.method public abstract unsetDisplacedByCustomXml()V
.end method

.method public abstract xgetDisplacedByCustomXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml;
.end method

.method public abstract xsetDisplacedByCustomXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml;)V
.end method
