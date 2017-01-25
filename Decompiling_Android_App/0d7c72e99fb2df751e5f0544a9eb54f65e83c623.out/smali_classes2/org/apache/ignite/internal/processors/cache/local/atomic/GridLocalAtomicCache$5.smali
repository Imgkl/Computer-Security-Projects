.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "GridLocalAtomicCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/util/Map",
        "<TK;",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;>;>;",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 720
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)V
    .locals 0

    .prologue
    .line 720
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

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
    .line 720
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.5;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;)",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.5;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;>;"
    const/4 v1, 0x0

    .line 723
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 725
    .local v0, "resMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    if-eqz v0, :cond_1

    .line 726
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 728
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    :cond_1
    :goto_0
    return-object v1

    .line 728
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/processor/EntryProcessorResult;

    goto :goto_0
.end method
