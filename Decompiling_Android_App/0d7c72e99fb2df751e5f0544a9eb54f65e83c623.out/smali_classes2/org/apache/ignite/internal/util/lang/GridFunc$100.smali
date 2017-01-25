.class final Lorg/apache/ignite/internal/util/lang/GridFunc$100;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field private elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT1;>;"
        }
    .end annotation
.end field

.field private more:Z

.field private moved:Z

.field final synthetic val$c:Ljava/lang/Iterable;

.field final synthetic val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$readOnly:Z

.field final synthetic val$trans:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Z)V
    .locals 1

    .prologue
    .line 4172
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$c:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$readOnly:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 4177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->moved:Z

    .line 4183
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNextX()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4186
    iget-object v7, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v7}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4187
    iget-object v5, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->iter:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 4216
    :goto_0
    return v5

    .line 4189
    :cond_0
    iget-boolean v7, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->moved:Z

    if-nez v7, :cond_1

    .line 4190
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->more:Z

    goto :goto_0

    .line 4192
    :cond_1
    iput-boolean v6, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->more:Z

    .line 4194
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->iter:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4195
    iget-object v7, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->iter:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->elem:Ljava/lang/Object;

    .line 4197
    const/4 v2, 0x1

    .line 4199
    .local v2, "isAll":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 4200
    .local v4, "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    if-eqz v4, :cond_4

    iget-object v7, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->elem:Ljava/lang/Object;

    invoke-interface {v4, v7}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4201
    const/4 v2, 0x0

    .line 4206
    .end local v4    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    :cond_3
    if-eqz v2, :cond_2

    .line 4207
    iput-boolean v5, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->more:Z

    .line 4208
    iput-boolean v6, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->moved:Z

    goto :goto_0

    .line 4199
    .restart local v4    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4214
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "isAll":Z
    .end local v3    # "len$":I
    .end local v4    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->elem:Ljava/lang/Object;

    move v5, v6

    .line 4216
    goto :goto_0
.end method

.method public nextX()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4222
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4223
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4228
    :goto_0
    return-object v0

    .line 4225
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->moved:Z

    .line 4228
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->elem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4231
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeX()V
    .locals 2

    .prologue
    .line 4236
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->val$readOnly:Z

    if-eqz v0, :cond_0

    .line 4237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4239
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4240
    return-void
.end method
