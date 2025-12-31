.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionFilterData;


# instance fields
.field private final _cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    return-void
.end method


# virtual methods
.method public getAboveAverage()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getAboveAverage()Z

    move-result v0

    return v0
.end method

.method public getBottom()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getBottom()Z

    move-result v0

    return v0
.end method

.method public getEqualAverage()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getEqualAverage()Z

    move-result v0

    return v0
.end method

.method public getPercent()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getPercent()Z

    move-result v0

    return v0
.end method

.method public getRank()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getRank()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStdDev()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getStdDev()I

    move-result v0

    return v0
.end method
