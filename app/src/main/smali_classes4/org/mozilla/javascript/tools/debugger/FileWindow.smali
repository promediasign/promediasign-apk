.class Lorg/mozilla/javascript/tools/debugger/FileWindow;
.super Ljavax/swing/JInternalFrame;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# static fields
.field private static final serialVersionUID:J = -0x5636d11088fc17c2L


# instance fields
.field currentPos:I

.field private debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field private fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

.field private p:Ljavax/swing/JScrollPane;

.field private sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

.field textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .locals 7

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljavax/swing/JInternalFrame;-><init>(Ljava/lang/String;ZZZZ)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->updateToolTip()V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->currentPos:I

    new-instance p1, Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;-><init>(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->setRows(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->setColumns(I)V

    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->p:Ljavax/swing/JScrollPane;

    new-instance p1, Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/tools/debugger/FileHeader;-><init>(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->p:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->p:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setRowHeaderView(Ljava/awt/Component;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->p:Ljavax/swing/JScrollPane;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setContentPane(Ljava/awt/Container;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->pack()V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->updateText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(I)V

    return-void
.end method

.method private updateToolTip()V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getComponentCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    return-void

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljavax/swing/JComponent;

    if-eqz v1, :cond_2

    check-cast v0, Ljavax/swing/JComponent;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComponent;->setToolTipText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Copy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->copy()V

    goto :goto_0

    :cond_1
    const-string v0, "Paste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public clearBreakPoint(I)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoint(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->repaint()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->removeWindow(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V

    invoke-super {p0}, Ljavax/swing/JInternalFrame;->dispose()V

    return-void
.end method

.method public getPosition(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result p1
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBreakPoint(I)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoint(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load()V
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object v0, v1, Lorg/mozilla/javascript/tools/debugger/RunProxy;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->source()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/mozilla/javascript/tools/debugger/RunProxy;->text:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public select(II)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v1, v0, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(II)V

    return-void
.end method

.method public setBreakPoint(I)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoint(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->repaint()V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(I)V

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->currentPos:I

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->repaint()V

    return-void
.end method

.method public toggleBreakPoint(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isBreakPoint(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setBreakPoint(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->clearBreakPoint(I)V

    :goto_0
    return-void
.end method

.method public updateText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->source()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->setText(Ljava/lang/String;)V

    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->currentPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(I)V

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->update()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->fileHeader:Lorg/mozilla/javascript/tools/debugger/FileHeader;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileHeader;->repaint()V

    return-void
.end method
