.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctzoomc275type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getPercent()Ljava/math/BigInteger;
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STZoom$Enum;
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setPercent(Ljava/math/BigInteger;)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STZoom$Enum;)V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetPercent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STZoom;
.end method

.method public abstract xsetPercent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STZoom;)V
.end method
