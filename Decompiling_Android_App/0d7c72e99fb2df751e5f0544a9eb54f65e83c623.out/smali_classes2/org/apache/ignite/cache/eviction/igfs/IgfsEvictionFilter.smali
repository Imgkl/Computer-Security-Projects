.class public Lorg/apache/ignite/cache/eviction/igfs/IgfsEvictionFilter;
.super Ljava/lang/Object;
.source "IgfsEvictionFilter.java"

# interfaces
.implements Lorg/apache/ignite/cache/eviction/EvictionFilter;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evictAllowed(Ljavax/cache/Cache$Entry;)Z
    .locals 2
    .param p1, "entry"    # Ljavax/cache/Cache$Entry;

    .prologue
    .line 34
    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "key":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    .end local v0    # "key":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
