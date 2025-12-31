.class final Lorg/apache/poi/ss/formula/functions/TextFunction$2;
.super Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method
