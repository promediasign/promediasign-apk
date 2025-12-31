.class final Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SheetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/poi/ss/usermodel/Sheet;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->this$0:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->access$000(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->next()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->this$0:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove method not supported on XSSFWorkbook.iterator(). Use Sheet.removeSheetAt(int) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
