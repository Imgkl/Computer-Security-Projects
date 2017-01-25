.class Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
.super Ljava/lang/Object;
.source "GridCacheTtlManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

.field private final expireTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeUnlocked()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    .line 179
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->compareTo(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .prologue
    .line 186
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 188
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 189
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVersion()J

    move-result-wide v2

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVersion()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 191
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    if-nez v3, :cond_2

    move v1, v2

    .line 200
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 202
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .line 204
    .local v0, "that":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVersion()J

    move-result-wide v4

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVersion()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 210
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 212
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVersion()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVersion()J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 214
    return v0
.end method
