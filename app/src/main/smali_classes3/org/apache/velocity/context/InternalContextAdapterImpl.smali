.class public final Lorg/apache/velocity/context/InternalContextAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/context/InternalContextAdapter;


# instance fields
.field context:Lorg/apache/velocity/context/Context;

.field icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

.field iec:Lorg/apache/velocity/context/InternalEventContext;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/context/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->iec:Lorg/apache/velocity/context/InternalEventContext;

    iput-object p1, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->context:Lorg/apache/velocity/context/Context;

    instance-of v0, p1, Lorg/apache/velocity/context/InternalHousekeepingContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/velocity/context/InternalContextBase;

    invoke-direct {v0}, Lorg/apache/velocity/context/InternalContextBase;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    goto :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/velocity/context/InternalHousekeepingContext;

    goto :goto_0

    :goto_1
    instance-of p1, p1, Lorg/apache/velocity/context/InternalEventContext;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->context:Lorg/apache/velocity/context/Context;

    check-cast p1, Lorg/apache/velocity/context/InternalEventContext;

    iput-object p1, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->iec:Lorg/apache/velocity/context/InternalEventContext;

    :cond_1
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->context:Lorg/apache/velocity/context/Context;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/Context;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->context:Lorg/apache/velocity/context/Context;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentMacroCallDepth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->getCurrentMacroCallDepth()I

    move-result v0

    return v0
.end method

.method public getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->iec:Lorg/apache/velocity/context/InternalEventContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalEventContext;->getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacroLibraries()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->getMacroLibraries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMacroNameStack()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->getMacroNameStack()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateNameStack()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->getTemplateNameStack()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/InternalHousekeepingContext;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    move-result-object p1

    return-object p1
.end method

.method public icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/velocity/context/InternalHousekeepingContext;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V

    return-void
.end method

.method public popCurrentMacroName()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->popCurrentMacroName()V

    return-void
.end method

.method public popCurrentTemplateName()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0}, Lorg/apache/velocity/context/InternalHousekeepingContext;->popCurrentTemplateName()V

    return-void
.end method

.method public pushCurrentMacroName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/InternalHousekeepingContext;->pushCurrentMacroName(Ljava/lang/String;)V

    return-void
.end method

.method public pushCurrentTemplateName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/InternalHousekeepingContext;->pushCurrentTemplateName(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->context:Lorg/apache/velocity/context/Context;

    invoke-interface {v0, p1, p2}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->context:Lorg/apache/velocity/context/Context;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/InternalHousekeepingContext;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    return-void
.end method

.method public setMacroLibraries(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/context/InternalContextAdapterImpl;->icb:Lorg/apache/velocity/context/InternalHousekeepingContext;

    invoke-interface {v0, p1}, Lorg/apache/velocity/context/InternalHousekeepingContext;->setMacroLibraries(Ljava/util/List;)V

    return-void
.end method
