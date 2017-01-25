.class Ljavax/cache/Caching$CachingProviderRegistry$1;
.super Ljava/lang/Object;
.source "Caching.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljavax/cache/spi/CachingProvider;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/cache/Caching$CachingProviderRegistry;

.field final synthetic val$serviceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljavax/cache/Caching$CachingProviderRegistry;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Ljavax/cache/Caching$CachingProviderRegistry$1;->this$0:Ljavax/cache/Caching$CachingProviderRegistry;

    iput-object p2, p0, Ljavax/cache/Caching$CachingProviderRegistry$1;->val$serviceClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Ljavax/cache/Caching$CachingProviderRegistry$1;->run()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/cache/spi/CachingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 437
    .local v2, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    const-class v4, Ljavax/cache/spi/CachingProvider;

    iget-object v5, p0, Ljavax/cache/Caching$CachingProviderRegistry$1;->val$serviceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v3

    .line 438
    .local v3, "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljavax/cache/spi/CachingProvider;>;"
    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/spi/CachingProvider;

    .line 439
    .local v1, "provider":Ljavax/cache/spi/CachingProvider;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 441
    .end local v1    # "provider":Ljavax/cache/spi/CachingProvider;
    :cond_0
    return-object v2
.end method
