.class synthetic Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;
.super Ljava/lang/Object;
.source "CacheContinuousQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javax$cache$event$EventType:[I

.field static final synthetic $SwitchMap$org$apache$ignite$cache$CacheMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 637
    invoke-static {}, Ljavax/cache/event/EventType;->values()[Ljavax/cache/event/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    sget-object v1, Ljavax/cache/event/EventType;->CREATED:Ljavax/cache/event/EventType;

    invoke-virtual {v1}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    sget-object v1, Ljavax/cache/event/EventType;->UPDATED:Ljavax/cache/event/EventType;

    invoke-virtual {v1}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    sget-object v1, Ljavax/cache/event/EventType;->REMOVED:Ljavax/cache/event/EventType;

    invoke-virtual {v1}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    sget-object v1, Ljavax/cache/event/EventType;->EXPIRED:Ljavax/cache/event/EventType;

    invoke-virtual {v1}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    .line 376
    :goto_3
    invoke-static {}, Lorg/apache/ignite/cache/CacheMode;->values()[Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    :try_start_4
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    .line 637
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
