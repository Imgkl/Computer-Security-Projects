.class Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;
.super Ljava/lang/Object;
.source "VisorCacheClearTask.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;-><init>(Ljava/lang/String;Z)V
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
        "Lorg/apache/ignite/lang/IgniteFuture",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lorg/apache/ignite/lang/IgniteFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->apply(Lorg/apache/ignite/lang/IgniteFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/lang/IgniteFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "f":Lorg/apache/ignite/lang/IgniteFuture;, "Lorg/apache/ignite/lang/IgniteFuture<Ljava/lang/Integer;>;"
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 75
    sget-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->access$100(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)[Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->access$100(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)[Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->access$100(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)[Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->access$100(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)[Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->access$100(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)[Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;->this$0:Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->access$200(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobContext;->callcc()V

    .line 80
    return-void
.end method
