.class final Lorg/apache/ignite/internal/util/F0$6;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "F0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/F0;->and0(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const-class v0, Lorg/apache/ignite/internal/util/F0;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/F0$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 213
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/F0$6;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    const/4 v4, 0x0

    .line 215
    sget-boolean v5, Lorg/apache/ignite/internal/util/F0$6;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 217
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v5, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 225
    :cond_1
    :goto_0
    return v4

    .line 220
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 221
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_3

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public entryLocked(Z)V
    .locals 5
    .param p1, "locked"    # Z

    .prologue
    .line 229
    sget-boolean v4, Lorg/apache/ignite/internal/util/F0$6;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 231
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v4, :cond_1

    .line 232
    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 234
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 235
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_2

    .line 236
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 234
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_3
    return-void
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 241
    sget-boolean v4, Lorg/apache/ignite/internal/util/F0$6;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 243
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v4, :cond_1

    .line 244
    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$6;->val$p:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$6;->val$ps:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 247
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_2

    .line 248
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 246
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_3
    return-void
.end method
