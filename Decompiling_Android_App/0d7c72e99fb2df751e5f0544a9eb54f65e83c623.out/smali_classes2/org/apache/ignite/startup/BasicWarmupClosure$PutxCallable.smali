.class Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;
.super Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;
.source "BasicWarmupClosure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/startup/BasicWarmupClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutxCallable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;)V
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
    .line 479
    .local p2, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;->this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;

    .line 480
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;)V

    .line 481
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/startup/BasicWarmupClosure;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCache;
    .param p3, "x2"    # Lorg/apache/ignite/startup/BasicWarmupClosure$1;

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;)V

    return-void
.end method


# virtual methods
.method protected operation(I)V
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 486
    return-void
.end method
