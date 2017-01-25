.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
.super Ljava/lang/Object;
.source "GridCacheAtomicLongValue.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private val:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->val:J

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->val:J

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->val:J

    .line 78
    return-void
.end method

.method public set(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->val:J

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;

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
    .line 72
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->val:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 73
    return-void
.end method
