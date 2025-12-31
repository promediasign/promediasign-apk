.class public final Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v0, "updateConditionalFormatting"

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v0, "updateFormulas"

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v0, "updateHyperlinks"

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v0, "HSSFRowShifter.updateNamedRanges"

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string p2, "updateRowFormulas"

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
