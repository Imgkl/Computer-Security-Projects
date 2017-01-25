.class final Lorg/apache/ignite/internal/util/lang/GridFunc$59;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->sumBigIntegerReducer()Lorg/apache/ignite/lang/IgniteReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/R1",
        "<",
        "Ljava/math/BigInteger;",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private sum:Ljava/math/BigInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->sum:Ljava/math/BigInteger;

    .line 1380
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1377
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->collect(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method public collect(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "e"    # Ljava/math/BigInteger;

    .prologue
    .line 1383
    if-eqz p1, :cond_0

    .line 1384
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1385
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->sum:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->sum:Ljava/math/BigInteger;

    .line 1386
    monitor-exit v1

    .line 1388
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1377
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->reduce()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 1392
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1393
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;->sum:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
