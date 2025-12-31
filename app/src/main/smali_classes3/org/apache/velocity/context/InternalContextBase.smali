.class Lorg/apache/velocity/context/InternalContextBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/context/InternalHousekeepingContext;
.implements Lorg/apache/velocity/context/InternalEventContext;


# instance fields
.field private currentResource:Lorg/apache/velocity/runtime/resource/Resource;

.field private eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

.field private introspectionCache:Ljava/util/HashMap;

.field private macroLibraries:Ljava/util/List;

.field private macroNameStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templateNameStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->introspectionCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->templateNameStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroNameStack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->currentResource:Lorg/apache/velocity/runtime/resource/Resource;

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroLibraries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public attachEventCartridge(Lorg/apache/velocity/app/event/EventCartridge;)Lorg/apache/velocity/app/event/EventCartridge;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    iput-object p1, p0, Lorg/apache/velocity/context/InternalContextBase;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    return-object v0
.end method

.method public getCurrentMacroCallDepth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->currentResource:Lorg/apache/velocity/runtime/resource/Resource;

    return-object v0
.end method

.method public getCurrentTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->templateNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<undef>"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->templateNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    return-object v0
.end method

.method public getMacroLibraries()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getMacroNameStack()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateNameStack()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->templateNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->introspectionCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    return-object p1
.end method

.method public icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->introspectionCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public popCurrentMacroName()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public popCurrentTemplateName()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->templateNameStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public pushCurrentMacroName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->macroNameStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushCurrentTemplateName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextBase;->templateNameStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/context/InternalContextBase;->currentResource:Lorg/apache/velocity/runtime/resource/Resource;

    return-void
.end method

.method public setMacroLibraries(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/context/InternalContextBase;->macroLibraries:Ljava/util/List;

    return-void
.end method
