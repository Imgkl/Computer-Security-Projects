.class abstract Lorg/jsr166/ConcurrentHashMap8$CHMView;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CHMView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final oomeMsg:Ljava/lang/String; = "Required array size too large"


# instance fields
.field final map:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jsr166/ConcurrentHashMap8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3428
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3439
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentHashMap8;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3525
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_2

    .line 3526
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3527
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3528
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3529
    :cond_1
    const/4 v2, 0x0

    .line 3532
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getMap()Lorg/jsr166/ConcurrentHashMap8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3435
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 3502
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    const/4 v0, 0x0

    .line 3503
    .local v0, "h":I
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 3505
    :cond_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3438
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentHashMap8;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3536
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 3537
    .local v1, "modified":Z
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3539
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3540
    const/4 v1, 0x1

    goto :goto_0

    .line 3543
    :cond_1
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3547
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 3548
    .local v1, "modified":Z
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3549
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3550
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3551
    const/4 v1, 0x1

    goto :goto_0

    .line 3554
    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3437
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentHashMap8;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 10

    .prologue
    .line 3449
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    iget-object v5, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentHashMap8;->mappingCount()J

    move-result-wide v6

    .line 3450
    .local v6, "sz":J
    const-wide/32 v8, 0x7ffffff7

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 3451
    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string v8, "Required array size too large"

    invoke-direct {v5, v8}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3452
    :cond_0
    long-to-int v3, v6

    .line 3453
    .local v3, "n":I
    new-array v4, v3, [Ljava/lang/Object;

    .line 3454
    .local v4, "r":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 3455
    .local v0, "i":I
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3456
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3457
    if-ne v0, v3, :cond_2

    .line 3458
    const v5, 0x7ffffff7

    if-lt v3, v5, :cond_1

    .line 3459
    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string v8, "Required array size too large"

    invoke-direct {v5, v8}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3460
    :cond_1
    const v5, 0x3ffffffb    # 1.9999994f

    if-lt v3, v5, :cond_3

    .line 3461
    const v3, 0x7ffffff7

    .line 3464
    :goto_1
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 3466
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 3463
    :cond_3
    ushr-int/lit8 v5, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    goto :goto_1

    .line 3468
    :cond_4
    if-ne v0, v3, :cond_5

    .end local v4    # "r":[Ljava/lang/Object;
    :goto_2
    return-object v4

    .restart local v4    # "r":[Ljava/lang/Object;
    :cond_5
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 3472
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v8, p0, Lorg/jsr166/ConcurrentHashMap8$CHMView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v8}, Lorg/jsr166/ConcurrentHashMap8;->mappingCount()J

    move-result-wide v6

    .line 3473
    .local v6, "sz":J
    const-wide/32 v8, 0x7ffffff7

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 3474
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3475
    :cond_0
    long-to-int v3, v6

    .line 3476
    .local v3, "m":I
    array-length v8, p1

    if-lt v8, v3, :cond_1

    move-object v5, p1

    .line 3479
    .local v5, "r":[Ljava/lang/Object;, "[TT;"
    :goto_0
    array-length v4, v5

    .line 3480
    .local v4, "n":I
    const/4 v0, 0x0

    .line 3481
    .local v0, "i":I
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3482
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3483
    if-ne v0, v4, :cond_3

    .line 3484
    const v8, 0x7ffffff7

    if-lt v4, v8, :cond_2

    .line 3485
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3476
    .end local v0    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "n":I
    .end local v5    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v5, v8

    goto :goto_0

    .line 3486
    .restart local v0    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "n":I
    .restart local v5    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_2
    const v8, 0x3ffffffb    # 1.9999994f

    if-lt v4, v8, :cond_4

    .line 3487
    const v4, 0x7ffffff7

    .line 3490
    :goto_2
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 3492
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 3489
    :cond_4
    ushr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    goto :goto_2

    .line 3494
    :cond_5
    if-ne p1, v5, :cond_7

    if-ge v0, v4, :cond_7

    .line 3495
    const/4 v8, 0x0

    aput-object v8, v5, v0

    .line 3498
    .end local v5    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_6
    :goto_3
    return-object v5

    .restart local v5    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_7
    if-eq v0, v4, :cond_6

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3509
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$CHMView;, "Lorg/jsr166/ConcurrentHashMap8$CHMView<TK;TV;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3510
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3511
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3512
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3514
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3515
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, p0, :cond_0

    const-string v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3516
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3521
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3518
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
