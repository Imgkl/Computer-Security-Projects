.class public final Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private volatile modCnt:I

.field private final next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

.field private volatile val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local p4, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    .line 267
    iput p2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I

    .line 268
    iput-object p3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 269
    iput-object p4, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;

    .line 270
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;ILorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;Lorg/jsr166/ConcurrentLinkedDeque8$Node;I)V
    .locals 0
    .param p2, "hash"    # I
    .param p5, "node"    # Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .param p6, "modCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;TV;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local p4, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    .line 282
    iput p2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I

    .line 283
    iput-object p3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 284
    iput-object p4, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;

    .line 285
    iput-object p5, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 286
    iput p6, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I

    .line 287
    return-void
.end method

.method static synthetic access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .prologue
    .line 240
    iget v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I

    return v0
.end method

.method static synthetic access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    return-object v0
.end method

.method static synthetic access$502(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 0
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .param p1, "x1"    # Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    return-object p1
.end method

.method static synthetic access$800(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .prologue
    .line 240
    iget v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I

    return v0
.end method

.method static synthetic access$802(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;I)I
    .locals 0
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .param p1, "x1"    # I

    .prologue
    .line 240
    iput p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I

    return p1
.end method

.method static newArray(I)[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .locals 1
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 317
    new-array v0, p0, [Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

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
    .line 304
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;

    return-object v0
.end method
