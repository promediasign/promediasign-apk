.class public final Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FontFormatting;


# static fields
.field public static final U_DOUBLE:B = 0x2t

.field public static final U_DOUBLE_ACCOUNTING:B = 0x22t

.field public static final U_NONE:B = 0x0t

.field public static final U_SINGLE:B = 0x1t

.field public static final U_SINGLE_ACCOUNTING:B = 0x21t


# instance fields
.field private final fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-void
.end method


# virtual methods
.method public getEscapementType()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getEscapementType()S

    move-result v0

    return v0
.end method

.method public getFontColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->getFontColorIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFontColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->getFontColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFontColorIndex()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontColorIndex()S

    move-result v0

    return v0
.end method

.method public getFontFormattingBlock()Lorg/apache/poi/hssf/record/cf/FontFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    return-object v0
.end method

.method public getFontHeight()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontHeight()I

    move-result v0

    return v0
.end method

.method public getFontWeight()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v0

    return v0
.end method

.method public getRawRecord()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getRawRecord()[B

    move-result-object v0

    return-object v0
.end method

.method public getUnderlineType()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getUnderlineType()S

    move-result v0

    return v0
.end method

.method public isBold()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontWeightModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isBold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEscapementTypeModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isEscapementTypeModified()Z

    move-result v0

    return v0
.end method

.method public isFontCancellationModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontCancellationModified()Z

    move-result v0

    return v0
.end method

.method public isFontOutlineModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v0

    return v0
.end method

.method public isFontShadowModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontShadowModified()Z

    move-result v0

    return v0
.end method

.method public isFontStyleModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontStyleModified()Z

    move-result v0

    return v0
.end method

.method public isFontWeightModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontWeightModified()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontStyleModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutlineOn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isOutlineOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShadowOn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isShadowOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStruckout()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontCancellationModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isStruckout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnderlineTypeModified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isUnderlineTypeModified()Z

    move-result v0

    return v0
.end method

.method public resetFontStyle()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->setFontStyle(ZZ)V

    return-void
.end method

.method public setEscapementType(S)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementType(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementType(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setEscapementTypeModified(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    return-void
.end method

.method public setFontCancellationModified(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontCancellationModified(Z)V

    return-void
.end method

.method public setFontColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontColorIndex(S)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontColorIndex(S)V

    :goto_0
    return-void
.end method

.method public setFontColorIndex(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontColorIndex(S)V

    return-void
.end method

.method public setFontHeight(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontHeight(I)V

    return-void
.end method

.method public setFontOutlineModified(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOutlineModified(Z)V

    return-void
.end method

.method public setFontShadowModified(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontShadowModified(Z)V

    return-void
.end method

.method public setFontStyle(ZZ)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setItalic(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setBold(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontStyleModified(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontWieghtModified(Z)V

    return-void
.end method

.method public setFontStyleModified(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontStyleModified(Z)V

    return-void
.end method

.method public setOutline(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOutline(Z)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOutlineModified(Z)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShadow(Z)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontShadowModified(Z)V

    return-void
.end method

.method public setStrikeout(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setStrikeout(Z)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontCancellationModified(Z)V

    return-void
.end method

.method public setUnderlineType(S)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x21

    if-eq p1, v1, :cond_0

    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineType(S)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->setUnderlineTypeModified(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineType(S)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->setUnderlineTypeModified(Z)V

    :goto_0
    return-void
.end method

.method public setUnderlineTypeModified(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineTypeModified(Z)V

    return-void
.end method
