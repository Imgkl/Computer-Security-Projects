.class Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;
.super Lcom/genie_connect/android/utils/string/Entities$ArrayEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/genie_connect/android/utils/string/Entities$ArrayEntityMap;-><init>()V

    .line 669
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "growBy"    # I

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/genie_connect/android/utils/string/Entities$ArrayEntityMap;-><init>(I)V

    .line 680
    return-void
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 691
    const/4 v1, 0x0

    .line 692
    .local v1, "low":I
    iget v4, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 694
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 695
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 696
    .local v2, "mid":I
    iget-object v4, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->values:[I

    aget v3, v4, v2

    .line 698
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 699
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 700
    :cond_0
    if-le v3, p1, :cond_2

    .line 701
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 706
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    neg-int v2, v4

    :cond_2
    return v2
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 714
    iget v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->ensureCapacity(I)V

    .line 715
    invoke-direct {p0, p2}, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 716
    .local v0, "insertAt":I
    if-lez v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 719
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 720
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->values:[I

    iget-object v2, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->values:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->values:[I

    aput p2, v1, v0

    .line 722
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    iget-object v2, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 723
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 724
    iget v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->size:I

    goto :goto_0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 733
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 734
    const/4 v1, 0x0

    .line 736
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method
