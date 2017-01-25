.class Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;
.super Ljava/lang/Object;
.source "GridCacheStoreManager.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLocalSession"
.end annotation


# instance fields
.field private final sesHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->sesHolder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;

    .prologue
    .line 929
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;

    .prologue
    .line 929
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->sesHolder:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 955
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .line 957
    .local v0, "ses0":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWithinTransaction()Z
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public properties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 948
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .line 950
    .local v0, "ses0":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transaction()Lorg/apache/ignite/transactions/Transaction;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 935
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .line 937
    .local v0, "ses0":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
