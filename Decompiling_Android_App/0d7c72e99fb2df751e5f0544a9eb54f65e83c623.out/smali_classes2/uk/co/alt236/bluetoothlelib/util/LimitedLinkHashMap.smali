.class public Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;
.super Ljava/util/LinkedHashMap;
.source "LimitedLinkHashMap.java"


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
.field private static final serialVersionUID:J = -0x4a9a2e8d06ef5cfdL


# instance fields
.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 11
    .local p0, "this":Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;, "Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    iput p1, p0, Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;->mMaxSize:I

    .line 13
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;, "Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;->size()I

    move-result v0

    iget v1, p0, Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;->mMaxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
