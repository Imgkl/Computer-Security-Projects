.class Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;
.super Ljava/lang/Object;
.source "GridCompoundFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)V
    .locals 0

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>.Listener;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture$1;

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>.Listener;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;-><init>(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>.Listener;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>.Listener;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    const/4 v7, 0x0

    .line 301
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$100(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 304
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v1

    .line 307
    .local v1, "t":Ljava/lang/Object;, "TT;"
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$200(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$200(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/ignite/lang/IgniteReducer;->collect(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$300(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicMarkableReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$300(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicMarkableReference;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$200(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_5

    .line 354
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$600(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 356
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$700(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)V

    .line 357
    return-void

    .line 310
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute compound future reducer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 314
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v0

    .line 326
    .local v0, "e":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$400(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v0    # "e":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/AssertionError;
    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute compound future reducer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 320
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 322
    throw v0
    :try_end_3
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_7

    .line 328
    .end local v0    # "e":Ljava/lang/AssertionError;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_3
    move-exception v0

    .line 329
    .local v0, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$400(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    .end local v0    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_4
    move-exception v0

    .line 332
    .local v0, "e":Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$400(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;
    :catch_5
    move-exception v0

    .line 335
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$500(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute compound future reducer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 338
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$400(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 340
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_6
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute compound future reducer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 343
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->access$400(Lorg/apache/ignite/internal/util/future/GridCompoundFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 345
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/AssertionError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute compound future reducer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 349
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 351
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<TT;TR;>.Listener;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compound future listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture$Listener;->this$0:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
