.class public Lorg/apache/ignite/internal/util/GridLongList;
.super Ljava/lang/Object;
.source "GridLongList.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private arr:[J

.field private idx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 56
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "arr"    # [J

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 64
    array-length v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 65
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0
    .param p1, "arr"    # [J
    .param p2, "size"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 84
    iput p2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 85
    return-void
.end method

.method public static addAll(Lorg/apache/ignite/internal/util/GridLongList;Lorg/apache/ignite/internal/util/GridLongList;)Lorg/apache/ignite/internal/util/GridLongList;
    .locals 2
    .param p0, "to"    # Lorg/apache/ignite/internal/util/GridLongList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "from"    # Lorg/apache/ignite/internal/util/GridLongList;

    .prologue
    .line 465
    if-nez p0, :cond_0

    .line 466
    new-instance v0, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    .line 468
    .local v0, "res":Lorg/apache/ignite/internal/util/GridLongList;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->addAll(Lorg/apache/ignite/internal/util/GridLongList;)V

    .line 475
    .end local v0    # "res":Lorg/apache/ignite/internal/util/GridLongList;
    :goto_0
    return-object v0

    .line 473
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->addAll(Lorg/apache/ignite/internal/util/GridLongList;)V

    move-object v0, p0

    .line 475
    goto :goto_0
.end method

