.class Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;
.super Ljava/lang/ref/PhantomReference;
.source "GridConcurrentPhantomHashSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhantomReferenceElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private hashCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement<TE;>;"
    .local p1, "ref":Ljava/lang/Object;, "TE;"
    .local p2, "refQ":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 375
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;->hashCode:I

    .line 376
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/ref/ReferenceQueue;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$1;

    .prologue
    .line 362
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement<TE;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 380
    if-ne p0, p1, :cond_1

    .line 390
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 383
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;

    if-nez v4, :cond_2

    move v2, v3

    .line 384
    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;->get()Ljava/lang/Object;

    move-result-object v1

    .line 388
    .local v1, "thisRef":Ljava/lang/Object;, "TE;"
    check-cast p1, Ljava/lang/ref/Reference;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 390
    .local v0, "thatRef":Ljava/lang/Object;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement<TE;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentPhantomHashSet$PhantomReferenceElement;->hashCode:I

    return v0
.end method
