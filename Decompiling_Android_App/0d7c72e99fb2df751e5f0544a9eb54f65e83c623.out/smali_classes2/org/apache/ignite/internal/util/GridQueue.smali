.class public Lorg/apache/ignite/internal/util/GridQueue;
.super Ljava/util/AbstractCollection;
.source "GridQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridQueue$1;,
        Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;,
        Lorg/apache/ignite/internal/util/GridQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private modCnt:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/GridQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$202(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$102(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 48
    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/GridQueue;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue;

    .prologue
    .line 33
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/GridQueue;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    return-object v0
.end method

.method private addBefore(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;)",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "n":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    const-string v2, "e"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 75
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    .line 77
    .local v0, "match":I
    new-instance v1, Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {p2}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$200(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/ignite/internal/util/GridQueue$Node;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$1;)V

    .line 80
    .local v1, "newNode":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$200(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$102(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 81
    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$202(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 83
    iget v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->size:I

    .line 85
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridQueue;->checkModCount(I)V

    .line 87
    return-object v1
.end method

.method private checkModCount(I)V
    .locals 3
    .param p1, "match"    # I

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    if-eq v0, p1, :cond_0

    .line 57
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mod count mismatch [expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    .line 61
    return-void
.end method

.method private remove(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    .local p1, "n":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    const/4 v4, 0x0

    .line 97
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    if-ne p1, v2, :cond_1

    .line 100
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 102
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->unlinked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 104
    :cond_2
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I

    .line 106
    .local v0, "match":I
    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$300(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "res":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$200(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$102(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 110
    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$200(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$202(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 113
    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$202(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$102(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 114
    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$302(Lorg/apache/ignite/internal/util/GridQueue$Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridQueue;->size:I

    .line 118
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridQueue;->checkModCount(I)V

    .line 120
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->unlink()V

    .line 122
    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridQueue;->offer(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    .line 180
    .local v0, "n":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    if-nez v0, :cond_0

    .line 181
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 183
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$300(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;-><init>(Lorg/apache/ignite/internal/util/GridQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridQueue;->addBefore(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public offerx(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridQueue;->addBefore(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$300(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekx()Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->size:I

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridQueue;->remove(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 191
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 193
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    const-string v1, "o"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    .local v0, "n":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;

    if-eq v0, v1, :cond_1

    .line 137
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$300(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridQueue;->remove(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    .line 140
    const/4 v1, 0x1

    .line 144
    :goto_1
    return v1

    .line 136
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/GridQueue;->size:I

    return v0
.end method

.method public unlink(Lorg/apache/ignite/internal/util/GridQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>;"
    .local p1, "n":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    const-string v0, "n"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridQueue;->remove(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    .line 217
    return-void
.end method
