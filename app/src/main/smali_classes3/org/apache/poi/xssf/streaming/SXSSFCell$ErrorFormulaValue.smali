.class Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public getPreEvaluatedValue()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    return v0
.end method

.method public setPreEvaluatedValue(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    return-void
.end method
