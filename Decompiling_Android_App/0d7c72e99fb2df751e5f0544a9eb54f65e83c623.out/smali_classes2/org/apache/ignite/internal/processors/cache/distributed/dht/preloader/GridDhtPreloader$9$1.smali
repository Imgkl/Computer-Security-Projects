.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9$1;
.super Ljava/lang/Object;
.source "GridDhtPreloader.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;)V
    .locals 0

    .prologue
    .line 505
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->init()V

    .line 508
    return-void
.end method
