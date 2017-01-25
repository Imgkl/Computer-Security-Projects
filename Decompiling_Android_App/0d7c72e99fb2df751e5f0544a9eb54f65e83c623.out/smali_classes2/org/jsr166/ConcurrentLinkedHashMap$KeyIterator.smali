.class final Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;
.super Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsr166/ConcurrentLinkedHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;",
        "Ljava/util/Enumeration",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V
    .locals 0
    .param p2, "asc"    # Z

    .prologue
    .line 1894
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    .line 1895
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V

    .line 1896
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;ZLorg/jsr166/ConcurrentLinkedHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/jsr166/ConcurrentLinkedHashMap$1;

    .prologue
    .line 1890
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1900
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;->nextEntry()Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1905
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;->nextEntry()Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
