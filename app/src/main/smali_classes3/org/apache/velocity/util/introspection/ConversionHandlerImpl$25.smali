.class Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->getNeededConverter(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;

.field final synthetic val$formal:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$25;->this$0:Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$25;->val$formal:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$25;->val$formal:Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
