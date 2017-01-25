.class Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;
.super Ljava/lang/Object;
.source "GridCacheIoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerKey"
.end annotation


# instance fields
.field private cacheId:I

.field private msgCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Class;)V
    .locals 0
    .param p1, "cacheId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p2, "msgCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->cacheId:I

    .line 783
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->msgCls:Ljava/lang/Class;

    .line 784
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Class;Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;

    .prologue
    .line 770
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;-><init>(ILjava/lang/Class;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;

    .prologue
    .line 770
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->cacheId:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 788
    if-ne p0, p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v1

    .line 791
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 792
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 794
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;

    .line 796
    .local v0, "that":Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->cacheId:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->cacheId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->msgCls:Ljava/lang/Class;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->msgCls:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 801
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->cacheId:I

    .line 803
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->msgCls:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 805
    return v0
.end method
