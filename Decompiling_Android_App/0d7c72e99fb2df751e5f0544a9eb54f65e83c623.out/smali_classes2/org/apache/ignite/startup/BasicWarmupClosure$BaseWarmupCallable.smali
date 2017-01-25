.class abstract Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;
.super Ljava/lang/Object;
.source "BasicWarmupClosure.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/startup/BasicWarmupClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseWarmupCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p2, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;->this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 417
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    .line 423
    .local v1, "rnd":Ljava/util/concurrent/ThreadLocalRandom;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;->this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;

    # getter for: Lorg/apache/ignite/startup/BasicWarmupClosure;->iterCnt:I
    invoke-static {v2}, Lorg/apache/ignite/startup/BasicWarmupClosure;->access$700(Lorg/apache/ignite/startup/BasicWarmupClosure;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 424
    iget-object v2, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;->this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;

    # getter for: Lorg/apache/ignite/startup/BasicWarmupClosure;->keyRange:I
    invoke-static {v2}, Lorg/apache/ignite/startup/BasicWarmupClosure;->access$800(Lorg/apache/ignite/startup/BasicWarmupClosure;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;->operation(I)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected abstract operation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
