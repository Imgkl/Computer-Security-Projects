.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "IgfsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;->split(ILjava/lang/Object;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private g:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;)V
    .locals 0

    .prologue
    .line 1919
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;

    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 1919
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;->execute()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1925
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;->g:Lorg/apache/ignite/Ignite;

    check-cast v4, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;->igfsName:Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;->access$2800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->igfs(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v0

    .line 1927
    .local v0, "igfs":Lorg/apache/ignite/IgniteFileSystem;
    if-nez v0, :cond_0

    .line 1928
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    .line 1934
    :goto_0
    return-object v4

    .line 1930
    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/IgniteFileSystem;->metrics()Lorg/apache/ignite/igfs/IgfsMetrics;

    move-result-object v1

    .line 1932
    .local v1, "metrics":Lorg/apache/ignite/igfs/IgfsMetrics;
    invoke-interface {v1}, Lorg/apache/ignite/igfs/IgfsMetrics;->localSpaceSize()J

    move-result-wide v2

    .line 1934
    .local v2, "loc":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/ignite/igfs/IgfsMetrics;->maxSpaceSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    goto :goto_0
.end method
