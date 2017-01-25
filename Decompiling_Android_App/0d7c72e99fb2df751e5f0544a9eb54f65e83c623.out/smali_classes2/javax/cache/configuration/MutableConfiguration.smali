.class public Ljavax/cache/configuration/MutableConfiguration;
.super Ljava/lang/Object;
.source "MutableConfiguration.java"

# interfaces
.implements Ljavax/cache/configuration/CompleteConfiguration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/configuration/CompleteConfiguration",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2edec8daf5L


# instance fields
.field protected cacheLoaderFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected cacheWriterFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheWriter",
            "<-TK;-TV;>;>;"
        }
    .end annotation
.end field

.field protected expiryPolicyFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field protected isManagementEnabled:Z

.field protected isReadThrough:Z

.field protected isStatisticsEnabled:Z

.field protected isStoreByValue:Z

.field protected isWriteThrough:Z

.field protected keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field protected listenerConfigurations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    .line 108
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    .line 111
    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    .line 112
    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    .line 113
    invoke-static {}, Ljavax/cache/expiry/EternalExpiryPolicy;->factoryOf()Ljavax/cache/configuration/Factory;

    move-result-object v0

    iput-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    .line 114
    iput-boolean v1, p0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    .line 115
    iput-boolean v1, p0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    .line 116
    iput-boolean v1, p0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    .line 118
    iput-boolean v1, p0, Ljavax/cache/configuration/MutableConfiguration;->isManagementEnabled:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Ljavax/cache/configuration/CompleteConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CompleteConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "configuration":Ljavax/cache/configuration/CompleteConfiguration;, "Ljavax/cache/configuration/CompleteConfiguration<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getKeyType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    .line 130
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getValueType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    .line 132
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    .line 134
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getCacheEntryListenerConfigurations()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    .line 136
    .local v0, "definition":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljavax/cache/configuration/MutableConfiguration;->addCacheEntryListenerConfiguration(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)Ljavax/cache/configuration/MutableConfiguration;

    goto :goto_0

    .line 139
    .end local v0    # "definition":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    :cond_0
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getCacheLoaderFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    .line 140
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getCacheWriterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    .line 142
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    if-nez v2, :cond_1

    .line 143
    invoke-static {}, Ljavax/cache/expiry/EternalExpiryPolicy;->factoryOf()Ljavax/cache/configuration/Factory;

    move-result-object v2

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    .line 148
    :goto_1
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->isReadThrough()Z

    move-result v2

    iput-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    .line 149
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->isWriteThrough()Z

    move-result v2

    iput-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    .line 151
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->isStatisticsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    .line 153
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->isStoreByValue()Z

    move-result v2

    iput-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    .line 155
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->isManagementEnabled()Z

    move-result v2

    iput-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isManagementEnabled:Z

    .line 156
    return-void

    .line 145
    :cond_1
    invoke-interface {p1}, Ljavax/cache/configuration/CompleteConfiguration;->getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    iput-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    goto :goto_1
.end method


# virtual methods
.method public addCacheEntryListenerConfiguration(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)Ljavax/cache/configuration/MutableConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "cacheEntryListenerConfiguration":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    if-nez p1, :cond_0

    .line 224
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "CacheEntryListenerConfiguration can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 228
    .local v0, "alreadyExists":Z
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    .line 229
    .local v1, "c":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<-TK;-TV;>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "c":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<-TK;-TV;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 235
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    return-object p0

    .line 237
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A CacheEntryListenerConfiguration can be registered only once"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    if-ne p0, p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 470
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 471
    goto :goto_0

    .line 473
    :cond_2
    instance-of v3, p1, Ljavax/cache/configuration/MutableConfiguration;

    if-nez v3, :cond_3

    move v1, v2

    .line 474
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 476
    check-cast v0, Ljavax/cache/configuration/MutableConfiguration;

    .line 478
    .local v0, "other":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<**>;"
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    iget-object v4, v0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 479
    goto :goto_0

    .line 481
    :cond_4
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    iget-object v4, v0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 482
    goto :goto_0

    .line 484
    :cond_5
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 485
    goto :goto_0

    .line 487
    :cond_6
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    if-nez v3, :cond_7

    .line 488
    iget-object v3, v0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    if-eqz v3, :cond_8

    move v1, v2

    .line 489
    goto :goto_0

    .line 491
    :cond_7
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    iget-object v4, v0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 492
    goto :goto_0

    .line 494
    :cond_8
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    if-nez v3, :cond_9

    .line 495
    iget-object v3, v0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    if-eqz v3, :cond_a

    move v1, v2

    .line 496
    goto :goto_0

    .line 498
    :cond_9
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    iget-object v4, v0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 499
    goto :goto_0

    .line 501
    :cond_a
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    if-nez v3, :cond_b

    .line 502
    iget-object v3, v0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    if-eqz v3, :cond_c

    move v1, v2

    .line 503
    goto :goto_0

    .line 505
    :cond_b
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    iget-object v4, v0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 506
    goto :goto_0

    .line 508
    :cond_c
    iget-boolean v3, p0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    iget-boolean v4, v0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 509
    goto :goto_0

    .line 511
    :cond_d
    iget-boolean v3, p0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    iget-boolean v4, v0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 512
    goto/16 :goto_0

    .line 514
    :cond_e
    iget-boolean v3, p0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    iget-boolean v4, v0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    if-eq v3, v4, :cond_f

    move v1, v2

    .line 515
    goto/16 :goto_0

    .line 517
    :cond_f
    iget-boolean v3, p0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    iget-boolean v4, v0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 518
    goto/16 :goto_0
