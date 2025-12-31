.class public Lorg/h2/tools/Console;
.super Lorg/h2/util/Tool;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/WindowListener;
.implements Lorg/h2/server/ShutdownHandler;


# instance fields
.field private font:Ljava/awt/Font;

.field private frame:Ljava/awt/Frame;

.field private isWindows:Z

.field private lastOpenNs:J

.field private pg:Lorg/h2/tools/Server;

.field private startBrowser:Ljava/awt/Button;

.field private tcp:Lorg/h2/tools/Server;

.field private tray:Ljava/lang/Object;

.field private trayIcon:Ljava/lang/Object;

.field private trayIconUsed:Z

.field private urlText:Ljava/awt/TextField;

.field private web:Lorg/h2/tools/Server;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method private createTrayIcon()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.awt.SystemTray.isSupported"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/awt/PopupMenu;

    invoke-direct {v2}, Ljava/awt/PopupMenu;-><init>()V

    new-instance v3, Ljava/awt/MenuItem;

    const-string v4, "H2 Console"

    invoke-direct {v3, v4}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    const-string v4, "console"

    invoke-virtual {v3, v4}, Ljava/awt/MenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/MenuItem;->setFont(Ljava/awt/Font;)V

    invoke-virtual {v2, v3}, Ljava/awt/PopupMenu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    new-instance v3, Ljava/awt/MenuItem;

    const-string v4, "Status"

    invoke-direct {v3, v4}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/awt/MenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/MenuItem;->setFont(Ljava/awt/Font;)V

    invoke-virtual {v2, v3}, Ljava/awt/PopupMenu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    new-instance v3, Ljava/awt/MenuItem;

    const-string v4, "Exit"

    invoke-direct {v3, v4}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/MenuItem;->setFont(Ljava/awt/Font;)V

    const-string v4, "exit"

    invoke-virtual {v3, v4}, Ljava/awt/MenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v2, v3}, Ljava/awt/PopupMenu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    const-string v3, "java.awt.SystemTray.getSystemTray"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    const-string v4, "getTrayIconSize"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/awt/Dimension;

    iget v4, v3, Ljava/awt/Dimension;->width:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    iget v4, v3, Ljava/awt/Dimension;->height:I

    if-lt v4, v5, :cond_1

    const-string v3, "/org/h2/res/h2-24.png"

    goto :goto_0

    :cond_1
    iget v4, v3, Ljava/awt/Dimension;->width:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_2

    iget v3, v3, Ljava/awt/Dimension;->height:I

    if-lt v3, v5, :cond_2

    const-string v3, "/org/h2/res/h2-64-t.png"

    goto :goto_0

    :cond_2
    const-string v3, "/org/h2/res/h2.png"

    :goto_0
    invoke-static {v3}, Lorg/h2/tools/Console;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v3

    const-string v4, "java.awt.TrayIcon"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "H2 Database Engine"

    aput-object v3, v5, v0

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    const-string v3, "addMouseListener"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    const-string v3, "add"

    iget-object v4, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v2, v3, v5}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v0, p0, Lorg/h2/tools/Console;->trayIconUsed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private loadFont()V
    .locals 4

    iget-boolean v0, p0, Lorg/h2/tools/Console;->isWindows:Z

    const/4 v1, 0x0

    const-string v2, "Dialog"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/awt/Font;

    const/16 v3, 0xb

    invoke-direct {v0, v2, v1, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    :goto_0
    iput-object v0, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/awt/Font;

    const/16 v3, 0xc

    invoke-direct {v0, v2, v1, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static loadImage(Ljava/lang/String;)Ljava/awt/Image;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/awt/Toolkit;->createImage([B)Ljava/awt/Image;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/Console;

    invoke-direct {v0}, Lorg/h2/tools/Console;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Console;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/h2/tools/Server;->openBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Root cause: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showWindow()V
    .locals 10

    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/awt/Frame;

    const-string v1, "H2 Console"

    invoke-direct {v0, v1}, Ljava/awt/Frame;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, p0}, Ljava/awt/Frame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    const-string v0, "/org/h2/res/h2.png"

    invoke-static {v0}, Lorg/h2/tools/Console;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v1, v0}, Ljava/awt/Frame;->setIconImage(Ljava/awt/Image;)V

    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Frame;->setResizable(Z)V

    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    sget-object v2, Ljava/awt/SystemColor;->control:Ljava/awt/SystemColor;

    invoke-virtual {v0, v2}, Ljava/awt/Frame;->setBackground(Ljava/awt/Color;)V

    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    iget-object v2, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v2, v0}, Ljava/awt/Frame;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v2, Ljava/awt/Panel;

    invoke-direct {v2, v0}, Ljava/awt/Panel;-><init>(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridx:I

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weightx:D

    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weighty:D

    const/4 v5, 0x1

    iput v5, v0, Ljava/awt/GridBagConstraints;->fill:I

    new-instance v6, Ljava/awt/Insets;

    const/16 v7, 0xa

    invoke-direct {v6, v1, v7, v1, v7}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v6, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v6, Ljava/awt/GridBagConstraints;

    invoke-direct {v6}, Ljava/awt/GridBagConstraints;-><init>()V

    iput v1, v6, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v8, 0x2

    iput v8, v6, Ljava/awt/GridBagConstraints;->gridwidth:I

    new-instance v9, Ljava/awt/Insets;

    invoke-direct {v9, v7, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v9, v6, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    iput v5, v6, Ljava/awt/GridBagConstraints;->gridy:I

    const/16 v7, 0xd

    iput v7, v6, Ljava/awt/GridBagConstraints;->anchor:I

    new-instance v7, Ljava/awt/GridBagConstraints;

    invoke-direct {v7}, Ljava/awt/GridBagConstraints;-><init>()V

    iput v8, v7, Ljava/awt/GridBagConstraints;->fill:I

    iput v1, v7, Ljava/awt/GridBagConstraints;->gridy:I

    iput-wide v3, v7, Ljava/awt/GridBagConstraints;->weightx:D

    new-instance v3, Ljava/awt/Insets;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v3, v7, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    iput v5, v7, Ljava/awt/GridBagConstraints;->gridx:I

    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    iput v1, v3, Ljava/awt/GridBagConstraints;->gridx:I

    iput v1, v3, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v4, Ljava/awt/Label;

    const-string v9, "H2 Console URL:"

    invoke-direct {v4, v9, v1}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    iget-object v9, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v4, v9}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    invoke-virtual {v2, v4, v3}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v3, Ljava/awt/TextField;

    invoke-direct {v3}, Ljava/awt/TextField;-><init>()V

    iput-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v3, v1}, Ljava/awt/TextField;->setEditable(Z)V

    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/TextField;->setFont(Ljava/awt/Font;)V

    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    iget-object v4, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v4}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/h2/tools/Console;->isWindows:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v3, v1}, Ljava/awt/TextField;->setFocusable(Z)V

    :cond_2
    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v2, v3, v7}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v3, Ljava/awt/Button;

    const-string v4, "Start Browser"

    invoke-direct {v3, v4}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {v3, v1}, Ljava/awt/Button;->setFocusable(Z)V

    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    const-string v4, "console"

    invoke-virtual {v3, v4}, Ljava/awt/Button;->setActionCommand(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {v3, p0}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/Button;->setFont(Ljava/awt/Font;)V

    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {v2, v3, v6}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v3, v2, v0}, Ljava/awt/Frame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    const/16 v2, 0x12c

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Ljava/awt/Frame;->setSize(II)V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget-object v4, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    iget v6, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v6, v2

    div-int/2addr v6, v8

    iget v0, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v0, v3

    div-int/2addr v0, v8

    invoke-virtual {v4, v6, v0}, Ljava/awt/Frame;->setLocation(II)V

    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, v5}, Ljava/awt/Frame;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, v5}, Ljava/awt/Frame;->setAlwaysOnTop(Z)V

    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, v1}, Ljava/awt/Frame;->setAlwaysOnTop(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private startBrowser()V
    .locals 8

    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/h2/tools/Console;->lastOpenNs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v3, v5, v1

    if-gez v3, :cond_2

    :cond_1
    iput-wide v1, p0, Lorg/h2/tools/Console;->lastOpenNs:J

    invoke-direct {p0, v0}, Lorg/h2/tools/Console;->openBrowser(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/tools/Console;->shutdown()V

    goto :goto_1

    :cond_0
    const-string v1, "console"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lorg/h2/tools/Console;->startBrowser()V

    goto :goto_1

    :cond_1
    const-string v1, "status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/h2/tools/Console;->showWindow()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getButton()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/h2/tools/Console;->startBrowser()V

    :cond_0
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
    .locals 0

    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "os.name"

    const-string v3, ""

    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Windows"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/tools/Console;->isWindows:Z

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    if-eqz v2, :cond_1f

    array-length v6, v2

    if-ge v8, v6, :cond_1f

    aget-object v6, v2, v8

    if-nez v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v4, "-?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "-help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v4, "-url"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v8, v8, 0x1

    aget-object v12, v2, v8

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_3
    const-string v4, "-driver"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v8, v8, 0x1

    aget-object v13, v2, v8

    goto/16 :goto_3

    :cond_4
    const-string v4, "-user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v8, v8, 0x1

    aget-object v14, v2, v8

    goto/16 :goto_3

    :cond_5
    const-string v4, "-password"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v8, v8, 0x1

    aget-object v15, v2, v8

    goto/16 :goto_3

    :cond_6
    const-string v4, "-web"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v9, 0x0

    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_7
    const-string v4, "-webAllowOthers"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string v4, "-webDaemon"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_3

    :cond_9
    const-string v4, "-webSSL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_3

    :cond_a
    const-string v4, "-webPort"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v1, v6}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_3

    :cond_c
    const-string v4, "-tool"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x1

    goto/16 :goto_3

    :cond_d
    const-string v4, "-browser"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x1

    goto/16 :goto_3

    :cond_e
    const-string v4, "-tcp"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v9, 0x0

    const/16 v17, 0x1

    goto/16 :goto_3

    :cond_f
    const-string v4, "-tcpAllowOthers"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_3

    :cond_10
    const-string v4, "-tcpDaemon"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_3

    :cond_11
    const-string v4, "-tcpSSL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_3

    :cond_12
    const-string v4, "-tcpPort"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_2

    :cond_13
    const-string v4, "-tcpPassword"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    add-int/lit8 v8, v8, 0x1

    aget-object v4, v2, v8

    move-object v7, v4

    goto/16 :goto_3

    :cond_14
    const-string v4, "-tcpShutdown"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    add-int/lit8 v8, v8, 0x1

    aget-object v3, v2, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_3

    :cond_15
    const-string v4, "-tcpShutdownForce"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v11, 0x1

    goto :goto_3

    :cond_16
    const-string v4, "-pg"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1a

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v9, 0x0

    const/16 v20, 0x1

    goto :goto_3

    :cond_17
    const-string v4, "-pgAllowOthers"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_3

    :cond_18
    const-string v4, "-pgDaemon"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_3

    :cond_19
    const-string v4, "-pgPort"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_2

    :cond_1a
    const-string v4, "-properties"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const-string v4, "-trace"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_3

    :cond_1c
    const-string v4, "-ifExists"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_3

    :cond_1d
    const-string v4, "-baseDir"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_2

    :goto_3
    add-int/2addr v8, v0

    goto/16 :goto_1

    :cond_1e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_1f
    if-eqz v9, :cond_20

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    :cond_20
    if-eqz v10, :cond_21

    iget-object v4, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Shutting down TCP Server at "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v7, v11, v4}, Lorg/h2/tools/Server;->shutdownTcpServer(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_21
    const/4 v4, 0x0

    :goto_5
    if-eqz v12, :cond_22

    invoke-static {v13, v12, v14, v15}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/tools/Server;->startWebServer(Ljava/sql/Connection;)V

    :cond_22
    if-eqz v16, :cond_24

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createWebServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v3

    iput-object v3, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v3, v1}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    iget-object v3, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    if-eqz v5, :cond_23

    iget-object v3, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iget-object v6, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v6}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_7

    :cond_23
    :goto_6
    const/4 v4, 0x1

    :cond_24
    const/4 v6, 0x0

    goto :goto_8

    :goto_7
    iget-object v0, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-direct {v1, v6, v0}, Lorg/h2/tools/Console;->printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V

    :goto_8
    if-eqz v18, :cond_25

    if-eqz v4, :cond_25

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Console;->loadFont()V

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Console;->createTrayIcon()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Console;->showWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_25
    :goto_9
    if-eqz v19, :cond_26

    iget-object v0, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/h2/tools/Console;->openBrowser(Ljava/lang/String;)V

    :cond_26
    if-eqz v17, :cond_28

    :try_start_2
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    if-eqz v5, :cond_27

    iget-object v0, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :cond_27
    :goto_a
    iget-object v0, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :goto_b
    iget-object v3, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-direct {v1, v0, v3}, Lorg/h2/tools/Console;->printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V

    if-nez v6, :cond_28

    move-object v6, v0

    :cond_28
    :goto_c
    if-eqz v20, :cond_29

    :try_start_3
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createPgServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    if-eqz v5, :cond_29

    iget-object v0, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iget-object v2, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v2}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    iget-object v2, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-direct {v1, v0, v2}, Lorg/h2/tools/Console;->printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V

    if-nez v6, :cond_29

    move-object v6, v0

    :cond_29
    :goto_d
    if-nez v6, :cond_2a

    return-void

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/tools/Console;->shutdown()V

    throw v6
.end method

.method public shutdown()V
    .locals 6

    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    iput-object v2, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    iput-object v2, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    iput-object v2, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    :cond_2
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/awt/Frame;->dispose()V

    iput-object v2, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    :cond_3
    iget-boolean v0, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    const-string v3, "remove"

    iget-object v4, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v0, v3, v5}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v2, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    iput-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    iput-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    throw v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "os.name"

    const-string v1, "generic"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AWT-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    return-void
.end method

.method public windowActivated(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowClosed(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    iget-boolean p1, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {p1}, Ljava/awt/Frame;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/tools/Console;->shutdown()V

    :goto_0
    return-void
.end method

.method public windowDeactivated(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowDeiconified(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowIconified(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowOpened(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method
