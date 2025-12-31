.class Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ComponentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/debugger/ContextWindow;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field t2Docked:Z

.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

.field final synthetic val$debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field final synthetic val$finalP1:Ljavax/swing/JPanel;

.field final synthetic val$finalP2:Ljavax/swing/JPanel;

.field final synthetic val$finalSplit:Ljavax/swing/JSplitPane;

.field final synthetic val$finalT1:Ljavax/swing/JToolBar;

.field final synthetic val$finalT2:Ljavax/swing/JToolBar;

.field final synthetic val$finalThis:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/ContextWindow;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->this$0:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalThis:Ljavax/swing/JPanel;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalT1:Ljavax/swing/JToolBar;

    iput-object p4, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalP1:Ljavax/swing/JPanel;

    iput-object p5, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iput-object p6, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalT2:Ljavax/swing/JToolBar;

    iput-object p7, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalP2:Ljavax/swing/JPanel;

    iput-object p8, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalSplit:Ljavax/swing/JSplitPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->t2Docked:Z

    return-void
.end method


# virtual methods
.method public check(Ljava/awt/Component;)V
    .locals 6

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalThis:Ljavax/swing/JPanel;

    invoke-virtual {p1}, Ljavax/swing/JPanel;->getParent()Ljava/awt/Container;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalT1:Ljavax/swing/JToolBar;

    invoke-virtual {v0}, Ljavax/swing/JToolBar;->getParent()Ljava/awt/Container;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalP1:Ljavax/swing/JPanel;

    if-eq v0, v3, :cond_3

    :goto_0
    instance-of v3, v0, Ljavax/swing/JFrame;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/awt/Component;->getParent()Ljava/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Ljavax/swing/JFrame;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const-string v4, "Variables"

    invoke-virtual {v3, v4, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->addTopLevel(Ljava/lang/String;Ljavax/swing/JFrame;)V

    invoke-virtual {v0}, Ljavax/swing/JFrame;->isResizable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljavax/swing/JFrame;->setResizable(Z)V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    const-class v3, Ljava/awt/event/WindowListener;

    invoke-virtual {v0, v3}, Ljavax/swing/JFrame;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, [Ljava/awt/event/WindowListener;

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljavax/swing/JFrame;->removeWindowListener(Ljava/awt/event/WindowListener;)V

    new-instance v4, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1$1;

    invoke-direct {v4, p0, v3}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1$1;-><init>(Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;[Ljava/awt/event/WindowListener;)V

    invoke-virtual {v0, v4}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalT2:Ljavax/swing/JToolBar;

    invoke-virtual {v3}, Ljavax/swing/JToolBar;->getParent()Ljava/awt/Container;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalP2:Ljavax/swing/JPanel;

    if-eq v3, v4, :cond_5

    :goto_2
    instance-of v4, v3, Ljavax/swing/JFrame;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/awt/Component;->getParent()Ljava/awt/Container;

    move-result-object v3

    goto :goto_2

    :cond_4
    check-cast v3, Ljavax/swing/JFrame;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const-string v5, "Evaluate"

    invoke-virtual {v4, v5, v3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->addTopLevel(Ljava/lang/String;Ljavax/swing/JFrame;)V

    invoke-virtual {v3, v2}, Ljavax/swing/JFrame;->setResizable(Z)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    :goto_3
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->t2Docked:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iput-boolean v1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->t2Docked:Z

    check-cast p1, Ljavax/swing/JSplitPane;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalSplit:Ljavax/swing/JSplitPane;

    if-eqz v1, :cond_8

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->val$finalSplit:Ljavax/swing/JSplitPane;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    const-wide v0, 0x3fe51eb851eb851fL    # 0.66

    :goto_4
    invoke-virtual {p1, v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v2, v3}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    :goto_5
    return-void
.end method

.method public componentHidden(Ljava/awt/event/ComponentEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/event/ComponentEvent;->getComponent()Ljava/awt/Component;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->check(Ljava/awt/Component;)V

    return-void
.end method

.method public componentMoved(Ljava/awt/event/ComponentEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/event/ComponentEvent;->getComponent()Ljava/awt/Component;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->check(Ljava/awt/Component;)V

    return-void
.end method

.method public componentResized(Ljava/awt/event/ComponentEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/event/ComponentEvent;->getComponent()Ljava/awt/Component;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->check(Ljava/awt/Component;)V

    return-void
.end method

.method public componentShown(Ljava/awt/event/ComponentEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/event/ComponentEvent;->getComponent()Ljava/awt/Component;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;->check(Ljava/awt/Component;)V

    return-void
.end method
