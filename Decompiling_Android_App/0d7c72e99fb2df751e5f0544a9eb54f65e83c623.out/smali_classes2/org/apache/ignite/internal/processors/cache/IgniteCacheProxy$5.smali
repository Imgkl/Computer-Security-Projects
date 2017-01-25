.class Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "IgniteCacheProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)V
    .locals 0

    .prologue
    .line 1097
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;->this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1097
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.5;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.5;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessorResult;

    .line 1102
    .local v0, "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
