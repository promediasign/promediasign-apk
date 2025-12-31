.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctfontcollectiondd68type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;
.end method

.method public abstract addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFontArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;
.end method

.method public abstract getFontArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;
.end method

.method public abstract getFontList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract insertNewFont(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeFont(I)V
.end method

.method public abstract setCs(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setEa(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFontArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;)V
.end method

.method public abstract setFontArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;)V
.end method

.method public abstract setLatin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract sizeOfFontArray()I
.end method

.method public abstract unsetExtLst()V
.end method
