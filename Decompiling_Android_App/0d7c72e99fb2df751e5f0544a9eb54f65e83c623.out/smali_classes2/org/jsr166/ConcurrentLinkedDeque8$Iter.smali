.class Lorg/jsr166/ConcurrentLinkedDeque8$Iter;
.super Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;
.source "ConcurrentLinkedDeque8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedDeque8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsr166/ConcurrentLinkedDeque8",
        "<TE;>.AbstractIter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedDeque8;


# direct methods
.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 0

    .prologue
    .line 1848
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Iter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.Iter;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedDeque8$Iter;->this$0:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedDeque8;Lorg/jsr166/ConcurrentLinkedDeque8$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedDeque8;
    .param p2, "x1"    # Lorg/jsr166/ConcurrentLinkedDeque8$1;

    .prologue
    .line 1848
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Iter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.Iter;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$Iter;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8;)V

    return-void
.end method


# virtual methods
.method nextNode(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1856
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Iter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.Iter;"
    .local p1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$Iter;->this$0:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method startNode()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1851
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Iter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.Iter;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$Iter;->this$0:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method
