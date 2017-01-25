.class final Lorg/apache/ignite/internal/util/IgniteUtils$10;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->exceptionConverters()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/IgniteCheckedException;",
        "Lorg/apache/ignite/IgniteException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 601
    check-cast p1, Lorg/apache/ignite/IgniteCheckedException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils$10;->apply(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 603
    new-instance v0, Lorg/apache/ignite/transactions/TransactionRollbackException;

    invoke-virtual {p1}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/transactions/TransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
