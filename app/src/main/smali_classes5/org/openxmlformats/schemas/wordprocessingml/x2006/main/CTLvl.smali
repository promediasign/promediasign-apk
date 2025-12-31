.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctlvlf630type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewIsLgl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLegacy()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvlLegacy;
.end method

.method public abstract addNewLvlJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract addNewLvlPicBulletId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLvlRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;
.end method

.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.end method

.method public abstract addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
.end method

.method public abstract addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract addNewStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewSuff()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;
.end method

.method public abstract getIlvl()Ljava/math/BigInteger;
.end method

.method public abstract getIsLgl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLegacy()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvlLegacy;
.end method

.method public abstract getLvlJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract getLvlPicBulletId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLvlRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
.end method

.method public abstract getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract getStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getSuff()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;
.end method

.method public abstract getTentative()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
.end method

.method public abstract getTplc()[B
.end method

.method public abstract isSetIsLgl()Z
.end method

.method public abstract isSetLegacy()Z
.end method

.method public abstract isSetLvlJc()Z
.end method

.method public abstract isSetLvlPicBulletId()Z
.end method

.method public abstract isSetLvlRestart()Z
.end method

.method public abstract isSetLvlText()Z
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract isSetPStyle()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract isSetSuff()Z
.end method

.method public abstract isSetTentative()Z
.end method

.method public abstract isSetTplc()Z
.end method

.method public abstract setIlvl(Ljava/math/BigInteger;)V
.end method

.method public abstract setIsLgl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLegacy(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvlLegacy;)V
.end method

.method public abstract setLvlJc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;)V
.end method

.method public abstract setLvlPicBulletId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLvlRestart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLvlText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;)V
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;)V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V
.end method

.method public abstract setPStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
.end method

.method public abstract setStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setSuff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;)V
.end method

.method public abstract setTentative(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V
.end method

.method public abstract setTplc([B)V
.end method

.method public abstract unsetIsLgl()V
.end method

.method public abstract unsetLegacy()V
.end method

.method public abstract unsetLvlJc()V
.end method

.method public abstract unsetLvlPicBulletId()V
.end method

.method public abstract unsetLvlRestart()V
.end method

.method public abstract unsetLvlText()V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetPPr()V
.end method

.method public abstract unsetPStyle()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract unsetSuff()V
.end method

.method public abstract unsetTentative()V
.end method

.method public abstract unsetTplc()V
.end method

.method public abstract xgetIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetTentative()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;
.end method

.method public abstract xgetTplc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xsetIlvl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetTentative(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;)V
.end method

.method public abstract xsetTplc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method
