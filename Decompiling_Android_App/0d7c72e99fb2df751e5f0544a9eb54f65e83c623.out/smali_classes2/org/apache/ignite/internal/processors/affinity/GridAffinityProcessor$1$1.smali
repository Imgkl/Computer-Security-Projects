.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridAffinityProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->onEvent(Lorg/apache/ignite/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;

.field final synthetic val$rmv:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;Lorg/apache/ignite/lang/IgniteUuid;JLjava/util/Collection;)V
    .locals 1
    .param p2, "x0"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x1"    # J

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;->this$1:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;->val$rmv:Ljava/util/Collection;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(Lorg/apache/ignite/lang/IgniteUuid;J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;->this$1:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1$1;->val$rmv:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 96
    return-void
.end method
