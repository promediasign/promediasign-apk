.class public Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetsFlushedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "One or more sheets have been flushed, cannot evaluate all cells"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method
