.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;
.super Lorg/apache/ignite/internal/util/lang/IgniteClosureX;
.source "GridCacheAdapter.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteClosureX",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private peekModes:[Lorg/apache/ignite/cache/CachePeekMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5687
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5705
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteClosureX;-><init>()V

    .line 5707
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lorg/apache/ignite/cache/CachePeekMode;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;

    .prologue
    .line 5713
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteClosureX;-><init>()V

    .line 5714
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->cacheName:Ljava/lang/String;

    .line 5715
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    .line 5716
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 5688
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;-><init>(Ljava/lang/String;[Lorg/apache/ignite/cache/CachePeekMode;)V

    return-void
.end method


# virtual methods
.method public applyx(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 5720
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v1, Lorg/apache/ignite/internal/IgniteEx;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->cacheName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 5722
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->cacheName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 5724
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->localSize([Lorg/apache/ignite/cache/CachePeekMode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 5687
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->applyx(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 5740
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->cacheName:Ljava/lang/String;

    .line 5742
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 5744
    .local v1, "len":I
    new-array v2, v1, [Lorg/apache/ignite/cache/CachePeekMode;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    .line 5746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5747
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/cache/CachePeekMode;->fromOrdinal(B)Lorg/apache/ignite/cache/CachePeekMode;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5748
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5752
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5730
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->cacheName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 5732
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 5734
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 5735
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;->peekModes:[Lorg/apache/ignite/cache/CachePeekMode;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 5734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5736
    :cond_0
    return-void
.end method
