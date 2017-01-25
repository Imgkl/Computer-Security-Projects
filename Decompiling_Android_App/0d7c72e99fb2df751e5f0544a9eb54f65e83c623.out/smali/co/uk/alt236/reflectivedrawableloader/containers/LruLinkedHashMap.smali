.class public Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "LruLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x15dc7c833d69c2f4L


# instance fields
.field private final mMaxEntries:I


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .param p1, "maxEntries"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 30
    .local p0, "this":Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;, "Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 31
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->mMaxEntries:I

    .line 32
    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .prologue
    .line 37
    .local p0, "this":Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;, "Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lco/uk/alt236/reflectivedrawableloader/containers/LruLinkedHashMap;->mMaxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
