.class public Lorg/apache/ignite/internal/util/GridAtomicInteger;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "GridAtomicInteger.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initVal"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public checkAndSet(Lorg/apache/ignite/lang/IgnitePredicate;I)Z
    .locals 2
    .param p2, "update"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 241
    .local v0, "cur":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public greaterAndSet(II)Z
    .locals 2
    .param p1, "check"    # I
    .param p2, "update"    # I

    .prologue
    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 62
    .local v0, "cur":I
    if-le p1, v0, :cond_1

    .line 63
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 67
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public greaterEqualsAndSet(II)Z
    .locals 2
    .param p1, "check"    # I
    .param p2, "update"    # I

    .prologue
    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 83
    .local v0, "cur":I
    if-lt p1, v0, :cond_1

    .line 84
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 88
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lessAndSet(II)Z
    .locals 2
    .param p1, "check"    # I
    .param p2, "update"    # I

    .prologue
    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 104
    .local v0, "cur":I
    if-ge p1, v0, :cond_1

    .line 105
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 109
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lessEqualsAndSet(II)Z
    .locals 2
    .param p1, "check"    # I
    .param p2, "update"    # I

    .prologue
    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 125
    .local v0, "cur":I
    if-gt p1, v0, :cond_1

    .line 126
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIfGreater(I)Z
    .locals 2
    .param p1, "update"    # I

    .prologue
    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 144
    .local v0, "cur":I
    if-le p1, v0, :cond_1

    .line 145
    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIfGreaterEquals(I)Z
    .locals 2
    .param p1, "update"    # I

    .prologue
    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 163
    .local v0, "cur":I
    if-lt p1, v0, :cond_1

    .line 164
    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIfLess(I)Z
    .locals 2
    .param p1, "update"    # I

    .prologue
    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 182
    .local v0, "cur":I
    if-ge p1, v0, :cond_1

    .line 183
    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 187
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIfLessEquals(I)Z
    .locals 2
    .param p1, "update"    # I

    .prologue
    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 201
    .local v0, "cur":I
    if-gt p1, v0, :cond_1

    .line 202
    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 206
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIfNotEquals(I)Z
    .locals 2
    .param p1, "update"    # I

    .prologue
    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->get()I

    move-result v0

    .line 221
    .local v0, "cur":I
    if-eq p1, v0, :cond_1

    .line 222
    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/util/GridAtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
