.class public Lsk/mimac/slideshow/config/BackupService$CommentVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/config/BackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentVisitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lorg/simpleframework/xml/stream/OutputNode;

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-class v0, Lsk/mimac/slideshow/config/model/InfoType;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string p1, "Created by Promedia Sign"

    .line 20
    .line 21
    const-string v0, "\n\nBe careful when modifying this XML configuration by hand or when restoring it to a different app version.\nTimestamp: "

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lj$/time/ZonedDateTime;->now()Lj$/time/ZonedDateTime;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p2, p1}, Lorg/simpleframework/xml/stream/OutputNode;->setComment(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
