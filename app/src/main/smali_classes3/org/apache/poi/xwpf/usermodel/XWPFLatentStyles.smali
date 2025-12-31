.class public Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

.field protected styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-void
.end method


# virtual methods
.method public getNumberOfStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->sizeOfLsdExceptionArray()I

    move-result v0

    return v0
.end method

.method public isLatentStyle(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->getLsdExceptionArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
