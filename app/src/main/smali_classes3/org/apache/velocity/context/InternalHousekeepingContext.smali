.class interface abstract Lorg/apache/velocity/context/InternalHousekeepingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentMacroCallDepth()I
.end method

.method public abstract getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;
.end method

.method public abstract getCurrentTemplateName()Ljava/lang/String;
.end method

.method public abstract getMacroLibraries()Ljava/util/List;
.end method

.method public abstract getMacroNameStack()[Ljava/lang/String;
.end method

.method public abstract getTemplateNameStack()[Ljava/lang/String;
.end method

.method public abstract icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;
.end method

.method public abstract icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
.end method

.method public abstract popCurrentMacroName()V
.end method

.method public abstract popCurrentTemplateName()V
.end method

.method public abstract pushCurrentMacroName(Ljava/lang/String;)V
.end method

.method public abstract pushCurrentTemplateName(Ljava/lang/String;)V
.end method

.method public abstract setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V
.end method

.method public abstract setMacroLibraries(Ljava/util/List;)V
.end method
