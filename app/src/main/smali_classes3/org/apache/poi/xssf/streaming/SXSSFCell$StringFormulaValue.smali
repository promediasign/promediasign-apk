.class Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public getPreEvaluatedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    return-object v0
.end method

.method public setPreEvaluatedValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    return-void
.end method
