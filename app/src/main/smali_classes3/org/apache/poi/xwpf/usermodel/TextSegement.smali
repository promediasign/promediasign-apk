.class public Lorg/apache/poi/xwpf/usermodel/TextSegement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

.field private endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v0, p1, p3, p5}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>(III)V

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {p1, p2, p4, p6}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>(III)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-void
.end method


# virtual methods
.method public getBeginChar()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v0

    return v0
.end method

.method public getBeginPos()Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-object v0
.end method

.method public getBeginRun()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v0

    return v0
.end method

.method public getBeginText()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v0

    return v0
.end method

.method public getEndChar()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v0

    return v0
.end method

.method public getEndPos()Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-object v0
.end method

.method public getEndRun()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v0

    return v0
.end method

.method public getEndText()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v0

    return v0
.end method

.method public setBeginChar(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setChar(I)V

    return-void
.end method

.method public setBeginRun(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setRun(I)V

    return-void
.end method

.method public setBeginText(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setText(I)V

    return-void
.end method

.method public setEndChar(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setChar(I)V

    return-void
.end method

.method public setEndRun(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setRun(I)V

    return-void
.end method

.method public setEndText(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setText(I)V

    return-void
.end method
