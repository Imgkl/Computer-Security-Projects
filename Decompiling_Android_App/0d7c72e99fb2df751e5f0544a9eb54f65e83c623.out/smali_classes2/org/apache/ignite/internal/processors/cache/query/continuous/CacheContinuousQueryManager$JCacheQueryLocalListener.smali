.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;
.super Ljava/lang/Object;
.source "CacheContinuousQueryManager.java"

# interfaces
.implements Ljavax/cache/event/CacheEntryUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JCacheQueryLocalListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/event/CacheEntryUpdatedListener",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final impl:Ljavax/cache/event/CacheEntryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/event/CacheEntryListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 614
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavax/cache/event/CacheEntryListener;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/event/CacheEntryListener",
            "<TK;TV;>;",
            "Lorg/apache/ignite/IgniteLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener<TK;TV;>;"
    .local p1, "impl":Ljavax/cache/event/CacheEntryListener;, "Ljavax/cache/event/CacheEntryListener<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 626
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 628
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    .line 630
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->log:Lorg/apache/ignite/IgniteLogger;

    .line 631
    return-void
.end method

.method private singleton(Ljavax/cache/event/CacheEntryEvent;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener<TK;TV;>;"
    .local p1, "evt":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 685
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 687
    .local v0, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 689
    return-object v0
.end method


# virtual methods
.method public onUpdated(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener<TK;TV;>;"
    .local p1, "evts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/event/CacheEntryEvent;

    .line 637
    .local v1, "evt":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;"
    :try_start_0
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    invoke-virtual {v1}, Ljavax/cache/event/CacheEntryEvent;->getEventType()Ljavax/cache/event/EventType;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 667
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/cache/event/CacheEntryEvent;->getEventType()Ljavax/cache/event/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CacheEntryListener failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    instance-of v3, v3, Ljavax/cache/event/CacheEntryCreatedListener;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 641
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    check-cast v3, Ljavax/cache/event/CacheEntryCreatedListener;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->singleton(Ljavax/cache/event/CacheEntryEvent;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/cache/event/CacheEntryCreatedListener;->onCreated(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 646
    :pswitch_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    instance-of v3, v3, Ljavax/cache/event/CacheEntryUpdatedListener;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 648
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    check-cast v3, Ljavax/cache/event/CacheEntryUpdatedListener;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->singleton(Ljavax/cache/event/CacheEntryEvent;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/cache/event/CacheEntryUpdatedListener;->onUpdated(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .line 653
    :pswitch_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    instance-of v3, v3, Ljavax/cache/event/CacheEntryRemovedListener;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 655
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    check-cast v3, Ljavax/cache/event/CacheEntryRemovedListener;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->singleton(Ljavax/cache/event/CacheEntryEvent;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/cache/event/CacheEntryRemovedListener;->onRemoved(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .line 660
    :pswitch_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    instance-of v3, v3, Ljavax/cache/event/CacheEntryExpiredListener;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 662
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->impl:Ljavax/cache/event/CacheEntryListener;

    check-cast v3, Ljavax/cache/event/CacheEntryExpiredListener;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;->singleton(Ljavax/cache/event/CacheEntryEvent;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/cache/event/CacheEntryExpiredListener;->onExpired(Ljava/lang/Iterable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 674
    .end local v1    # "evt":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;"
    :cond_4
    return-void

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
