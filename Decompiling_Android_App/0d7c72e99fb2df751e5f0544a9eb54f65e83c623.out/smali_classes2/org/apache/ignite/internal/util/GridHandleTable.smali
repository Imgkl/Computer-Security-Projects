.class public Lorg/apache/ignite/internal/util/GridHandleTable;
.super Ljava/lang/Object;
.source "GridHandleTable.java"


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final intArrOff:J


# instance fields
.field private final loadFactor:F

.field private next:[I

.field private nextEmpty:[I

.field private objs:[Ljava/lang/Object;

.field private size:I

.field private spine:[I

.field private spineEmpty:[I

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/GridHandleTable;->UNSAFE:Lsun/misc/Unsafe;

    .line 33
    sget-object v0, Lorg/apache/ignite/internal/util/GridHandleTable;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->loadFactor:F

    .line 68
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    .line 69
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    .line 70
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    .line 71
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    .line 72
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->nextEmpty:[I

    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->nextEmpty:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 77
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->threshold:I

    .line 79
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridHandleTable;->clear()V

    .line 80
    return-void
.end method

.method private growEntries()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 172
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x1

    .line 173
    .local v0, "newLen":I
    new-array v5, v0, [I

    .line 175
    .local v5, "newNext":[I
    sget-object v1, Lorg/apache/ignite/internal/util/GridHandleTable;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    sget-wide v3, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    sget-wide v6, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget v8, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    shl-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 177
    iput-object v5, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    .line 178
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->nextEmpty:[I

    .line 180
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->nextEmpty:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 182
    new-array v10, v0, [Ljava/lang/Object;

    .line 184
    .local v10, "newObjs":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    invoke-static {v1, v11, v10, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iput-object v10, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    .line 187
    return-void
.end method

.method private growSpine()V
    .locals 13

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v12, v1, 0x1

    .line 151
    .local v12, "size":I
    new-array v1, v12, [I

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    .line 152
    new-array v1, v12, [I

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    .line 153
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    array-length v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->threshold:I

    .line 155
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 157
    sget-object v1, Lorg/apache/ignite/internal/util/GridHandleTable;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    sget-wide v3, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    sget-wide v6, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    aget-object v11, v1, v0

    .line 162
    .local v11, "obj":Ljava/lang/Object;
    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/util/GridHandleTable;->hash(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    array-length v2, v2

    rem-int v10, v1, v2

    .line 164
    .local v10, "idx":I
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0, v10}, Lorg/apache/ignite/internal/util/GridHandleTable;->insert(Ljava/lang/Object;II)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v10    # "idx":I
    .end local v11    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private insert(Ljava/lang/Object;II)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handle"    # I
    .param p3, "idx"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    aget v1, v1, p3

    aput v1, v0, p2

    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    aput p2, v0, p3

    .line 142
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 10

    .prologue
    .line 115
    sget-object v1, Lorg/apache/ignite/internal/util/GridHandleTable;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    sget-wide v3, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    sget-wide v6, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spineEmpty:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 116
    sget-object v1, Lorg/apache/ignite/internal/util/GridHandleTable;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->nextEmpty:[I

    sget-wide v3, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    sget-wide v6, Lorg/apache/ignite/internal/util/GridHandleTable;->intArrOff:J

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->nextEmpty:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    .line 121
    return-void
.end method

.method public lookup(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridHandleTable;->hash(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    array-length v3, v3

    rem-int v1, v2, v3

    .line 92
    .local v1, "idx":I
    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    if-lez v2, :cond_1

    .line 93
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->spine:[I

    aget v0, v2, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 94
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 108
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 93
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    aget v0, v2, v0

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_1
    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->next:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 99
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridHandleTable;->growEntries()V

    .line 101
    :cond_2
    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    iget v3, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->threshold:I

    if-lt v2, v3, :cond_3

    .line 102
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridHandleTable;->growSpine()V

    .line 104
    :cond_3
    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/ignite/internal/util/GridHandleTable;->insert(Ljava/lang/Object;II)V

    .line 106
    iget v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->size:I

    .line 108
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public objects()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridHandleTable;->objs:[Ljava/lang/Object;

    return-object v0
.end method
