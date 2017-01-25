.class Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;
.super Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;
.source "GridEmbeddedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture",
        "<TA;TB;>.A",
        "L2;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;)V
    .locals 2

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v0, p1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;)V

    return-void
.end method


# virtual methods
.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3.1;"
    .local p1, "next":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;"
    const/4 v5, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c2:Lorg/apache/ignite/lang/IgniteBiClosure;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c2:Lorg/apache/ignite/lang/IgniteBiClosure;

    invoke-interface {v1, v5, v0}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 171
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->val$c2:Lorg/apache/ignite/lang/IgniteBiClosure;

    invoke-interface {v1, v5, v0}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$3;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 179
    throw v0

    .line 171
    .end local v0    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v0

    goto :goto_1
.end method
