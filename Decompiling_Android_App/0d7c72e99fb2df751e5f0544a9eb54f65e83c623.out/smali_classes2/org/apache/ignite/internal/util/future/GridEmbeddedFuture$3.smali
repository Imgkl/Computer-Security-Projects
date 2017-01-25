.class Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;
.super Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL1;
.source "GridEmbeddedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture",
        "<TA;TB;>.A",
        "L1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

.field final synthetic val$c1:Lorg/apache/ignite/lang/IgniteBiClosure;

.field final synthetic val$c2:Lorg/apache/ignite/lang/IgniteBiClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c1:Lorg/apache/ignite/lang/IgniteBiClosure;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c2:Lorg/apache/ignite/lang/IgniteBiClosure;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL1;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;)V

    return-void
.end method


# virtual methods
.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture.3;"
    .local p1, "embedded":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    const/4 v5, 0x0

    .line 153
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c1:Lorg/apache/ignite/lang/IgniteBiClosure;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 155
    .local v1, "next":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;"
    if-nez v1, :cond_0

    .line 156
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone()Z

    .line 199
    .end local v1    # "next":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;"
    :goto_0
    return-void

    .line 161
    .restart local v1    # "next":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;"
    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 184
    .end local v1    # "next":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;"
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c1:Lorg/apache/ignite/lang/IgniteBiClosure;

    invoke-interface {v2, v5, v0}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 189
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c1:Lorg/apache/ignite/lang/IgniteBiClosure;

    invoke-interface {v2, v5, v0}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 197
    throw v0

    .line 189
    .end local v0    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v0

    goto :goto_1
.end method
