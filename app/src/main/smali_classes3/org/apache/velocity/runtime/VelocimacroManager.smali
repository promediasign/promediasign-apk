.class public Lorg/apache/velocity/runtime/VelocimacroManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;
    }
.end annotation


# instance fields
.field private final globalNamespace:Ljava/util/Map;

.field private inlineLocalMode:Z

.field private inlineReplacesGlobal:Z

.field private final libraries:Ljava/util/Map;

.field private namespacesOn:Z

.field private registerFromLib:Z

.field private rsvc:Lorg/apache/velocity/runtime/RuntimeServices;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x11

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->libraries:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->namespacesOn:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineLocalMode:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineReplacesGlobal:Z

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x65

    invoke-direct {v0, v1, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-void
.end method

.method private usingNamespaces()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->namespacesOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineLocalMode:Z

    return v0
.end method


# virtual methods
.method public addVM(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Lorg/apache/velocity/Template;",
            "Z)Z"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    new-instance p5, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    .line 4
    .line 5
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v5, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, p5

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v3, p3

    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;-><init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Ljava/lang/String;Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/runtime/VelocimacroManager$1;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    .line 20
    .line 21
    invoke-virtual {p5, p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->setFromLibrary(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    .line 31
    .line 32
    iget-boolean p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    iget-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->libraries:Ljava/util/Map;

    .line 38
    .line 39
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->libraries:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_1

    .line 58
    .line 59
    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroManager;->usingNamespaces()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_1

    .line 64
    .line 65
    invoke-virtual {p4}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getFromLibrary()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p5, p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->setFromLibrary(Z)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 86
    .line 87
    const-string p3, "Null AST for "

    .line 88
    .line 89
    const-string p5, " in "

    .line 90
    .line 91
    invoke-static {p3, p1, p5}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2
.end method

.method public get(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/VelocimacroProxy;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineReplacesGlobal:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroManager;->usingNamespaces()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    invoke-virtual {p3}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLibraryName(Ljava/lang/String;Lorg/apache/velocity/Template;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroManager;->usingNamespaces()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p2, :cond_0

    return-object v1

    :cond_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getSourceTemplate()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public setInlineReplacesGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineReplacesGlobal:Z

    return-void
.end method

.method public setNamespaceUsage(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->namespacesOn:Z

    return-void
.end method

.method public setRegisterFromLib(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    return-void
.end method

.method public setTemplateLocalInlineVM(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineLocalMode:Z

    return-void
.end method
