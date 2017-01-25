.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
.super Ljava/lang/Object;
.source "GridCacheCountDownLatchValue.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private autoDel:Z

.field private cnt:I

.field private initCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "cnt"    # I
    .param p2, "del"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->cnt:I

    .line 52
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->initCnt:I

    .line 54
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->autoDel:Z

    .line 55
    return-void
.end method


# virtual methods
.method public autoDelete()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->autoDel:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->cnt:I

    return v0
.end method

.method public initialCount()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->initCnt:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->cnt:I

    .line 107
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->initCnt:I

    .line 108
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->autoDel:Z

    .line 109
    return-void
.end method

.method public set(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->cnt:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->cnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 100
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->initCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 101
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->autoDel:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 102
    return-void
.end method
