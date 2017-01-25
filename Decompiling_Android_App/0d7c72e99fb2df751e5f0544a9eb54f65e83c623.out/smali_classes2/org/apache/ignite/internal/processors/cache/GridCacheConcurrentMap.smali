.class public Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.super Ljava/lang/Object;
.source "GridCacheConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeySet;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final DFLT_CONCUR_LEVEL:I = 0x800

.field private static final DFLT_LOAD_FACTOR:F = 0.75f

.field private static final MAX_CAP:I = 0x40000000

.field private static final MAX_SEGS:I = 0x10000

.field private static final NON_INTERNAL:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field public static final NON_INTERNAL_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private static final RAND:Ljava/util/Random;


# instance fields
.field protected final ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private factory:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;

.field private final itMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final itQ:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;",
            ">;"
        }
    .end annotation
.end field

.field private final mapPubSize:Lorg/jsr166/LongAdder8;

.field private final mapSize:Lorg/jsr166/LongAdder8;

.field private final obsolete:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final segMask:I

.field private final segShift:I

.field private final segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->RAND:Ljava/util/Random;

    .line 92
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;-><init>()V

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->NON_INTERNAL:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 100
    new-array v0, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->NON_INTERNAL:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->NON_INTERNAL_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "initCap"    # I

    .prologue
    .line 302
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x800

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IFI)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IF)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F

    .prologue
    .line 288
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IFI)V

    .line 289
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IFI)V
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "concurrencyLevel"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v5, Lorg/jsr166/LongAdder8;

    invoke-direct {v5}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    .line 89
    new-instance v5, Lorg/jsr166/LongAdder8;

    invoke-direct {v5}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;

    .line 103
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$2;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->obsolete:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 111
    new-instance v5, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itQ:Ljava/lang/ref/ReferenceQueue;

    .line 114
    new-instance v5, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v5}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itMap:Ljava/util/Map;

    .line 233
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 235
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-lez v5, :cond_0

    if-ltz p2, :cond_0

    if-gtz p4, :cond_1

    .line 236
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 238
    :cond_1
    const/high16 v5, 0x10000

    if-le p4, v5, :cond_2

    .line 239
    const/high16 p4, 0x10000

    .line 242
    :cond_2
    const/4 v3, 0x0

    .line 243
    .local v3, "sshift":I
    const/4 v4, 0x1

    .line 245
    .local v4, "ssize":I
    :goto_0
    if-ge v4, p4, :cond_3

    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 250
    :cond_3
    rsub-int/lit8 v5, v3, 0x20

    iput v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segShift:I

    .line 251
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segMask:I

    .line 252
    const-class v5, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    check-cast v5, [Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    .line 254
    const/high16 v5, 0x40000000    # 2.0f

    if-le p2, v5, :cond_4

    .line 255
    const/high16 p2, 0x40000000    # 2.0f

    .line 257
    :cond_4
    div-int v0, p2, v4

    .line 259
    .local v0, "c":I
    mul-int v5, v0, v4

    if-ge v5, p2, :cond_5

    .line 260
    add-int/lit8 v0, v0, 0x1

    .line 262
    :cond_5
    const/4 v1, 0x1

    .line 264
    .local v1, "cap":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 265
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_6
    const/16 v5, 0x10

    if-ge v1, v5, :cond_7

    .line 268
    const/16 v1, 0x10

    .line 270
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 271
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    invoke-direct {v6, p0, v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;IF)V

    aput-object v6, v5, v2

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 272
    :cond_8
    return-void
.end method

.method static synthetic access$1000()Ljava/util/Random;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->RAND:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->iteratorQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->addWeakIterator(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Ljava/lang/ref/Reference;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p1, "x1"    # Ljava/lang/ref/Reference;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeWeakIterator(Ljava/lang/ref/Reference;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1
    .param p0, "x0"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 44
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->nonInternal([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->factory:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method private addWeakIterator(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    .locals 2
    .param p1, "itRef"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;
    .param p2, "hdr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .prologue
    .line 163
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 168
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    return-void
.end method

.method private checkWeakQueue()V
    .locals 3

    .prologue
    .line 123
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itQ:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 124
    .local v0, "itRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 125
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeWeakIterator(Ljava/lang/ref/Reference;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v1

    .line 133
    .local v1, "lastSeg":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    .line 124
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itQ:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 136
    .end local v1    # "lastSeg":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    :cond_2
    return-void
.end method

.method protected static hash(I)I
    .locals 1
    .param p0, "h"    # I

    .prologue
    .line 200
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(I)I

    move-result v0

    return v0
.end method

.method private iteratorQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itQ:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static nonInternal()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->NON_INTERNAL_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method private static nonInternal([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 3
    .param p0, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->NON_INTERNAL_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v2, p0}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method private removeWeakIterator(Ljava/lang/ref/Reference;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "itRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 155
    .local v0, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    return-object v0
.end method

.method private same(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p1, "p"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    return-object v0
.end method

.method private segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    .locals 3
    .param p1, "hash"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public allEntries0()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 623
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public allValues([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;
    .locals 2
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 404
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public checkConsistency()V
    .locals 20

    .prologue
    .line 691
    const/4 v15, 0x0

    .line 692
    .local v15, "size":I
    const/4 v12, 0x0

    .line 694
    .local v12, "pubSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v17, v0

    const-class v18, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v10

    .line 696
    .local v10, "log":Lorg/apache/ignite/IgniteLogger;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    .local v1, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v1    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_5

    aget-object v13, v1, v7

    .line 697
    .local v13, "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v14

    .line 699
    .local v14, "segHdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v16

    .line 701
    .local v16, "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move-object/from16 v2, v16

    .local v2, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_4

    aget-object v3, v2, v6

    .line 702
    .local v3, "b":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v3, :cond_3

    .line 703
    move-object v5, v3

    .line 705
    .local v5, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    sget-boolean v17, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez v5, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 707
    :cond_0
    const/4 v4, 0x0

    .line 708
    .local v4, "cnt":I
    const/4 v11, 0x0

    .line 710
    .local v11, "pubCnt":I
    :goto_2
    if-eqz v5, :cond_2

    .line 711
    add-int/lit8 v4, v4, 0x1

    .line 713
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cache map entry: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deleted()Z

    move-result v17

    if-nez v17, :cond_1

    .line 716
    iget-object v0, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 717
    add-int/lit8 v11, v11, 0x1

    .line 720
    :cond_1
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v5

    goto :goto_2

    .line 723
    :cond_2
    add-int/2addr v15, v4

    .line 724
    add-int/2addr v12, v11

    .line 701
    .end local v4    # "cnt":I
    .end local v5    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v11    # "pubCnt":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 696
    .end local v3    # "b":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 729
    .end local v2    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v9    # "len$":I
    .end local v13    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    .end local v14    # "segHdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .end local v16    # "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_5
    sget-boolean v17, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v15, :cond_6

    new-instance v17, Ljava/lang/AssertionError;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid size [expected="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", actual="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    .line 730
    :cond_6
    sget-boolean v17, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->publicSize()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_7

    new-instance v17, Ljava/lang/AssertionError;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid public size [expected="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->publicSize()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", actual="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    .line 731
    :cond_7
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 388
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->hash(I)I

    move-result v0

    .line 392
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public decrementSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 359
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 360
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 361
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 366
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->decrementPublicSize()V

    .line 367
    return-void
.end method

.method public varargs entries([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 2
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 575
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public entries0()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 599
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->nonInternal()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public varargs entriesx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 3
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 588
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZLorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 453
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 455
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->hash(I)I

    move-result v0

    .line 459
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->get(Ljava/lang/Object;I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v1

    return-object v1
.end method

.method public incrementSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 373
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 374
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 375
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 376
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 378
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->incrementPublicSize()V

    .line 381
    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method iteratorMapSize()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->itMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public varargs keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 2
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 635
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method printDebugInfo()V
    .locals 11

    .prologue
    .line 660
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 661
    .local v5, "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->lock()V

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v5    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    :cond_0
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>> Cache map debug info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 667
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    aget-object v6, v9, v1

    .line 669
    .local v6, "seg":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Segment [idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v7

    .line 673
    .local v7, "segHdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    .line 675
    .local v8, "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v9, v8

    if-ge v3, v9, :cond_1

    .line 676
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        Bucket [idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bucket="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 666
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 679
    .end local v3    # "j":I
    .end local v6    # "seg":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    .end local v7    # "segHdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .end local v8    # "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkConsistency()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 683
    .restart local v5    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v5    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    :catchall_0
    move-exception v9

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 683
    .restart local v5    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v5    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    :cond_3
    throw v9

    .line 685
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method

.method public publicSize()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method public putAll(Ljava/util/Map;J)V
    .locals 8
    .param p2, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 515
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->putEntry(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    goto :goto_0

    .line 516
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_0
    return-void
.end method

.method public putEntry(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 8
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J

    .prologue
    .line 470
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 472
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 474
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->hash(I)I

    move-result v3

    .line 476
    .local v3, "hash":I
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->put(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public putEntryIfObsoleteOrAbsent(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JZ)Lorg/apache/ignite/internal/util/lang/GridTriple;
    .locals 10
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "JZ)",
            "Lorg/apache/ignite/internal/util/lang/GridTriple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 497
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 499
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->hash(I)I

    move-result v3

    .line 501
    .local v3, "hash":I
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    move-wide v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->putIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;JZ)Lorg/apache/ignite/internal/util/lang/GridTriple;

    move-result-object v0

    return-object v0
.end method

.method public randomEntry()Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 411
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 414
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v6}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    move-object v0, v5

    .line 440
    :cond_1
    :goto_0
    return-object v0

    .line 418
    :cond_2
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->RAND:Ljava/util/Random;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 420
    .local v4, "segIdx":I
    const/4 v3, 0x0

    .line 422
    .local v3, "seg":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    move v1, v4

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v6, v6

    add-int/2addr v6, v4

    if-ge v1, v6, :cond_4

    .line 423
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    array-length v7, v7

    rem-int v7, v1, v7

    aget-object v2, v6, v7

    .line 425
    .local v2, "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->publicSize()I

    move-result v6

    if-lez v6, :cond_3

    .line 426
    move-object v3, v2

    .line 422
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    .end local v2    # "s":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    :cond_4
    if-nez v3, :cond_5

    move-object v0, v5

    .line 431
    goto :goto_0

    .line 433
    :cond_5
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->randomEntry()Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    .line 435
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_0

    .line 438
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 525
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 527
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 529
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    .line 531
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->hash(I)I

    move-result v0

    .line 533
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->same(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->remove(Ljava/lang/Object;ILorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeEntryIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 558
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 560
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 562
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->hash(I)I

    move-result v0

    .line 564
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segmentFor(I)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->obsolete:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v1, p1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->remove(Ljava/lang/Object;ILorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v1

    return-object v1
.end method

.method public setEntryFactory(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;

    .prologue
    .line 311
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 313
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->factory:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;

    .line 314
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method public stripedEntryIterator(II)Ljava/util/Iterator;
    .locals 6
    .param p1, "id"    # I
    .param p2, "totalCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 612
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->nonInternal()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 652
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    const-string v2, "size"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;

    const-string v4, "pubSize"

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs values([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;
    .locals 1
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->checkWeakQueue()V

    .line 647
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->allValues([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
