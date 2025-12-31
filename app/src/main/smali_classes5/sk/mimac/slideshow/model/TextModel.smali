.class public Lsk/mimac/slideshow/model/TextModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fontFamily:Ljava/lang/String;

.field private final fontSize:Ljava/lang/Integer;

.field private final horizontalScroll:Z

.field private final lines:I

.field private final scrollSpeed:I

.field private final text:Ljava/lang/CharSequence;

.field private final textColor:I

.field private toRight:Z

.field private verticalScroll:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/model/TextModel;->text:Ljava/lang/CharSequence;

    iput p2, p0, Lsk/mimac/slideshow/model/TextModel;->lines:I

    iput-boolean p3, p0, Lsk/mimac/slideshow/model/TextModel;->horizontalScroll:Z

    iput p4, p0, Lsk/mimac/slideshow/model/TextModel;->scrollSpeed:I

    iput p5, p0, Lsk/mimac/slideshow/model/TextModel;->textColor:I

    iput-object p6, p0, Lsk/mimac/slideshow/model/TextModel;->fontFamily:Ljava/lang/String;

    iput-object p7, p0, Lsk/mimac/slideshow/model/TextModel;->fontSize:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/model/TextModel;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/model/TextModel;->fontSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLines()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/model/TextModel;->lines:I

    return v0
.end method

.method public getScrollSpeed()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/model/TextModel;->scrollSpeed:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/model/TextModel;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/model/TextModel;->textColor:I

    return v0
.end method

.method public isHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/model/TextModel;->horizontalScroll:Z

    return v0
.end method

.method public isToRight()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/model/TextModel;->toRight:Z

    return v0
.end method

.method public isVerticalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/model/TextModel;->verticalScroll:Z

    return v0
.end method

.method public setToRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/model/TextModel;->toRight:Z

    return-void
.end method

.method public setVerticalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/model/TextModel;->verticalScroll:Z

    return-void
.end method
