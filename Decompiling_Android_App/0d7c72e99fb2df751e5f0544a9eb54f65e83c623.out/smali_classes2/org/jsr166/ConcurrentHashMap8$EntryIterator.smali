.class final Lorg/jsr166/ConcurrentHashMap8$EntryIterator;
.super Lorg/jsr166/ConcurrentHashMap8$Traverser;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Lorg/jsr166/ConcurrentHashMap8$Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 3188
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntryIterator;, "Lorg/jsr166/ConcurrentHashMap8$EntryIterator<TK;TV;>;"
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
    .line 3190
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntryIterator;, "Lorg/jsr166/ConcurrentHashMap8$EntryIterator<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p2, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;I)V

    .line 3191
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3186
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntryIterator;, "Lorg/jsr166/ConcurrentHashMap8$EntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3200
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntryIterator;, "Lorg/jsr166/ConcurrentHashMap8$EntryIterator<TK;TV;>;"
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->nextVal:Ljava/lang/Object;

    .local v1, "v":Ljava/lang/Object;
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->advance()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3201
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 3202
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 3203
    .local v0, "k":Ljava/lang/Object;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->nextVal:Ljava/lang/Object;

    .line 3204
    new-instance v2, Lorg/jsr166/ConcurrentHashMap8$MapEntry;

    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v2, v0, v1, v3}, Lorg/jsr166/ConcurrentHashMap8$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v2
.end method

.method public split()Lorg/jsr166/ConcurrentHashMap8$EntryIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$EntryIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3193
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntryIterator;, "Lorg/jsr166/ConcurrentHashMap8$EntryIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3194
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3195
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1, p0}, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;)V

    return-object v0
.end method

.method public bridge synthetic split()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .locals 1

    .prologue
    .line 3186
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntryIterator;, "Lorg/jsr166/ConcurrentHashMap8$EntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;->split()Lorg/jsr166/ConcurrentHashMap8$EntryIterator;

    move-result-object v0

    return-object v0
.end method
