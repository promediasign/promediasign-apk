.class public interface abstract Lorg/apache/velocity/runtime/RuntimeServices;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Lorg/apache/velocity/Template;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract clearProperty(Ljava/lang/String;)V
.end method

.method public abstract createNewParser()Lorg/apache/velocity/runtime/parser/Parser;
.end method

.method public abstract evaluate(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Ljava/io/Reader;)Z
.end method

.method public abstract evaluate(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getApplicationAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getConfiguration()Lorg/apache/velocity/util/ExtProperties;
.end method

.method public abstract getContent(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;
.end method

.method public abstract getContent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;
.end method

.method public abstract getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLog()Lorg/slf4j/Logger;
.end method

.method public abstract getLog(Ljava/lang/String;)Lorg/slf4j/Logger;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;
.end method

.method public abstract getTemplate(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/Template;
.end method

.method public abstract getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;
.end method

.method public abstract getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;
.end method

.method public abstract init()V
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract init(Ljava/util/Properties;)V
.end method

.method public abstract invokeVelocimacro(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/velocity/context/Context;Ljava/io/Writer;)Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z
.end method

.method public abstract parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.end method

.method public abstract setApplicationAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setConfiguration(Lorg/apache/velocity/util/ExtProperties;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract useStringInterning()Z
.end method
