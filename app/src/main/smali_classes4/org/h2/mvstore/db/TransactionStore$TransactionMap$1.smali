.class Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;Z)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private cursor:Lorg/h2/mvstore/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/Cursor<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

.field final synthetic val$from:Ljava/lang/Object;

.field final synthetic val$includeUncommitted:Z


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iput-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->val$from:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->val$includeUncommitted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->currentKey:Ljava/lang/Object;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->fetchNext()V

    return-void
.end method

.method private fetchNext()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object v0, v0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->currentKey:Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->val$includeUncommitted:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_4
    throw v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->currentKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->currentKey:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$1;->fetchNext()V

    return-object v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "Removing is not supported"

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
