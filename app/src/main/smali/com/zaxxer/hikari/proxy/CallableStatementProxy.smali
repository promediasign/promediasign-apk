.class public abstract Lcom/zaxxer/hikari/proxy/CallableStatementProxy;
.super Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;
.source "SourceFile"

# interfaces
.implements Ljava/sql/CallableStatement;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zaxxer/hikari/proxy/PreparedStatementProxy;-><init>(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)V

    return-void
.end method
