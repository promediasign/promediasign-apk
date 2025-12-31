.class public Lorg/apache/poi/EmptyFileException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1552907da373fe66L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The supplied file was empty (zero bytes long)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
