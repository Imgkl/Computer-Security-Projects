.class Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;
.super Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;
.source "GridEmbeddedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
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
.field final synthetic this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;)V
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;

    iget-object v0, p1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;)V

    return-void
.end method


# virtual methods
.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2.1;"
    .local p1, "next":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TA;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 102
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2$1;->this$1:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$2;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 108
    throw v0

    .line 102
    .end local v0    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v0

    goto :goto_1
.end method
