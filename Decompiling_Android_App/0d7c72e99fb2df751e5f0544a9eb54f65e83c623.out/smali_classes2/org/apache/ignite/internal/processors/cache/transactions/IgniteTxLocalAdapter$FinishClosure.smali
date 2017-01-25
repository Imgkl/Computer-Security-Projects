.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;
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
    name = "FinishClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiClosure",
        "<TT;",
        "Ljava/lang/Exception;",
        "TT;>;"
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
    .line 3610
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3616
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 3619
    .local v1, "rollback":Z
    if-eqz p2, :cond_1

    .line 3620
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v2, p2}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3632
    :catch_0
    move-exception v0

    .line 3633
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3636
    .end local v0    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 3637
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    :cond_0
    throw v2

    .line 3622
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->finish(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3625
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3626
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commit()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3628
    :cond_2
    const/4 v1, 0x0

    .line 3636
    if-eqz v1, :cond_3

    .line 3637
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    :cond_3
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3610
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<TT;>;"
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract finish(Ljava/lang/Object;)Ljava/lang/Object;
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
