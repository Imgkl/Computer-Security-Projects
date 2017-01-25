.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;
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
    name = "PostLockClosure1"
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
.field private arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private commit:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 3424
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1<TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;Z)V

    .line 3425
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;Z)V
    .locals 0
    .param p3, "commit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 3433
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1<TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3434
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->arg:Ljava/lang/Object;

    .line 3435
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->commit:Z

    .line 3436
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1<TT;>;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

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
    .line 3440
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1<TT;>;"
    if-eqz p2, :cond_2

    .line 3441
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 3443
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->commit:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAfterLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3444
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$1;

    invoke-direct {v4, p0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;Ljava/lang/Exception;)V

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    .line 3504
    :cond_0
    :goto_0
    return-object v3

    .line 3450
    :cond_1
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v3, p2}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3453
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3454
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 3456
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    new-instance v3, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to acquire lock within provided timeout for transaction [timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->timeout()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    .line 3460
    .local v0, "ex":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->commit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAfterLock()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3461
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$2;

    invoke-direct {v4, p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$2;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;Lorg/apache/ignite/internal/util/lang/GridClosureException;)V

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0

    .line 3467
    :cond_3
    throw v0

    .line 3470
    .end local v0    # "ex":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :cond_4
    const/4 v2, 0x1

    .line 3473
    .local v2, "rollback":Z
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->arg:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->postLock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3476
    .local v1, "r":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->commit:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAfterLock()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3477
    const/4 v2, 0x0

    .line 3479
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$3;

    invoke-direct {v4, p0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$3;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3503
    if-eqz v2, :cond_0

    .line 3504
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    goto/16 :goto_0

    .line 3488
    :cond_5
    const/4 v2, 0x0

    .line 3490
    :try_start_1
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3503
    if-eqz v2, :cond_0

    .line 3504
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    goto/16 :goto_0

    .line 3492
    .end local v1    # "r":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 3493
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->commit:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAfterLock()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3494
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$4;

    invoke-direct {v4, p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1$4;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;Lorg/apache/ignite/IgniteCheckedException;)V

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 3503
    if-eqz v2, :cond_0

    .line 3504
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    goto/16 :goto_0

    .line 3500
    :cond_6
    :try_start_3
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3503
    .end local v0    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_7

    .line 3504
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    :cond_7
    throw v3
.end method

.method protected abstract postLock(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
