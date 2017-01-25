.class public Lorg/apache/ignite/internal/util/GridAtomicLong;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "GridAtomicLong.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "initVal"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 48
    return-void
.end method


# virtual methods
.method public checkAndSet(Lorg/apache/ignite/lang/IgnitePredicate;J)Z
    .locals 4
    .param p2, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 241
    .local v0, "cur":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x1

    .line 246
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public greaterAndSet(JJ)Z
    .locals 3
    .param p1, "check"    # J
    .param p3, "update"    # J

    .prologue
    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 62
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 63
    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x1

    .line 67
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public greaterEqualsAndSet(JJ)Z
    .locals 3
    .param p1, "check"    # J
    .param p3, "update"    # J

    .prologue
    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 83
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 84
    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 88
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lessAndSet(JJ)Z
    .locals 3
    .param p1, "check"    # J
    .param p3, "update"    # J

    .prologue
    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 104
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 105
    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v2, 0x1

    .line 109
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lessEqualsAndSet(JJ)Z
    .locals 3
    .param p1, "check"    # J
    .param p3, "update"    # J

    .prologue
    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 125
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 126
    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x1

    .line 130
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setIfGreater(J)Z
    .locals 3
    .param p1, "update"    # J

    .prologue
    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 144
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 145
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x1

    .line 149
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setIfGreaterEquals(J)Z
    .locals 3
    .param p1, "update"    # J

    .prologue
    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 163
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 164
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x1

    .line 168
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setIfLess(J)Z
    .locals 3
    .param p1, "update"    # J

    .prologue
    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 182
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 183
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const/4 v2, 0x1

    .line 187
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setIfLessEquals(J)Z
    .locals 3
    .param p1, "update"    # J

    .prologue
    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 201
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 202
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const/4 v2, 0x1

    .line 206
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setIfNotEquals(J)Z
    .locals 3
    .param p1, "update"    # J

    .prologue
    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    .line 221
    .local v0, "cur":J
    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const/4 v2, 0x1

    .line 226
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
