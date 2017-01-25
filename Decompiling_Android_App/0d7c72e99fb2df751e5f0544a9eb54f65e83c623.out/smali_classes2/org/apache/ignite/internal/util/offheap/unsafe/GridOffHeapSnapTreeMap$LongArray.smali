.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
.super Ljava/lang/Object;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArray"
.end annotation


# instance fields
.field private arr:[J

.field private idx:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->idx:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 208
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 208
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->idx:I

    return v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)[J
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->idx:I

    aput-wide p1, v0, v1

    .line 226
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    array-length v0, v0

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->idx:I

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J

    goto :goto_0
.end method
