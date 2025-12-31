.class public Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;
.super Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalSheetRange"
.end annotation


# instance fields
.field private final _lastSheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->_lastSheetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFirstSheetName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->_lastSheetName:Ljava/lang/String;

    return-object v0
.end method
