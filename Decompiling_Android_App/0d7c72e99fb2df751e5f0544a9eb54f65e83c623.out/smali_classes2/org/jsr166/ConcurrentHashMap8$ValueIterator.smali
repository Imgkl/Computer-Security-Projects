.class final Lorg/jsr166/ConcurrentHashMap8$ValueIterator;
.super Lorg/jsr166/ConcurrentHashMap8$Traverser;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Lorg/jsr166/ConcurrentHashMap8$Spliterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jsr166/ConcurrentHashMap8$Traverser",
        "<TK;TV;",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/jsr166/ConcurrentHashMap8$Spliterator",
        "<TV;>;",
        "Ljava/util/Enumeration",
        "<TV;>;"
    }
.end annotation


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
    .line 3165
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValueIterator;, "Lorg/jsr166/ConcurrentHashMap8$ValueIterator<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-void
.end method

.method constructor <init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;",
            "Lorg/jsr166/ConcurrentHashMap8$Traverser",
            "<TK;TV;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3167
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValueIterator;, "Lorg/jsr166/ConcurrentHashMap8$ValueIterator<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p2, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;I)V

    .line 3168
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3177
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValueIterator;, "Lorg/jsr166/ConcurrentHashMap8$ValueIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->nextVal:Ljava/lang/Object;

    .local v0, "v":Ljava/lang/Object;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->advance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3178
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 3179
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->nextVal:Ljava/lang/Object;

    .line 3180
    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3183
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValueIterator;, "Lorg/jsr166/ConcurrentHashMap8$ValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic split()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .locals 1

    .prologue
    .line 3163
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValueIterator;, "Lorg/jsr166/ConcurrentHashMap8$ValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->split()Lorg/jsr166/ConcurrentHashMap8$ValueIterator;

    move-result-object v0

    return-object v0
.end method

.method public split()Lorg/jsr166/ConcurrentHashMap8$ValueIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$ValueIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3170
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValueIterator;, "Lorg/jsr166/ConcurrentHashMap8$ValueIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3171
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3172
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1, p0}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;)V

    return-object v0
.end method
