.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;
.super Ljava/lang/Object;
.source "IgniteTxManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommitListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

.field private final tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 0
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 2184
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2185
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 2186
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;

    .prologue
    .line 2174
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2174
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2191
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2203
    :goto_0
    return-void

    .line 2193
    :catch_0
    move-exception v1

    .line 2194
    .local v1, "ignore":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$2200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2195
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$2300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Optimistic failure while committing prepared transaction (will rollback): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2198
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_0

    .line 2200
    .end local v1    # "ignore":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    :catch_1
    move-exception v0

    .line 2201
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$2400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to commit transaction during failover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
