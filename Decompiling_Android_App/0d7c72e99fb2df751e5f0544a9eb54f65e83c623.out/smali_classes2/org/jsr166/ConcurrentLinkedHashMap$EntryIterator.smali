.class final Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;
.super Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsr166/ConcurrentLinkedHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V
    .locals 0
    .param p2, "asc"    # Z

    .prologue
    .line 1972
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    .line 1973
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V

    .line 1974
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;ZLorg/jsr166/ConcurrentLinkedHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/jsr166/ConcurrentLinkedHashMap$1;

    .prologue
    .line 1968
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1968
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1978
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;->nextEntry()Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 1980
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    new-instance v1, Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;

    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
