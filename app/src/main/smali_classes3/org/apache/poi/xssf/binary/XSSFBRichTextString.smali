.class Lorg/apache/poi/xssf/binary/XSSFBRichTextString;
.super Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyFont(IILorg/apache/poi/ss/usermodel/Font;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    return-void
.end method

.method public applyFont(IIS)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2
    return-void
.end method

.method public applyFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 3
    return-void
.end method

.method public applyFont(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 4
    return-void
.end method

.method public clearFormatting()V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    return-void
.end method

.method public getIndexOfFormattingRun(I)I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public numFormattingRuns()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