.method public static varargs asList([J)Lorg/apache/ignite/internal/util/GridLongList;
    .locals 1
    .param p0, "vals"    # [J

    .prologue
    .line 72
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLongList;-><init>()V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLongList;-><init>([J)V

    goto :goto_0
.end method

.method public static readFrom(Ljava/io/DataInput;)Lorg/apache/ignite/internal/util/GridLongList;
    .locals 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 432
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 434
    .local v2, "idx":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 435
    const/4 v3, 0x0

    .line 442
    :goto_0
    return-object v3

    .line 437
    :cond_0
    new-array v0, v2, [J

    .line 439
    .local v0, "arr":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 440
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    :cond_1
    new-instance v3, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/GridLongList;-><init>([J)V

    goto :goto_0
.end method

.method public static writeTo(Ljava/io/DataOutput;Lorg/apache/ignite/internal/util/GridLongList;)V
    .locals 4
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "list"    # Lorg/apache/ignite/internal/util/GridLongList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    if-eqz p1, :cond_0

    iget v1, p1, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    :goto_0
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 453
    if-eqz p1, :cond_1

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p1, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v1, :cond_1

    .line 455
    iget-object v1, p1, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v1, v0

    invoke-interface {p0, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "i":I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 457
    :cond_1
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    if-nez v0, :cond_1

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    aput-wide p1, v0, v1

    .line 169
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    array-length v0, v0

    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    goto :goto_0
.end method

.method public addAll(Lorg/apache/ignite/internal/util/GridLongList;)V
    .locals 6
    .param p1, "l"    # Lorg/apache/ignite/internal/util/GridLongList;

    .prologue
    .line 138
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 140
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    if-nez v1, :cond_2

    .line 144
    const/4 v1, 0x4

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 146
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    array-length v0, v1

    .line 148
    .local v0, "len":I
    :goto_1
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 149
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 153
    iget-object v1, p1, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    goto :goto_0
.end method

.method public array()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    new-array v0, v1, [J

    .line 387
    .local v0, "res":[J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 176
    return-void
.end method

.method public contains(J)Z
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x1

    .line 272
    :goto_1
    return v1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public containsAll(Lorg/apache/ignite/internal/util/GridLongList;)Z
    .locals 4
    .param p1, "l"    # Lorg/apache/ignite/internal/util/GridLongList;

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 281
    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/util/GridLongList;->contains(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 285
    :goto_1
    return v1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public copy()Lorg/apache/ignite/internal/util/GridLongList;
    .locals 3

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLongList;-><init>()V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLongList;-><init>([J)V

    goto :goto_0
.end method

.method public copyWithout(Lorg/apache/ignite/internal/util/GridLongList;)Lorg/apache/ignite/internal/util/GridLongList;
    .locals 9
    .param p1, "l"    # Lorg/apache/ignite/internal/util/GridLongList;

    .prologue
    .line 207
    sget-boolean v6, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 209
    :cond_0
    iget v6, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-nez v6, :cond_1

    .line 210
    new-instance v6, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/GridLongList;-><init>()V

    .line 235
    :goto_0
    return-object v6

    .line 212
    :cond_1
    iget v6, p1, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-nez v6, :cond_2

    .line 213
    new-instance v6, Lorg/apache/ignite/internal/util/GridLongList;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v8, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/GridLongList;-><init>([J)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v7, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 216
    .local v2, "newArr":[J
    iget v3, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 218
    .local v3, "newIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 219
    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v4

    .line 221
    .local v4, "rmVal":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 222
    aget-wide v6, v2, v1

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    .line 224
    :goto_3
    if-lez v3, :cond_3

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, v2, v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_3

    .line 225
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 227
    :cond_3
    if-lez v3, :cond_4

    .line 228
    add-int/lit8 v6, v3, -0x1

    aget-wide v6, v2, v6

    aput-wide v6, v2, v1

    .line 229
    add-int/lit8 v3, v3, -0x1

    .line 221
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v1    # "j":I
    .end local v4    # "rmVal":J
    :cond_6
    new-instance v6, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v6, v2, v3}, Lorg/apache/ignite/internal/util/GridLongList;-><init>([JI)V

    goto :goto_0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 567
    const/16 v0, 0x55

    return v0
.end method

.method public distinct()Z
    .locals 6

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v2, :cond_2

    .line 293
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v1, v2, :cond_1

    .line 294
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v4, v4, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 295
    const/4 v2, 0x0

    .line 299
    .end local v1    # "j":I
    :goto_2
    return v2

    .line 293
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "j":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    instance-of v4, p1, Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v4, :cond_2

    move v2, v3

    .line 103
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 105
    check-cast v1, Lorg/apache/ignite/internal/util/GridLongList;

    .line 107
    .local v1, "that":Lorg/apache/ignite/internal/util/GridLongList;
    iget v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    iget v5, v1, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    iget v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget-object v5, v1, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    if-eq v4, v5, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v4, :cond_0

    .line 114
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v4, v4, v0

    iget-object v6, v1, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move v2, v3

    .line 115
    goto :goto_0

    .line 113
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x2

    return v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 243
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 123
    const/4 v4, 0x1

    .line 125
    .local v4, "res":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v3, v5, :cond_0

    .line 126
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v0, v5, v3

    .line 127
    .local v0, "element":J
    const/16 v5, 0x20

    ushr-long v6, v0, v5

    xor-long/2addr v6, v0

    long-to-int v2, v6

    .line 128
    .local v2, "elementHash":I
    mul-int/lit8 v5, v4, 0x1f

    add-int v4, v5, v2

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "element":J
    .end local v2    # "elementHash":I
    :cond_0
    return v4
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public last()J
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public pop(I)V
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 499
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 501
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, p1, :cond_1

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    goto :goto_0
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
    .line 402
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 404
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 540
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v0

    .line 543
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 562
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    :pswitch_0
    const-string v1, "arr"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    .line 547
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 553
    :pswitch_1
    const-string v1, "idx"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 555
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public remove()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 194
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public removeIndex(I)J
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 325
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 327
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v0, v2, p1

    .line 329
    .local v0, "res":J
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 330
    iput p1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    .line 337
    :goto_0
    return-wide v0

    .line 333
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v5, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    goto :goto_0
.end method

.method public removeValue(IJ)I
    .locals 4
    .param p1, "startIdx"    # I
    .param p2, "val"    # J

    .prologue
    .line 348
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 350
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v1, :cond_2

    .line 351
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p2

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridLongList;->removeIndex(I)J

    .line 358
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 350
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public replaceValue(IJJ)I
    .locals 4
    .param p1, "startIdx"    # I
    .param p2, "oldVal"    # J
    .param p4, "newVal"    # J

    .prologue
    .line 370
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v1, :cond_1

    .line 371
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aput-wide p4, v1, v0

    .line 378
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 370
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    return v0
.end method

.method public sort()Lorg/apache/ignite/internal/util/GridLongList;
    .locals 3

    .prologue
    .line 486
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 489
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 412
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    const-string v2, "["

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "b":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v1, v2, :cond_1

    .line 415
    if-eqz v1, :cond_0

    .line 416
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 418
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 423
    const-class v2, Lorg/apache/ignite/internal/util/GridLongList;

    const-string v3, "arr"

    invoke-static {v2, p0, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(IZ)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "last"    # Z

    .prologue
    .line 307
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLongList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ne p1, v0, :cond_2

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_2
    if-nez p2, :cond_3

    iget v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :cond_3
    iput p1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    if-ge v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 511
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLongList;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLongList;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 518
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 533
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    :pswitch_0
    const-string v1, "arr"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->arr:[J

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLongArray(Ljava/lang/String;[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 526
    :pswitch_1
    const-string v1, "idx"

    iget v2, p0, Lorg/apache/ignite/internal/util/GridLongList;->idx:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
