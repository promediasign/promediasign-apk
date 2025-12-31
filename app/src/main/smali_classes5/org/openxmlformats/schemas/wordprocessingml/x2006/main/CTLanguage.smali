.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctlanguage7b90type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getBidi()Ljava/lang/Object;
.end method

.method public abstract getEastAsia()Ljava/lang/Object;
.end method

.method public abstract getVal()Ljava/lang/Object;
.end method

.method public abstract isSetBidi()Z
.end method

.method public abstract isSetEastAsia()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setBidi(Ljava/lang/Object;)V
.end method

.method public abstract setEastAsia(Ljava/lang/Object;)V
.end method

.method public abstract setVal(Ljava/lang/Object;)V
.end method

.method public abstract unsetBidi()V
.end method

.method public abstract unsetEastAsia()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLang;
.end method

.method public abstract xgetEastAsia()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLang;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLang;
.end method

.method public abstract xsetBidi(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLang;)V
.end method

.method public abstract xsetEastAsia(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLang;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLang;)V
.end method
