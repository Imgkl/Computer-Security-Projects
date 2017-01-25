.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;
.super Ljava/lang/Object;
.source "CacheContinuousQueryManager.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeQuery0(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljavax/cache/event/CacheEntryEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

.field final synthetic val$it:Ljava/util/Iterator;

.field final synthetic val$rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljava/util/Iterator;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->val$it:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->val$rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/event/CacheEntryEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;)V

    return-object v0
.end method
