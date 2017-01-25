.class public Luk/co/alt236/bluetoothlelib/util/AdRecordUtils;
.super Ljava/lang/Object;
.source "AdRecordUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecordDataAsString(Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;)Ljava/lang/String;
    .locals 2
    .param p0, "nameRecord"    # Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    .prologue
    .line 17
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getServiceData(Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;)[B
    .locals 4
    .param p0, "serviceData"    # Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-object v1

    .line 23
    :cond_1
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getType()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 25
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getData()[B

    move-result-object v0

    .line 27
    .local v0, "raw":[B
    const/4 v1, 0x2

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getServiceDataUuid(Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;)I
    .locals 4
    .param p0, "serviceData"    # Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    .prologue
    const/4 v1, -0x1

    .line 31
    if-nez p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getType()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 34
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getData()[B

    move-result-object v0

    .line 36
    .local v0, "raw":[B
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 37
    .local v1, "uuid":I
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 39
    goto :goto_0
.end method

.method public static parseScanRecordAsList([B)Ljava/util/List;
    .locals 8
    .param p0, "scanRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;>;"
    const/4 v1, 0x0

    .line 49
    .local v1, "index":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 50
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v3, p0, v1

    .line 52
    .local v3, "length":I
    if-nez v3, :cond_1

    move v1, v2

    .line 67
    .end local v2    # "index":I
    .end local v3    # "length":I
    .restart local v1    # "index":I
    :cond_0
    :goto_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 54
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v3    # "length":I
    :cond_1
    aget-byte v6, p0, v2

    invoke-static {v6}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFromByte(B)I

    move-result v5

    .line 57
    .local v5, "type":I
    if-nez v5, :cond_2

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 59
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    add-int/lit8 v6, v2, 0x1

    add-int v7, v2, v3

    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 61
    .local v0, "data":[B
    new-instance v6, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    invoke-direct {v6, v3, v5, v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;-><init>(II[B)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int v1, v2, v3

    .line 65
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public static parseScanRecordAsMap([B)Ljava/util/Map;
    .locals 8
    .param p0, "scanRecord"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v4, "records":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, "index":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 76
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v3, p0, v1

    .line 78
    .local v3, "length":I
    if-nez v3, :cond_1

    move v1, v2

    .line 93
    .end local v2    # "index":I
    .end local v3    # "length":I
    .restart local v1    # "index":I
    :cond_0
    :goto_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6

    .line 80
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v3    # "length":I
    :cond_1
    aget-byte v6, p0, v2

    invoke-static {v6}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFromByte(B)I

    move-result v5

    .line 83
    .local v5, "type":I
    if-nez v5, :cond_2

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 85
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    add-int/lit8 v6, v2, 0x1

    add-int v7, v2, v3

    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 87
    .local v0, "data":[B
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    invoke-direct {v7, v3, v5, v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;-><init>(II[B)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int v1, v2, v3

    .line 91
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public static parseScanRecordAsSparseArray([B)Landroid/util/SparseArray;
    .locals 8
    .param p0, "scanRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/SparseArray",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 99
    .local v4, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "index":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 101
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v3, p0, v1

    .line 103
    .local v3, "length":I
    if-nez v3, :cond_1

    move v1, v2

    .line 118
    .end local v2    # "index":I
    .end local v3    # "length":I
    .restart local v1    # "index":I
    :cond_0
    :goto_1
    return-object v4

    .line 105
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v3    # "length":I
    :cond_1
    aget-byte v6, p0, v2

    invoke-static {v6}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFromByte(B)I

    move-result v5

    .line 108
    .local v5, "type":I
    if-nez v5, :cond_2

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 110
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    add-int/lit8 v6, v2, 0x1

    add-int v7, v2, v3

    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 112
    .local v0, "data":[B
    new-instance v6, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    invoke-direct {v6, v3, v5, v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;-><init>(II[B)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    add-int v1, v2, v3

    .line 116
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method
