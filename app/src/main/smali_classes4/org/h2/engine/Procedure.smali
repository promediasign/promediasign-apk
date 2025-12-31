.class public Lorg/h2/engine/Procedure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final name:Ljava/lang/String;

.field private final prepared:Lorg/h2/command/Prepared;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/h2/command/Prepared;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/engine/Procedure;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/h2/engine/Procedure;->prepared:Lorg/h2/command/Prepared;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Procedure;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepared()Lorg/h2/command/Prepared;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Procedure;->prepared:Lorg/h2/command/Prepared;

    return-object v0
.end method
