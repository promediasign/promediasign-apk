.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctshd58c3type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getColor()Ljava/lang/Object;
.end method

.method public abstract getFill()Ljava/lang/Object;
.end method

.method public abstract getThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
.end method

.method public abstract getThemeFill()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
.end method

.method public abstract getThemeFillShade()[B
.end method

.method public abstract getThemeFillTint()[B
.end method

.method public abstract getThemeShade()[B
.end method

.method public abstract getThemeTint()[B
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetThemeColor()Z
.end method

.method public abstract isSetThemeFill()Z
.end method

.method public abstract isSetThemeFillShade()Z
.end method

.method public abstract isSetThemeFillTint()Z
.end method

.method public abstract isSetThemeShade()Z
.end method

.method public abstract isSetThemeTint()Z
.end method

.method public abstract setColor(Ljava/lang/Object;)V
.end method

.method public abstract setFill(Ljava/lang/Object;)V
.end method

.method public abstract setThemeColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;)V
.end method

.method public abstract setThemeFill(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;)V
.end method

.method public abstract setThemeFillShade([B)V
.end method

.method public abstract setThemeFillTint([B)V
.end method

.method public abstract setThemeShade([B)V
.end method

.method public abstract setThemeTint([B)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;)V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetThemeColor()V
.end method

.method public abstract unsetThemeFill()V
.end method

.method public abstract unsetThemeFillShade()V
.end method

.method public abstract unsetThemeFillTint()V
.end method

.method public abstract unsetThemeShade()V
.end method

.method public abstract unsetThemeTint()V
.end method

.method public abstract xgetColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;
.end method

.method public abstract xgetFill()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;
.end method

.method public abstract xgetThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;
.end method

.method public abstract xgetThemeFill()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;
.end method

.method public abstract xgetThemeFillShade()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;
.end method

.method public abstract xgetThemeFillTint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;
.end method

.method public abstract xgetThemeShade()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;
.end method

.method public abstract xgetThemeTint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd;
.end method

.method public abstract xsetColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;)V
.end method

.method public abstract xsetFill(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;)V
.end method

.method public abstract xsetThemeColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;)V
.end method

.method public abstract xsetThemeFill(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;)V
.end method

.method public abstract xsetThemeFillShade(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;)V
.end method

.method public abstract xsetThemeFillTint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;)V
.end method

.method public abstract xsetThemeShade(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;)V
.end method

.method public abstract xsetThemeTint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd;)V
.end method
