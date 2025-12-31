.class Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/VelocimacroManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MacroEntry"
.end annotation


# instance fields
.field private fromLibrary:Z

.field private final macroArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;"
        }
    .end annotation
.end field

.field private nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

.field private final sourceTemplate:Ljava/lang/String;

.field private final vmName:Ljava/lang/String;

.field private vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Ljava/lang/String;Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/RuntimeServices;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->fromLibrary:Z

    iput-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vmName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->macroArgs:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    iput-object p4, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->sourceTemplate:Ljava/lang/String;

    new-instance p4, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    invoke-direct {p4}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;-><init>()V

    iput-object p4, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    invoke-virtual {p4, p1}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    invoke-virtual {p1, p3}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->setMacroArgs(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    iget-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    invoke-virtual {p1, p3}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->setNodeTree(Lorg/apache/velocity/runtime/parser/node/SimpleNode;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result p3

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result p4

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object p2

    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/velocity/runtime/directive/Directive;->setLocation(IILorg/apache/velocity/Template;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    invoke-virtual {p1, p5}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->init(Lorg/apache/velocity/runtime/RuntimeServices;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Ljava/lang/String;Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/runtime/VelocimacroManager$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;-><init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Ljava/lang/String;Lorg/apache/velocity/runtime/RuntimeServices;)V

    return-void
.end method


# virtual methods
.method public getFromLibrary()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->fromLibrary:Z

    return v0
.end method

.method public getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->vp:Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    return-object v0
.end method

.method public getSourceTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->sourceTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public setFromLibrary(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->fromLibrary:Z

    return-void
.end method
