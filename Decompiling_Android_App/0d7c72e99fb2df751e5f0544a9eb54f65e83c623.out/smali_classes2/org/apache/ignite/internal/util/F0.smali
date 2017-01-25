.class public Lorg/apache/ignite/internal/util/F0;
.super Ljava/lang/Object;
.source "F0.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/F0;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and(Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 8
    .param p0    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    .local p1, "ps":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 359
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    .line 392
    .end local p0    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :goto_0
    return-object v6

    .line 361
    .restart local p0    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    goto :goto_0

    .line 367
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v6}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p1}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 368
    sget-boolean v6, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez p1, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 370
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 372
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    .line 373
    .local v5, "p0":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v5, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v5    # "p0":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v4

    .line 375
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 376
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 372
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 381
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_5
    check-cast p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local p0    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v4

    .line 383
    .restart local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 384
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 389
    :goto_3
    new-instance v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v6, v2}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 386
    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 392
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v3    # "len$":I
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local p0    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_7
    new-instance v6, Lorg/apache/ignite/internal/util/F0$8;

    invoke-direct {v6, p1, p0}, Lorg/apache/ignite/internal/util/F0$8;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto/16 :goto_0
.end method

.method public static varargs and([Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 10
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "p1":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    .local p1, "p2":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 269
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 270
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    .line 316
    :goto_0
    return-object v7

    .line 272
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 273
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 275
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 276
    .local v1, "e1":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    .line 278
    .local v2, "e2":Z
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 279
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 281
    :cond_3
    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    .line 282
    sget-boolean v7, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-nez p1, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 284
    :cond_4
    array-length v7, p1

    if-ne v7, v9, :cond_5

    .line 285
    aget-object v7, p1, v8

    goto :goto_0

    .line 288
    :cond_5
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 289
    sget-boolean v7, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    if-nez p0, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 291
    :cond_6
    array-length v7, p0

    if-ne v7, v9, :cond_7

    .line 292
    aget-object v7, p0, v8

    goto :goto_0

    .line 295
    :cond_7
    if-nez v1, :cond_8

    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_8
    if-nez v2, :cond_9

    invoke-static {p1}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 296
    :cond_9
    new-instance v4, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 298
    .local v4, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-nez v1, :cond_b

    .line 299
    sget-boolean v7, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v7, :cond_a

    if-nez p0, :cond_a

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 301
    :cond_a
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_b

    aget-object v6, v0, v3

    .line 302
    .local v6, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 305
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_b
    if-nez v2, :cond_d

    .line 306
    sget-boolean v7, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p1, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 308
    :cond_c
    move-object v0, p1

    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v5, :cond_d

    aget-object v6, v0, v3

    .line 309
    .restart local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 313
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_d
    new-instance v7, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v7, v4}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 316
    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_e
    new-instance v7, Lorg/apache/ignite/internal/util/F0$7;

    invoke-direct {v7, v1, p0, v2, p1}, Lorg/apache/ignite/internal/util/F0$7;-><init>(Z[Lorg/apache/ignite/lang/IgnitePredicate;Z[Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto/16 :goto_0
.end method

.method public static varargs and0(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 2
    .param p0, "p"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "ps"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 204
    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysTrue0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 207
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysFalse0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysTrue0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v1, Lorg/apache/ignite/internal/util/F0$6;

    invoke-direct {v1, p1, p0}, Lorg/apache/ignite/internal/util/F0$6;-><init>([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    goto :goto_0
.end method

.method public static varargs and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 5
    .param p0, "p1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "p2"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isAlwaysFalse0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isAlwaysFalse0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysFalse0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    .line 141
    :goto_0
    return-object v2

    .line 118
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isAlwaysTrue0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isAlwaysTrue0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysTrue0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    .line 122
    .local v0, "e1":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 124
    .local v1, "e2":Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 125
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysTrue0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_3
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 128
    sget-boolean v2, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 130
    :cond_4
    array-length v2, p1

    if-ne v2, v4, :cond_5

    .line 131
    aget-object v2, p1, v3

    goto :goto_0

    .line 134
    :cond_5
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    .line 135
    sget-boolean v2, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez p0, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 137
    :cond_6
    array-length v2, p0

    if-ne v2, v4, :cond_7

    .line 138
    aget-object v2, p0, v3

    goto :goto_0

    .line 141
    :cond_7
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v3, Lorg/apache/ignite/internal/util/F0$5;

    invoke-direct {v3, v0, p0, v1, p1}, Lorg/apache/ignite/internal/util/F0$5;-><init>(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    goto :goto_0
.end method

.method public static asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "val"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/F0$10;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$10;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/F0$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$4;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static in(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/F0$9;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$9;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static isAllNodePredicates(Ljava/lang/Iterable;)Z
    .locals 4
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "ps":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/lang/IgnitePredicate<*>;>;"
    const/4 v2, 0x0

    .line 470
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    :goto_0
    return v2

    .line 473
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 475
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgnitePredicate;

    .line 476
    .local v1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<*>;"
    instance-of v3, v1, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    if-nez v3, :cond_2

    goto :goto_0

    .line 479
    .end local v1    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<*>;"
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static varargs isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 6
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "ps":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<*>;"
    const/4 v4, 0x0

    .line 489
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v4

    .line 492
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/util/F0;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez p0, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 494
    :cond_2
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 495
    .local v3, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<*>;"
    instance-of v5, v3, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    if-eqz v5, :cond_0

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<*>;"
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static varargs not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/F0$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$1;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public static notContains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/F0$11;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$11;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/F0$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/F0$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/F0$3;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
