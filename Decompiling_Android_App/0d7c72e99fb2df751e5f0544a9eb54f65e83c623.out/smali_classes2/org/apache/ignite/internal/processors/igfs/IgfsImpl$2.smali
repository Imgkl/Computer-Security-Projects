.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->globalSpace()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;->call()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 406
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V

    invoke-interface {v1, v2, v4}, Lorg/apache/ignite/IgniteCompute;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 409
    .local v0, "space":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;-><init>(JJ)V

    return-object v2
.end method
