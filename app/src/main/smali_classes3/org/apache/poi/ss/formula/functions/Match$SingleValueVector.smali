.class final Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Match;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleValueVector"
.end annotation


# instance fields
.field private final _value:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    const-string v1, "Invalid index ("

    .line 9
    .line 10
    const-string v2, ") only zero is allowed"

    .line 11
    .line 12
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
