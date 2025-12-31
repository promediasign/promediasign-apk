.class public Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowFlushedException"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string v0, "Row "

    .line 2
    .line 3
    const-string v1, " has been flushed, cannot evaluate all cells"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
