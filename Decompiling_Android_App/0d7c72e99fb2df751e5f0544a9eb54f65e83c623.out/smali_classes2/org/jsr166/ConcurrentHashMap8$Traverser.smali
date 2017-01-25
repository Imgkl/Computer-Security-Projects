.class Lorg/jsr166/ConcurrentHashMap8$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field baseSize:I

.field batch:I

.field index:I

.field final map:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lorg/jsr166/ConcurrentHashMap8$Node;

.field nextKey:Ljava/lang/Object;

.field nextVal:Ljava/lang/Object;

.field tab:[Lorg/jsr166/ConcurrentHashMap8$Node;


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
    .line 2371
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2372
    iput-object p1, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->map:Lorg/jsr166/ConcurrentHashMap8;

    .line 2373
    return-void
.end method

.method constructor <init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;I)V
    .locals 3
    .param p3, "batch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;",
            "Lorg/jsr166/ConcurrentHashMap8$Traverser",
            "<TK;TV;*>;I)V"
        }
    .end annotation

    .prologue
    .line 2376
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p2, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    iput p3, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->batch:I

    .line 2378
    iput-object p1, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->map:Lorg/jsr166/ConcurrentHashMap8;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2380
    iget-object v1, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->tab:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .local v1, "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v1    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    iput-object v1, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->tab:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .restart local v1    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v1, :cond_0

    .line 2382
    array-length v2, v1

    iput v2, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseSize:I

    iput v2, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseLimit:I

    .line 2383
    :cond_0
    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->tab:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 2384
    iget v2, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseSize:I

    iput v2, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseSize:I

    .line 2385
    iget v0, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseLimit:I

    iput v0, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseLimit:I

    .line 2386
    .local v0, "hi":I
    iget v2, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseIndex:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseIndex:I

    iput v2, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->index:I

    iput v2, p2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseLimit:I

    .line 2389
    .end local v0    # "hi":I
    .end local v1    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_1
    return-void
.end method


# virtual methods
.method final advance()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 2396
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 2397
    .local v1, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/4 v3, 0x0

    .line 2399
    :cond_0
    if-eqz v1, :cond_1

    .line 2400
    iget-object v1, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 2401
    :cond_1
    :goto_0
    if-nez v1, :cond_8

    .line 2404
    iget-object v7, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->tab:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .local v7, "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v7, :cond_3

    .line 2405
    array-length v6, v7

    .line 2410
    .local v6, "n":I
    :goto_1
    iget v0, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseIndex:I

    .local v0, "b":I
    iget v8, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseLimit:I

    if-ge v0, v8, :cond_2

    iget v4, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->index:I

    .local v4, "i":I
    if-ltz v4, :cond_2

    if-lt v4, v6, :cond_4

    .line 2425
    .end local v0    # "b":I
    .end local v4    # "i":I
    .end local v6    # "n":I
    .end local v7    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_2
    :goto_2
    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 2426
    iput-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextVal:Ljava/lang/Object;

    return-object v3

    .line 2406
    .restart local v7    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_3
    iget-object v5, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->map:Lorg/jsr166/ConcurrentHashMap8;

    .local v5, "m":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    if-eqz v5, :cond_2

    iget-object v7, v5, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v7    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    iput-object v7, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->tab:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .restart local v7    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v7, :cond_2

    .line 2407
    array-length v6, v7

    iput v6, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseSize:I

    iput v6, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseLimit:I

    .restart local v6    # "n":I
    goto :goto_1

    .line 2413
    .end local v5    # "m":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .restart local v0    # "b":I
    .restart local v4    # "i":I
    :cond_4
    invoke-static {v7, v4}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v8, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_5

    .line 2414
    iget-object v2, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v2, "ek":Ljava/lang/Object;
    instance-of v8, v2, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    if-eqz v8, :cond_6

    .line 2415
    check-cast v2, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .end local v2    # "ek":Ljava/lang/Object;
    iget-object v1, v2, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 2421
    :cond_5
    iget v8, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseSize:I

    add-int/2addr v4, v8

    if-ge v4, v6, :cond_7

    .end local v4    # "i":I
    :goto_3
    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->index:I

    goto :goto_0

    .line 2417
    .restart local v2    # "ek":Ljava/lang/Object;
    .restart local v4    # "i":I
    :cond_6
    check-cast v2, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v2    # "ek":Ljava/lang/Object;
    check-cast v2, [Lorg/jsr166/ConcurrentHashMap8$Node;

    iput-object v2, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->tab:[Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 2421
    :cond_7
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->baseIndex:I

    goto :goto_3

    .line 2423
    .end local v0    # "b":I
    .end local v4    # "i":I
    .end local v6    # "n":I
    .end local v7    # "t":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_8
    iget-object v8, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    iput-object v8, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    .line 2424
    iget-object v3, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v3, "ev":Ljava/lang/Object;
    if-eqz v3, :cond_0

    goto :goto_2
.end method

.method public compute()V
    .locals 0

    .prologue
    .line 2442
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    return-void
.end method

.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 2440
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2437
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextVal:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;TR;>;"
    const/4 v2, 0x0

    .line 2430
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    .line 2431
    .local v0, "k":Ljava/lang/Object;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2432
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2433
    :cond_1
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->map:Lorg/jsr166/ConcurrentHashMap8;

    # invokes: Lorg/jsr166/ConcurrentHashMap8;->internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v0, v2, v2}, Lorg/jsr166/ConcurrentHashMap8;->access$100(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    return-void
.end method
