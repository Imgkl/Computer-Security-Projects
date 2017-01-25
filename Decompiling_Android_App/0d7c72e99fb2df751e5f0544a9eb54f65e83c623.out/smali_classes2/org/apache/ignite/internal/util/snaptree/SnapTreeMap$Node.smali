.class public Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
.super Ljava/lang/Object;
.source "SnapTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field volatile height:I

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile shrinkOVL:J

.field volatile vOpt:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-class v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;JLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V
    .locals 1
    .param p2, "height"    # I
    .param p3, "vOpt"    # Ljava/lang/Object;
    .param p5, "shrinkOVL"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;J",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p4, "parent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p7, "left":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p8, "right":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    .line 169
    iput p2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 170
    iput-object p3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 171
    iput-object p4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 172
    iput-wide p5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 173
    iput-object p7, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 174
    iput-object p8, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 175
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .param p1, "x1"    # J

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V

    return-void
.end method

.method static computeFrozenSize(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)I
    .locals 5
    .param p2, "fromIncl"    # Z
    .param p4, "toIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)I"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "root":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p1, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p3, "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v1, 0x0

    .line 306
    .local v1, "result":I
    :goto_0
    if-nez p0, :cond_0

    .line 307
    return v1

    .line 309
    :cond_0
    if-eqz p1, :cond_2

    .line 310
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "c":I
    if-gtz v0, :cond_1

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 313
    :cond_1
    iget-object p0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 314
    goto :goto_0

    .line 317
    .end local v0    # "c":I
    :cond_2
    if-eqz p3, :cond_4

    .line 318
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 319
    .restart local v0    # "c":I
    if-ltz v0, :cond_3

    if-nez v0, :cond_4

    if-nez p4, :cond_4

    .line 321
    :cond_3
    iget-object p0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 322
    goto :goto_0

    .line 328
    .end local v0    # "c":I
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 329
    add-int/lit8 v1, v1, 0x1

    .line 331
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v3, v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->computeFrozenSize(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 332
    const/4 p1, 0x0

    .line 333
    iget-object p0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 349
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lazyCopy(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p1, "newParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->isShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->markShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->markShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v9

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;JLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    return-object v1
.end method

.method private declared-synchronized lazyCopyChildren()V
    .locals 3

    .prologue
    .line 251
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 252
    .local v0, "cl":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->isShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->lazyCopy(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 255
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 256
    .local v1, "cr":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->isShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->lazyCopy(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    monitor-exit p0

    return-void

    .line 251
    .end local v0    # "cl":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v1    # "cr":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static markShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz p0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 216
    :cond_0
    return-object p0
.end method

.method private waitUntilShrinkCompleted(J)V
    .locals 5
    .param p1, "ovl"    # J

    .prologue
    .line 264
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinking(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    :cond_0
    return-void

    .line 268
    :cond_1
    const/4 v0, 0x0

    .local v0, "tries":I
    :goto_0
    sget v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpinCount:I

    if-ge v0, v1, :cond_2

    .line 269
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->YieldCount:I

    if-ge v0, v1, :cond_3

    .line 275
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 276
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_3
    monitor-enter p0

    .line 284
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    sget-boolean v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 284
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 1
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 341
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 344
    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    .local v0, "rhs":Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 187
    .local v0, "tmp":Ljava/lang/Object;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method setChild(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V
    .locals 1
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_0

    .line 200
    iput-object p2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unsharedChild(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 1
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 228
    .local v0, "cl":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->isShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    .end local v0    # "cl":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    return-object v0

    .line 231
    .restart local v0    # "cl":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->lazyCopyChildren()V

    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0
.end method

.method unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 238
    .local v0, "cr":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->isShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    .end local v0    # "cr":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    return-object v0

    .line 241
    .restart local v0    # "cr":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->lazyCopyChildren()V

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0
.end method

.method validatedHeight()I
    .locals 5

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 289
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v4, :cond_0

    move v1, v3

    .line 290
    .local v1, "hL":I
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v4, :cond_1

    move v2, v3

    .line 291
    .local v2, "hR":I
    :goto_1
    sget-boolean v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    sub-int v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 289
    .end local v1    # "hL":I
    .end local v2    # "hR":I
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->validatedHeight()I

    move-result v1

    goto :goto_0

    .line 290
    .restart local v1    # "hL":I
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->validatedHeight()I

    move-result v2

    goto :goto_1

    .line 292
    .restart local v2    # "hR":I
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 293
    .local v0, "h":I
    sget-boolean v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    if-eq v0, v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 294
    :cond_3
    iget v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    return v3
.end method
