.class public final Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataBarFormatting;


# instance fields
.field private final cfRule12Record:Lorg/apache/poi/hssf/record/CFRule12Record;

.field private final databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->cfRule12Record:Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    return-void
.end method


# virtual methods
.method public createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    new-instance v1, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getColor()Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    return-object v0
.end method

.method public bridge synthetic getColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->getColor()Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method public getMaxThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getThresholdMax()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic getMaxThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->getMaxThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getMinThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getThresholdMin()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic getMinThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->getMinThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getWidthMax()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getPercentMax()B

    move-result v0

    return v0
.end method

.method public getWidthMin()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getPercentMin()B

    move-result v0

    return v0
.end method

.method public isIconOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->isIconOnly()Z

    move-result v0

    return v0
.end method

.method public isLeftToRight()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->isReversed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getExtendedColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setIconOnly(Z)V

    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setReversed(Z)V

    return-void
.end method

.method public setWidthMax(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMax(B)V

    return-void
.end method

.method public setWidthMin(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;->databarFormatting:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMin(B)V

    return-void
.end method
