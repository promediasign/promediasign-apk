.class public Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataFormat;


# instance fields
.field private final stylesSource:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-void
.end method


# virtual methods
.method public getFormat(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat(S)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatAt(S)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFormat(Ljava/lang/String;)S
    .locals 2

    .line 3
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->putNumberFormat(Ljava/lang/String;)I

    move-result v0

    :cond_0
    int-to-short p1, v0

    return p1
.end method

.method public putFormat(SLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/model/StylesTable;->putNumberFormat(SLjava/lang/String;)V

    return-void
.end method
