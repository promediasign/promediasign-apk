.class public abstract Lorg/apache/velocity/context/AbstractContext;
.super Lorg/apache/velocity/context/InternalContextBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/context/Context;


# instance fields
.field private innerContext:Lorg/apache/velocity/context/Context;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/context/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/context/InternalContextBase;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/context/AbstractContext;->innerContext:Lorg/apache/velocity/context/Context;

    instance-of v0, p1, Lorg/apache/velocity/context/InternalEventContext;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/velocity/context/InternalEventContext;

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/velocity/context/AbstractContext;->attachEventCartridge(Lorg/apache/velocity/app/event/EventCartridge;)Lorg/apache/velocity/app/event/EventCartridge;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic attachEventCartridge(Lorg/apache/velocity/app/event/EventCartridge;)Lorg/apache/velocity/app/event/EventCartridge;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/context/InternalContextBase;->attachEventCartridge(Lorg/apache/velocity/app/event/EventCartridge;)Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/velocity/context/AbstractContext;->internalContainsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/context/AbstractContext;->innerContext:Lorg/apache/velocity/context/Context;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/velocity/context/Context;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/velocity/context/AbstractContext;->internalGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/context/AbstractContext;->innerContext:Lorg/apache/velocity/context/Context;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getCurrentMacroCallDepth()I
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getCurrentMacroCallDepth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentTemplateName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMacroLibraries()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getMacroLibraries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMacroNameStack()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getMacroNameStack()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTemplateNameStack()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->getTemplateNameStack()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/context/InternalContextBase;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/context/InternalContextBase;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V

    return-void
.end method

.method public abstract internalContainsKey(Ljava/lang/String;)Z
.end method

.method public abstract internalGet(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract internalPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract internalRemove(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public bridge synthetic popCurrentMacroName()V
    .locals 0

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->popCurrentMacroName()V

    return-void
.end method

.method public bridge synthetic popCurrentTemplateName()V
    .locals 0

    invoke-super {p0}, Lorg/apache/velocity/context/InternalContextBase;->popCurrentTemplateName()V

    return-void
.end method

.method public bridge synthetic pushCurrentMacroName(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/context/InternalContextBase;->pushCurrentMacroName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pushCurrentTemplateName(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/context/InternalContextBase;->pushCurrentTemplateName(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/context/AbstractContext;->internalPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/velocity/context/AbstractContext;->internalRemove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/context/InternalContextBase;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    return-void
.end method

.method public bridge synthetic setMacroLibraries(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/context/InternalContextBase;->setMacroLibraries(Ljava/util/List;)V

    return-void
.end method
