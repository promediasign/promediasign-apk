.class Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/logging/MdcInjectionFilter;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;->this$0:Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
