.class Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;
.super Ljava/lang/Object;
.source "IgfsInputStreamImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->addLocalCacheFuture(JLorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

.field final synthetic val$evictFut:Lorg/apache/ignite/internal/IgniteInternalFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->val$evictFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 497
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFuts:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->val$evictFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 505
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsCond:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    return-void

    .line 507
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
