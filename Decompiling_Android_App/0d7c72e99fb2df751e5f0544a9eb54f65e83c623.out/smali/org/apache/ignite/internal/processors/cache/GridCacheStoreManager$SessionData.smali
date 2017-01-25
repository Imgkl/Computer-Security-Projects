.class Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
.super Ljava/lang/Object;
.source "GridCacheStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionData"
.end annotation


# instance fields
.field private cacheName:Ljava/lang/String;

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/String;)V
    .locals 0
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 886
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->cacheName:Ljava/lang/String;

    .line 887
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;

    .prologue
    .line 868
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->cacheName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;)Lorg/apache/ignite/transactions/Transaction;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .prologue
    .line 868
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .prologue
    .line 868
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->properties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .prologue
    .line 868
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->cacheName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method private cacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 917
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->cacheName:Ljava/lang/String;

    .line 918
    return-void
.end method

.method private properties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->props:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->props:Ljava/util/Map;

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->props:Ljava/util/Map;

    return-object v0
.end method

.method private transaction()Lorg/apache/ignite/transactions/Transaction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    const-string/jumbo v1, "tx"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
