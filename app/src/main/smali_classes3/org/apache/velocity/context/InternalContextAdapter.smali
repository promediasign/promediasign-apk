.class public interface abstract Lorg/apache/velocity/context/InternalContextAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/context/InternalHousekeepingContext;
.implements Lorg/apache/velocity/context/Context;
.implements Lorg/apache/velocity/context/InternalEventContext;


# virtual methods
.method public abstract synthetic getCurrentMacroCallDepth()I
.end method

.method public abstract synthetic getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;
.end method

.method public abstract synthetic getCurrentTemplateName()Ljava/lang/String;
.end method

.method public abstract synthetic getMacroLibraries()Ljava/util/List;
.end method

.method public abstract synthetic getMacroNameStack()[Ljava/lang/String;
.end method

.method public abstract synthetic getTemplateNameStack()[Ljava/lang/String;
.end method

.method public abstract synthetic icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;
.end method

.method public abstract synthetic icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
.end method

.method public abstract synthetic popCurrentMacroName()V
.end method

.method public abstract synthetic popCurrentTemplateName()V
.end method

.method public abstract synthetic pushCurrentMacroName(Ljava/lang/String;)V
.end method

.method public abstract synthetic pushCurrentTemplateName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setMacroLibraries(Ljava/util/List;)V
.end method
