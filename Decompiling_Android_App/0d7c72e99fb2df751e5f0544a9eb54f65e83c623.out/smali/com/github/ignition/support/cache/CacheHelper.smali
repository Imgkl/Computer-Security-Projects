.class public Lcom/github/ignition/support/cache/CacheHelper;
.super Ljava/lang/Object;
.source "CacheHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "[.:/,%?&=]"

    const-string v1, "+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[+]+"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeAllWithStringPrefix(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
    .locals 4
    .param p1, "urlPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/support/cache/AbstractCache",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "cache":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lcom/github/ignition/support/cache/AbstractCache;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 17
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {p0, v1}, Lcom/github/ignition/support/cache/AbstractCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    invoke-static {p0, p1}, Lcom/github/ignition/support/cache/CacheHelper;->removeExpiredCache(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V

    .line 26
    :cond_2
    return-void
.end method

.method private static removeExpiredCache(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
    .locals 7
    .param p1, "urlPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/support/cache/AbstractCache",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "cache":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<Ljava/lang/String;*>;"
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/ignition/support/cache/AbstractCache;->getDiskCacheDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "cacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 51
    :cond_0
    return-void

    .line 36
    :cond_1
    new-instance v6, Lcom/github/ignition/support/cache/CacheHelper$1;

    invoke-direct {v6, v1, p0, p1}, Lcom/github/ignition/support/cache/CacheHelper$1;-><init>(Ljava/io/File;Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 44
    .local v5, "list":[Ljava/io/File;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-eqz v6, :cond_0

    .line 48
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 49
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
