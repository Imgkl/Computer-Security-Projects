.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CircularQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private arr:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TR;"
        }
    .end annotation
.end field

.field private off:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2786
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 2800
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2801
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isPow2(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2803
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    .line 2804
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue<TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TR;"
    const/4 v5, 0x0

    .line 2810
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 2811
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    .line 2813
    .local v1, "newArr":[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v3, v3

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    sub-int v2, v3, v4

    .line 2815
    .local v2, "tailSize":I
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2817
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    if-eqz v3, :cond_0

    .line 2818
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    invoke-static {v3, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2820
    iput v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    .line 2823
    :cond_0
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "newArr":[Ljava/lang/Object;
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    .line 2826
    .end local v2    # "tailSize":I
    :cond_1
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v0, v3, v4

    .line 2828
    .local v0, "idx":I
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2830
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 2832
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    .line 2833
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    .prologue
    .line 2864
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue<TR;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 2865
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    if-lt p1, v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2867
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 2869
    .local v0, "res":Ljava/lang/Object;, "TR;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2871
    :cond_2
    return-object v0
.end method

.method public remove(I)V
    .locals 6
    .param p1, "n"    # I

    .prologue
    .line 2839
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue<TR;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-gtz p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 2840
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    if-le p1, v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2842
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 2844
    .local v2, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 2845
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    add-int/2addr v3, v0

    and-int v1, v3, v2

    .line 2847
    .local v1, "idx":I
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2849
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 2844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2852
    .end local v1    # "idx":I
    :cond_3
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    sub-int/2addr v3, p1

    iput v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    .line 2853
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    add-int/2addr v3, p1

    iput v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    .line 2855
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 2856
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->arr:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->off:I

    .line 2857
    :cond_4
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2878
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue<TR;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size:I

    return v0
.end method
