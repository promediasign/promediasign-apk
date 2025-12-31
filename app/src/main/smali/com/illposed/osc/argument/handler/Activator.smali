.class public abstract Lcom/illposed/osc/argument/handler/Activator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final TYPES_STATIC_COMMON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/illposed/osc/argument/handler/Activator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/argument/handler/Activator;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/illposed/osc/argument/handler/BlobArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/BooleanFalseArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/CharArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/ColorArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/DoubleArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/FloatArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/ImpulseArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/IntegerArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/LongArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/MidiMessageArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/NullArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/TimeTag64ArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/UnsignedIntegerArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/argument/handler/Activator;->TYPES_STATIC_COMMON:Ljava/util/List;

    return-void
.end method

.method public static createParserTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/illposed/osc/argument/handler/Activator;->TYPES_STATIC_COMMON:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-interface {v2}, Lcom/illposed/osc/argument/ArgumentHandler;->getDefaultIdentifier()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    invoke-direct {v1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;-><init>()V

    invoke-virtual {v1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->getDefaultIdentifier()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;

    invoke-direct {v1}, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;-><init>()V

    invoke-virtual {v1}, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->getDefaultIdentifier()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createSerializerTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/illposed/osc/argument/handler/Activator;->TYPES_STATIC_COMMON:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    invoke-direct {v1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;

    invoke-direct {v1}, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/illposed/osc/argument/handler/ColorArgumentHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".AwtColorArgumentHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/illposed/osc/argument/handler/Activator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :goto_0
    sget-object v2, Lcom/illposed/osc/argument/handler/Activator;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Failed to add AWT Color serializer"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v2, Lcom/illposed/osc/argument/handler/Activator;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Not supporting AWT color serialization"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sget-object v1, Lcom/illposed/osc/argument/handler/ByteArrayBlobArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
