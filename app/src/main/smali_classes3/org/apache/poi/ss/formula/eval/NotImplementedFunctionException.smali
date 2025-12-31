.class public final Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;
.super Lorg/apache/poi/ss/formula/eval/NotImplementedException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x10c41a3434246b11L


# instance fields
.field private functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;->functionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;->functionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFunctionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;->functionName:Ljava/lang/String;

    return-object v0
.end method
