.class Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "VisorQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->scheduleResultSetHolderRemoval(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;JLjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->this$0:Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    iput-object p4, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->val$id:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 4

    .prologue
    .line 283
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->this$0:Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    # getter for: Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;
    invoke-static {v2}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->access$000(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;)Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 285
    .local v0, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    .line 287
    .local v1, "t":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<*>;"
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->accessed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->accessed(Ljava/lang/Boolean;)V

    .line 292
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->this$0:Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    iget-object v3, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->val$id:Ljava/lang/String;

    # invokes: Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->scheduleResultSetHolderRemoval(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->access$100(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
