.class public Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    return-void
.end method


# virtual methods
.method public getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    return-object v0
.end method

.method public getSpacingAfter()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetSpacing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfter()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
