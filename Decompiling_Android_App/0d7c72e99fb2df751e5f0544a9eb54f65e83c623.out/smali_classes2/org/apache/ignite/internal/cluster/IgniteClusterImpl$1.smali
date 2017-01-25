.class Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;
.super Ljava/lang/Object;
.source "IgniteClusterImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->runNextNodeCallable(Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

.field final synthetic val$cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$comp:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

.field final synthetic val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->this$0:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->val$comp:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    iput-object p4, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->val$cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 491
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->this$0:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->val$comp:Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;->val$cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->access$000(Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 494
    return-void
.end method
