.class Lorg/apache/velocity/util/introspection/MethodMap$Match;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/util/introspection/MethodMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Match"
.end annotation


# instance fields
.field applicability:I

.field method:Ljava/lang/reflect/Method;

.field methodTypes:[Ljava/lang/Class;

.field specificity:I

.field final synthetic this$0:Lorg/apache/velocity/util/introspection/MethodMap;

.field varargs:Z


# direct methods
.method public constructor <init>(Lorg/apache/velocity/util/introspection/MethodMap;Ljava/lang/reflect/Method;I[Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->this$0:Lorg/apache/velocity/util/introspection/MethodMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->method:Ljava/lang/reflect/Method;

    iput p3, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->applicability:I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->methodTypes:[Ljava/lang/Class;

    invoke-static {p1, p2, p4}, Lorg/apache/velocity/util/introspection/MethodMap;->access$000(Lorg/apache/velocity/util/introspection/MethodMap;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->specificity:I

    iget-object p1, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->methodTypes:[Ljava/lang/Class;

    array-length p2, p1

    if-lez p2, :cond_0

    array-length p2, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lorg/apache/velocity/util/introspection/MethodMap$Match;->varargs:Z

    return-void
.end method
