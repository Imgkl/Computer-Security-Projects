.class final Lorg/apache/ignite/internal/util/F0$5;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "F0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$e1:Z

.field final synthetic val$e2:Z

.field final synthetic val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-class v0, Lorg/apache/ignite/internal/util/F0;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/F0$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/F0$5;->val$e1:Z

    iput-object p2, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/util/F0$5;->val$e2:Z

    iput-object p4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/F0$5;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    const/4 v4, 0x0

    .line 143
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/F0$5;->val$e1:Z

    if-nez v5, :cond_3

    .line 144
    sget-boolean v5, Lorg/apache/ignite/internal/util/F0$5;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 147
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 159
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    :goto_1
    return v4

    .line 146
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_3
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/F0$5;->val$e2:Z

    if-nez v5, :cond_6

    .line 152
    sget-boolean v5, Lorg/apache/ignite/internal/util/F0$5;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v5, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 154
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 155
    .restart local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_6
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public entryLocked(Z)V
    .locals 5
    .param p1, "locked"    # Z

    .prologue
    .line 163
    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v4, :cond_1

    .line 164
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 165
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v4, :cond_3

    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 172
    .restart local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_2

    .line 173
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 171
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
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
    .line 179
    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$e1:Z

    if-nez v4, :cond_1

    .line 180
    sget-boolean v4, Lorg/apache/ignite/internal/util/F0$5;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p1:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 183
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$e2:Z

    if-nez v4, :cond_3

    .line 187
    sget-boolean v4, Lorg/apache/ignite/internal/util/F0$5;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 189
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$5;->val$p2:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 190
    .restart local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_3
    return-void
.end method
