.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySwapListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile entry:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

.field private final key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1856
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 0
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 1866
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1867
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1868
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;

    .prologue
    .line 1856
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    return-object v0
.end method


# virtual methods
.method public onEntryUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    .locals 11
    .param p1, "part"    # I
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1875
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->type()B

    move-result v2

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v4

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v6

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;-><init>(Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1883
    .local v0, "e0":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v10

    .line 1885
    .local v10, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v10, :cond_1

    .line 1886
    invoke-virtual {v0, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1890
    :goto_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1888
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    .end local v0    # "e0":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    .restart local v0    # "e0":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
    goto :goto_0

    .line 1892
    :cond_2
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    .line 1894
    .end local v0    # "e0":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
    .end local v10    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    return-void
.end method
