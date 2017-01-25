.class Lcom/genie_connect/android/utils/string/Entities$IntHashMap;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntHashMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private loadFactor:F

.field private transient table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1077
    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;-><init>(IF)V

    .line 1078
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1089
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;-><init>(IF)V

    .line 1090
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    if-gez p1, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 1107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1109
    :cond_1
    if-nez p1, :cond_2

    .line 1110
    const/4 p1, 0x1

    .line 1113
    :cond_2
    iput p2, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->loadFactor:F

    .line 1114
    new-array v0, p1, [Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1115
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->threshold:I

    .line 1116
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 1338
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1339
    .local v1, "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    array-length v0, v1

    .local v0, "index":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1340
    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1338
    .end local v0    # "index":I
    .end local v1    # "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1342
    .restart local v0    # "index":I
    .restart local v1    # "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1343
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1156
    if-nez p1, :cond_0

    .line 1157
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1160
    :cond_0
    iget-object v3, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1161
    .local v3, "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 1162
    aget-object v0, v3, v1

    .local v0, "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_1
    if-eqz v0, :cond_2

    .line 1163
    iget-object v4, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1164
    const/4 v4, 0x1

    .line 1168
    .end local v0    # "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_2
    return v4

    .line 1162
    .restart local v0    # "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :cond_1
    iget-object v0, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    goto :goto_1

    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1168
    .end local v0    # "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public containsKey(I)Z
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 1197
    iget-object v3, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1198
    .local v3, "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    move v1, p1

    .line 1199
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 1200
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 1201
    iget v4, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    .line 1202
    const/4 v4, 0x1

    .line 1205
    :goto_1
    return v4

    .line 1200
    :cond_0
    iget-object v0, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    goto :goto_0

    .line 1205
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1184
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 1218
    iget-object v3, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1219
    .local v3, "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    move v1, p1

    .line 1220
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 1221
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 1222
    iget v4, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    .line 1223
    iget-object v4, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 1226
    :goto_1
    return-object v4

    .line 1221
    :cond_0
    iget-object v0, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    goto :goto_0

    .line 1226
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7fffffff

    .line 1277
    iget-object v4, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1278
    .local v4, "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    move v1, p1

    .line 1279
    .local v1, "hash":I
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 1280
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 1281
    iget v5, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    .line 1282
    iget-object v3, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 1283
    .local v3, "old":Ljava/lang/Object;
    iput-object p2, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 1300
    .end local v3    # "old":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 1280
    :cond_0
    iget-object v0, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    goto :goto_0

    .line 1288
    :cond_1
    iget v5, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    iget v6, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->threshold:I

    if-lt v5, v6, :cond_2

    .line 1290
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->rehash()V

    .line 1292
    iget-object v4, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1293
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 1297
    :cond_2
    new-instance v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .end local v0    # "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;)V

    .line 1298
    .restart local v0    # "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    aput-object v0, v4, v2

    .line 1299
    iget v5, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    .line 1300
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected rehash()V
    .locals 11

    .prologue
    .line 1239
    iget-object v9, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    array-length v7, v9

    .line 1240
    .local v7, "oldCapacity":I
    iget-object v8, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1242
    .local v8, "oldMap":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 1243
    .local v4, "newCapacity":I
    new-array v5, v4, [Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1245
    .local v5, "newMap":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    int-to-float v9, v4

    iget v10, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->threshold:I

    .line 1246
    iput-object v5, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1248
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1

    .line 1249
    aget-object v6, v8, v1

    .local v6, "old":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_1
    if-eqz v6, :cond_0

    .line 1250
    move-object v0, v6

    .line 1251
    .local v0, "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    iget-object v6, v6, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1253
    iget v9, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 1254
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1255
    aput-object v0, v5, v3

    goto :goto_1

    .end local v0    # "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    .end local v3    # "index":I
    :cond_0
    move v2, v1

    .line 1256
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1258
    .end local v2    # "i":I
    .end local v6    # "old":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # I

    .prologue
    const/4 v6, 0x0

    .line 1315
    iget-object v5, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->table:[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1316
    .local v5, "tab":[Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    move v1, p1

    .line 1317
    .local v1, "hash":I
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    .line 1318
    .local v2, "index":I
    aget-object v0, v5, v2

    .local v0, "e":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    const/4 v4, 0x0

    .local v4, "prev":Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 1319
    iget v7, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_1

    .line 1320
    if-eqz v4, :cond_0

    .line 1321
    iget-object v7, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    iput-object v7, v4, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1325
    :goto_1
    iget v7, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    .line 1326
    iget-object v3, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 1327
    .local v3, "oldValue":Ljava/lang/Object;
    iput-object v6, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 1331
    .end local v3    # "oldValue":Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 1323
    :cond_0
    iget-object v7, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    aput-object v7, v5, v2

    goto :goto_1

    .line 1318
    :cond_1
    move-object v4, v0

    iget-object v0, v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    goto :goto_0

    :cond_2
    move-object v3, v6

    .line 1331
    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->count:I

    return v0
.end method
