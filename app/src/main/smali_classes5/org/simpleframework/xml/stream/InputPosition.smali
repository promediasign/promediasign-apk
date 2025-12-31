.class Lorg/simpleframework/xml/stream/InputPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/Position;


# instance fields
.field private source:Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/EventNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputPosition;->source:Lorg/simpleframework/xml/stream/EventNode;

    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputPosition;->source:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getLine()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputPosition;->getLine()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "line "

    .line 6
    .line 7
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
