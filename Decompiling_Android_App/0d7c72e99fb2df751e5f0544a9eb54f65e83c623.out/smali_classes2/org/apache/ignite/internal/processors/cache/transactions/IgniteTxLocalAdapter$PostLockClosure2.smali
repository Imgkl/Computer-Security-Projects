.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;
.super Ljava/lang/Object;
.source "IgniteTxLocalAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PostLockClosure2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiClosure",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V
    .locals 0

    .prologue
    .line 3523
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3523
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2<TT;>;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "locked"    # Ljava/lang/Boolean;
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3529
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2<TT;>;"
    const/4 v2, 0x1

    .line 3532
    .local v2, "rollback":Z
    if-eqz p2, :cond_1

    .line 3533
    :try_start_0
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v3, p2}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3545
    :catch_0
    move-exception v0

    .line 3546
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3549
    .end local v0    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 3550
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    :cond_0
    throw v3

    .line 3535
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3536
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    new-instance v4, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to acquire lock within provided timeout for transaction [timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->timeout()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3539
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;->postLock()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 3541
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    const/4 v2, 0x0

    .line 3549
    if-eqz v2, :cond_3

    .line 3550
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    :cond_3
    return-object v1
.end method

.method protected abstract postLock()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
