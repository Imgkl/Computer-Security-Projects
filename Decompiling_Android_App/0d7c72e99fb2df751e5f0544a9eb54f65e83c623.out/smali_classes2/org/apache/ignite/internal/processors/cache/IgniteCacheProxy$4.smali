.class Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;
.super Ljava/lang/Object;
.source "IgniteCacheProxy.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->loadAll(Ljava/util/Set;ZLjavax/cache/integration/CompletionListener;)V
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
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

.field final synthetic val$completionLsnr:Ljavax/cache/integration/CompletionListener;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Ljavax/cache/integration/CompletionListener;)V
    .locals 0

    .prologue
    .line 727
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;->this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;->val$completionLsnr:Ljavax/cache/integration/CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 727
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.4;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.4;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 732
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;->val$completionLsnr:Ljavax/cache/integration/CompletionListener;

    invoke-interface {v1}, Ljavax/cache/integration/CompletionListener;->onCompletion()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;->val$completionLsnr:Ljavax/cache/integration/CompletionListener;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;->this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->access$100(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/cache/integration/CompletionListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
