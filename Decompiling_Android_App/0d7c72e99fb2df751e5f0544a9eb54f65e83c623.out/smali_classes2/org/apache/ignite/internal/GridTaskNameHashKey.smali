.class public Lorg/apache/ignite/internal/GridTaskNameHashKey;
.super Ljava/lang/Object;
.source "GridTaskNameHashKey.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private taskNameHash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "taskNameHash"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/ignite/internal/GridTaskNameHashKey;->taskNameHash:I

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/GridTaskNameHashKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 64
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 66
    check-cast v0, Lorg/apache/ignite/internal/GridTaskNameHashKey;

    .line 68
    .local v0, "that":Lorg/apache/ignite/internal/GridTaskNameHashKey;
    iget v3, p0, Lorg/apache/ignite/internal/GridTaskNameHashKey;->taskNameHash:I

    iget v4, v0, Lorg/apache/ignite/internal/GridTaskNameHashKey;->taskNameHash:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/apache/ignite/internal/GridTaskNameHashKey;->taskNameHash:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/GridTaskNameHashKey;->taskNameHash:I

    .line 56
    return-void
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
    .line 50
    iget v0, p0, Lorg/apache/ignite/internal/GridTaskNameHashKey;->taskNameHash:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 51
    return-void
.end method
