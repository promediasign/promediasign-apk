.class Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;
.super Lorg/apache/poi/xssf/model/ExternalLinksTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeExternalLinksTable"
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;->fileName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLinkedFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;->fileName:Ljava/lang/String;

    return-object v0
.end method
