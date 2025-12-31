.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcolord2c2type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getAuto()Z
.end method

.method public abstract getIndexed()J
.end method

.method public abstract getRgb()[B
.end method

.method public abstract getTheme()J
.end method

.method public abstract getTint()D
.end method

.method public abstract isSetAuto()Z
.end method

.method public abstract isSetIndexed()Z
.end method

.method public abstract isSetRgb()Z
.end method

.method public abstract isSetTheme()Z
.end method

.method public abstract isSetTint()Z
.end method

.method public abstract setAuto(Z)V
.end method

.method public abstract setIndexed(J)V
.end method

.method public abstract setRgb([B)V
.end method

.method public abstract setTheme(J)V
.end method

.method public abstract setTint(D)V
.end method

.method public abstract unsetAuto()V
.end method

.method public abstract unsetIndexed()V
.end method

.method public abstract unsetRgb()V
.end method

.method public abstract unsetTheme()V
.end method

.method public abstract unsetTint()V
.end method

.method public abstract xgetAuto()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIndexed()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRgb()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;
.end method

.method public abstract xgetTheme()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetTint()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetAuto(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIndexed(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRgb(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;)V
.end method

.method public abstract xsetTheme(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetTint(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
