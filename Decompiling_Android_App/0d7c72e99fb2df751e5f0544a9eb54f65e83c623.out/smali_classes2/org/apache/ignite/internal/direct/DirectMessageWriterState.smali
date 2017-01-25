.class public Lorg/apache/ignite/internal/direct/DirectMessageWriterState;
.super Ljava/lang/Object;
.source "DirectMessageWriterState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INIT_SIZE:I = 0xa

.field private static final INIT_VAL:I = -0x1


# instance fields
.field private pos:I

.field private stack:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 45
    return-void
.end method


# virtual methods
.method public afterInnerMessageWrite(Z)V
    .locals 3
    .param p1, "finished"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 112
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    .line 113
    return-void
.end method

.method public beforeInnerMessageWrite()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 88
    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    .line 92
    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    .line 95
    .local v0, "stack0":[I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    .line 97
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    array-length v2, v0

    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    array-length v3, v3

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 101
    .end local v0    # "stack0":[I
    :cond_0
    return-void
.end method

.method public incrementState()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 75
    return-void
.end method

.method public isTypeWritten()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    aget v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTypeWritten()V
    .locals 3

    .prologue
    .line 58
    sget-boolean v0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 61
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 119
    sget-boolean v0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 122
    return-void
.end method

.method protected setState(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    aput p1, v0, v1

    .line 82
    return-void
.end method

.method public state()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->stack:[I

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->pos:I

    aget v0, v0, v1

    return v0
.end method
