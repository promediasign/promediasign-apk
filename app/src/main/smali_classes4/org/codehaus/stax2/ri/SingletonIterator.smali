.class public Lorg/codehaus/stax2/ri/SingletonIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private _done:Z

.field private final _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/stax2/ri/SingletonIterator;->_done:Z

    iput-object p1, p0, Lorg/codehaus/stax2/ri/SingletonIterator;->_value:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/codehaus/stax2/ri/SingletonIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/codehaus/stax2/ri/SingletonIterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/codehaus/stax2/ri/SingletonIterator;

    invoke-direct {v0, p0}, Lorg/codehaus/stax2/ri/SingletonIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/SingletonIterator;->_done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/SingletonIterator;->_done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/stax2/ri/SingletonIterator;->_done:Z

    iget-object v0, p0, Lorg/codehaus/stax2/ri/SingletonIterator;->_value:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not remove item from SingletonIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
