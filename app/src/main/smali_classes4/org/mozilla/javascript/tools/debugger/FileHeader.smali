.class Lorg/mozilla/javascript/tools/debugger/FileHeader;
.super Ljavax/swing/JPanel;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/MouseListener;


# static fields
.field private static final serialVersionUID:J = -0x27acdf518a40a2b7L


# instance fields
.field private fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

.field private pressLine:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V
    .locals 1

    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->pressLine:I

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    invoke-virtual {p0, p0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->addMouseListener(Ljava/awt/event/MouseListener;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->update()V

    return-void
.end method


# virtual methods
.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getFont()Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result p1

    div-int/2addr p1, v0

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->pressLine:I

    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getComponent()Ljava/awt/Component;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getFont()Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v0

    div-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->pressLine:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->toggleBreakPoint(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->pressLine:I

    :cond_1
    :goto_0
    return-void
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 13

    invoke-super {p0, p1}, Ljavax/swing/JPanel;->paint(Ljava/awt/Graphics;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/awt/Graphics;->setFont(Ljava/awt/Font;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Graphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->getBackground()Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    iget v3, v2, Ljava/awt/Rectangle;->x:I

    iget v4, v2, Ljava/awt/Rectangle;->y:I

    iget v5, v2, Ljava/awt/Rectangle;->width:I

    iget v6, v2, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/awt/Graphics;->fillRect(IIII)V

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getMaxAscent()I

    move-result v3

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    iget v5, v2, Ljava/awt/Rectangle;->y:I

    div-int/2addr v5, v1

    iget v6, v2, Ljava/awt/Rectangle;->y:I

    iget v2, v2, Ljava/awt/Rectangle;->height:I

    add-int/2addr v6, v2

    div-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->getWidth()I

    move-result v2

    if-le v6, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-ge v5, v4, :cond_5

    :try_start_0
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result v6
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v6, -0x2

    :goto_1
    iget-object v7, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isBreakPoint(I)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    mul-int v5, v5, v1

    sget-object v10, Ljava/awt/Color;->blue:Ljava/awt/Color;

    invoke-virtual {p1, v10}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    add-int v10, v5, v3

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v11, v10}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    sub-int v9, v2, v3

    if-eqz v7, :cond_1

    new-instance v7, Ljava/awt/Color;

    const/16 v12, 0x80

    invoke-direct {v7, v12, v11, v11}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {p1, v7}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    add-int/lit8 v10, v10, -0x9

    const/16 v7, 0x9

    invoke-virtual {p1, v9, v10, v7, v7}, Ljava/awt/Graphics;->fillOval(IIII)V

    const/16 v11, 0x8

    invoke-virtual {p1, v9, v10, v11, v11}, Ljava/awt/Graphics;->drawOval(IIII)V

    invoke-virtual {p1, v9, v10, v7, v7}, Ljava/awt/Graphics;->drawOval(IIII)V

    :cond_1
    iget-object v7, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    iget v7, v7, Lorg/mozilla/javascript/tools/debugger/FileWindow;->currentPos:I

    if-ne v6, v7, :cond_4

    new-instance v6, Ljava/awt/Polygon;

    invoke-direct {v6}, Ljava/awt/Polygon;-><init>()V

    add-int/lit8 v7, v3, -0xa

    add-int/2addr v7, v5

    add-int/lit8 v5, v7, 0x3

    invoke-virtual {v6, v9, v5}, Ljava/awt/Polygon;->addPoint(II)V

    add-int/lit8 v10, v9, 0x5

    invoke-virtual {v6, v10, v5}, Ljava/awt/Polygon;->addPoint(II)V

    move v11, v7

    move v5, v10

    :goto_2
    add-int/lit8 v12, v9, 0xa

    if-gt v5, v12, :cond_2

    invoke-virtual {v6, v5, v11}, Ljava/awt/Polygon;->addPoint(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v9, 0x9

    :goto_3
    if-lt v5, v10, :cond_3

    invoke-virtual {v6, v5, v11}, Ljava/awt/Polygon;->addPoint(II)V

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v6, v10, v7}, Ljava/awt/Polygon;->addPoint(II)V

    invoke-virtual {v6, v9, v7}, Ljava/awt/Polygon;->addPoint(II)V

    sget-object v5, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {p1, v5}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, v6}, Ljava/awt/Graphics;->fillPolygon(Ljava/awt/Polygon;)V

    sget-object v5, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {p1, v5}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, v6}, Ljava/awt/Graphics;->drawPolygon(Ljava/awt/Polygon;)V

    :cond_4
    move v5, v8

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public update()V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileHeader;->fileWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->setFont(Ljava/awt/Font;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const-string v3, "99"

    :cond_0
    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4}, Ljava/awt/Dimension;-><init>()V

    invoke-virtual {v1, v3}, Ljava/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    iput v1, v4, Ljava/awt/Dimension;->width:I

    mul-int v0, v0, v2

    add-int/lit8 v0, v0, 0x64

    iput v0, v4, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->setSize(Ljava/awt/Dimension;)V

    return-void
.end method
