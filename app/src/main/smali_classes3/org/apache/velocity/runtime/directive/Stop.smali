.class public Lorg/apache/velocity/runtime/directive/Stop;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# static fields
.field private static final STOP_ALL:Lorg/apache/velocity/runtime/directive/StopCommand;


# instance fields
.field private hasMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/velocity/runtime/directive/StopCommand;

    const-string v1, "StopCommand to exit merging"

    invoke-direct {v0, v1}, Lorg/apache/velocity/runtime/directive/StopCommand;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/velocity/runtime/directive/Stop;->STOP_ALL:Lorg/apache/velocity/runtime/directive/StopCommand;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/directive/Stop;->hasMessage:Z

    return-void
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/velocity/runtime/parser/Token;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "The #stop directive only accepts a single message parameter"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "stop"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/apache/velocity/runtime/directive/Stop;->hasMessage:Z

    return-void
.end method

.method public isScopeProvided()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 0

    iget-boolean p2, p0, Lorg/apache/velocity/runtime/directive/Stop;->hasMessage:Z

    if-nez p2, :cond_0

    sget-object p1, Lorg/apache/velocity/runtime/directive/Stop;->STOP_ALL:Lorg/apache/velocity/runtime/directive/StopCommand;

    throw p1

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p3, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lorg/apache/velocity/runtime/directive/StopCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/velocity/runtime/directive/StopCommand;-><init>(Ljava/lang/String;)V

    throw p2
.end method
