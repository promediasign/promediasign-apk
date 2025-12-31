.class public Lorg/h2/tools/SimpleResultSet$SimpleArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Array;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/SimpleResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleArray"
.end annotation


# instance fields
.field private final value:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/tools/SimpleResultSet$SimpleArray;->value:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    return-void
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet$SimpleArray;->value:[Ljava/lang/Object;

    return-object v0
.end method

.method public getArray(JI)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(JILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBaseType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 1

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet(JI)Ljava/sql/ResultSet;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getResultSet(JILjava/util/Map;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getResultSet(Ljava/util/Map;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