.end method

.method public getCacheEntryListenerConfigurations()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCacheLoaderFactory()Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    return-object v0
.end method

.method public getCacheWriterFactory()Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheWriter",
            "<-TK;-TV;>;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    return-object v0
.end method

.method public getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    const/16 v5, 0x4d5

    const/16 v4, 0x4cf

    const/4 v3, 0x0

    .line 441
    const/16 v0, 0x1f

    .line 442
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 443
    .local v1, "result":I
    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 444
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v1, v2, v6

    .line 445
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v6, v2

    .line 449
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 451
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v6, v2

    .line 453
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    if-nez v6, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 455
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    add-int v1, v3, v2

    .line 456
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_5
    add-int v1, v3, v2

    .line 457
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_6
    add-int v1, v3, v2

    .line 458
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    if-eqz v3, :cond_7

    :goto_7
    add-int v1, v2, v4

    .line 459
    return v1

    .line 445
    :cond_0
    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->hashCode()I

    move-result v2

    goto :goto_0

    .line 449
    :cond_1
    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 451
    :cond_2
    iget-object v2, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 453
    :cond_3
    iget-object v3, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_4
    move v2, v5

    .line 455
    goto :goto_4

    :cond_5
    move v2, v5

    .line 456
    goto :goto_5

    :cond_6
    move v2, v5

    .line 457
    goto :goto_6

    :cond_7
    move v4, v5

    .line 458
    goto :goto_7
.end method

.method public isManagementEnabled()Z
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableConfiguration;->isManagementEnabled:Z

    return v0
.end method

.method public isReadThrough()Z
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    return v0
.end method

.method public isStatisticsEnabled()Z
    .locals 1

    .prologue
    .line 396
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    return v0
.end method

.method public isStoreByValue()Z
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    return v0
.end method

.method public isWriteThrough()Z
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    return v0
.end method

.method public removeCacheEntryListenerConfiguration(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)Ljavax/cache/configuration/MutableConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "cacheEntryListenerConfiguration":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    if-nez p1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CacheEntryListenerConfiguration can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 259
    return-object p0
.end method

.method public setCacheLoaderFactory(Ljavax/cache/configuration/Factory;)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;>;)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "factory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/integration/CacheLoader<TK;TV;>;>;"
    iput-object p1, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    .line 279
    return-object p0
.end method

.method public setCacheWriterFactory(Ljavax/cache/configuration/Factory;)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/integration/CacheWriter",
            "<-TK;-TV;>;>;)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "factory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/integration/CacheWriter<-TK;-TV;>;>;"
    iput-object p1, p0, Ljavax/cache/configuration/MutableConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    .line 299
    return-object p0
.end method

.method public setExpiryPolicyFactory(Ljavax/cache/configuration/Factory;)Ljavax/cache/configuration/MutableConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "factory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/expiry/ExpiryPolicy;>;"
    if-nez p1, :cond_0

    .line 319
    invoke-static {}, Ljavax/cache/expiry/EternalExpiryPolicy;->factoryOf()Ljavax/cache/configuration/Factory;

    move-result-object v0

    iput-object v0, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    .line 323
    :goto_0
    return-object p0

    .line 321
    :cond_0
    iput-object p1, p0, Ljavax/cache/configuration/MutableConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    goto :goto_0
.end method

.method public setManagementEnabled(Z)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableConfiguration;->isManagementEnabled:Z

    .line 432
    return-object p0
.end method

.method public setReadThrough(Z)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .param p1, "isReadThrough"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableConfiguration;->isReadThrough:Z

    .line 345
    return-object p0
.end method

.method public setStatisticsEnabled(Z)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableConfiguration;->isStatisticsEnabled:Z

    .line 410
    return-object p0
.end method

.method public setStoreByValue(Z)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .param p1, "isStoreByValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableConfiguration;->isStoreByValue:Z

    .line 388
    return-object p0
.end method

.method public setTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/configuration/MutableConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "keyType and/or valueType can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    iput-object p1, p0, Ljavax/cache/configuration/MutableConfiguration;->keyType:Ljava/lang/Class;

    .line 197
    iput-object p2, p0, Ljavax/cache/configuration/MutableConfiguration;->valueType:Ljava/lang/Class;

    .line 198
    return-object p0
.end method

.method public setWriteThrough(Z)Ljavax/cache/configuration/MutableConfiguration;
    .locals 0
    .param p1, "isWriteThrough"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Ljavax/cache/configuration/MutableConfiguration;, "Ljavax/cache/configuration/MutableConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableConfiguration;->isWriteThrough:Z

    .line 367
    return-object p0
.end method
