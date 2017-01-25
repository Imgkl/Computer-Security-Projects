.class synthetic Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;
.super Ljava/lang/Object;
.source "GridCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

.field static final synthetic $SwitchMap$org$apache$ignite$cache$CacheMemoryMode:[I

.field static final synthetic $SwitchMap$org$apache$ignite$cache$CacheMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1046
    invoke-static {}, Lorg/apache/ignite/cache/CacheMode;->values()[Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 1048
    :goto_2
    invoke-static {}, Lorg/apache/ignite/cache/CacheAtomicityMode;->values()[Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    :try_start_3
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheAtomicityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheAtomicityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 384
    :goto_4
    invoke-static {}, Lorg/apache/ignite/cache/CacheMemoryMode;->values()[Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMemoryMode:[I

    :try_start_5
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMemoryMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMemoryMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMemoryMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMemoryMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMemoryMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMemoryMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 1048
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    .line 1046
    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
