.class Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;
.super Ljava/lang/Object;
.source "GridNioEmbeddedFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->onDone(Lorg/apache/ignite/internal/util/nio/GridNioFuture;Ljava/lang/Throwable;)V
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
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;)V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture.1;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
