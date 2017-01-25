.class Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;
.super Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;
.source "BasicWarmupClosure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/startup/BasicWarmupClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemovexCallable"
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
    .line 513
    .local p2, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;->this$0:Lorg/apache/ignite/startup/BasicWarmupClosure;

    .line 514
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;)V

    .line 515
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/startup/BasicWarmupClosure;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCache;
    .param p3, "x2"    # Lorg/apache/ignite/startup/BasicWarmupClosure$1;

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;)V

    return-void
.end method


# virtual methods
.method protected operation(I)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 520
    return-void
.end method
