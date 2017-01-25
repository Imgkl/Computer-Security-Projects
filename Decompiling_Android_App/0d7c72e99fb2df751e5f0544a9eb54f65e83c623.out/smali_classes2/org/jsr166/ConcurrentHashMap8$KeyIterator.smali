.class final Lorg/jsr166/ConcurrentHashMap8$KeyIterator;
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
    name = "KeyIterator"
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
        "<TK;>;",
        "Ljava/util/Enumeration",
        "<TK;>;"
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
    .line 3143
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeyIterator;, "Lorg/jsr166/ConcurrentHashMap8$KeyIterator<TK;TV;>;"
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
    .line 3145
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeyIterator;, "Lorg/jsr166/ConcurrentHashMap8$KeyIterator<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p2, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;I)V

    .line 3146
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3153
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeyIterator;, "Lorg/jsr166/ConcurrentHashMap8$KeyIterator<TK;TV;>;"
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->nextVal:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->advance()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3154
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 3155
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->nextKey:Ljava/lang/Object;

    .line 3156
    .local v0, "k":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->nextVal:Ljava/lang/Object;

    .line 3157
    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3160
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeyIterator;, "Lorg/jsr166/ConcurrentHashMap8$KeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public split()Lorg/jsr166/ConcurrentHashMap8$KeyIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$KeyIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3148
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeyIterator;, "Lorg/jsr166/ConcurrentHashMap8$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3149
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3150
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1, p0}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;Lorg/jsr166/ConcurrentHashMap8$Traverser;)V

    return-object v0
.end method

.method public bridge synthetic split()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .locals 1

    .prologue
    .line 3141
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeyIterator;, "Lorg/jsr166/ConcurrentHashMap8$KeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;->split()Lorg/jsr166/ConcurrentHashMap8$KeyIterator;

    move-result-object v0

    return-object v0
.end method
