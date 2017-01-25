.class public final Lcom/genie_connect/android/db/access/DbQrCodes;
.super Lcom/genie_connect/android/db/access/BaseMultiEntity;
.source "DbQrCodes.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseMultiEntity;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 64
    return-void
.end method

.method private calcColumnsPresentInTable(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "entityType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcSelectStatement(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private calcSelectStatement(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "entityType"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "q.id _id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "q.id id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "q.entity entity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "q.entityId entityId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "q.code code"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "q.time time"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "q.type type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v1, "q.displayname displayname"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {p1}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcNameColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {p1}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcImageColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {p1}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcFullDescColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static calcTablesStatement(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entityType"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrCodeCustom q LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON q.entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static calcWhereStatement(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "entityType"    # Ljava/lang/String;
    .param p1, "namespace"    # J

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((q.entity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND q.entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".id)  OR (q.entity IS NULL)) AND q._namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static deleteMyQRCode(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "qrCodeId"    # J

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM QrCodeCustom WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/database/SQLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static saveQRCode(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "namespace"    # J
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "qrType"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 164
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v12, "QrCodeCustom"

    .line 165
    .local v12, "sqlTable":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id _id"

    aput-object v5, v4, v3

    .line 167
    .local v4, "sqlSelect":[Ljava/lang/String;
    const-string v3, "QrCodeCustom"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 169
    const-string v14, "code=? AND _namespace=?"

    .line 170
    .local v14, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v6, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    .line 171
    .local v6, "sqlWhereArgs":[Ljava/lang/String;
    const-string v5, "code=? AND _namespace=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 173
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 175
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO QrCodeCustom (id, _namespace, type, time, displayname, code)  VALUES (null,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "datetime(),"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, "statement":Ljava/lang/String;
    invoke-virtual {p0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v3, 0x1

    .line 192
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 197
    .end local v13    # "statement":Ljava/lang/String;
    :goto_0
    return v3

    .line 187
    :catch_0
    move-exception v11

    .line 188
    .local v11, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ QRCODE: not inserted : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 189
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/4 v3, 0x0

    .line 192
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    throw v3

    .line 196
    :cond_0
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 197
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected static saveQRCode(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "namespace"    # J
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "qrType"    # Ljava/lang/String;
    .param p5, "entityType"    # Ljava/lang/String;
    .param p6, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 201
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 203
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v12, "QrCodeCustom"

    .line 204
    .local v12, "sqlTable":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id _id"

    aput-object v5, v4, v3

    .line 206
    .local v4, "sqlSelect":[Ljava/lang/String;
    const-string v3, "QrCodeCustom"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 208
    const-string v14, "entity=? AND entityId=? AND _namespace=?"

    .line 209
    .local v14, "where":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v6, v3

    const/4 v3, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    const/4 v3, 0x2

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    .line 210
    .local v6, "sqlWhereArgs":[Ljava/lang/String;
    const-string v5, "entity=? AND entityId=? AND _namespace=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 212
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 214
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO QrCodeCustom (id, _namespace, type, time, displayname, code, entity, entityId)  VALUES (null,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "datetime(),"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, "statement":Ljava/lang/String;
    invoke-virtual {p0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/4 v3, 0x1

    .line 233
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 238
    .end local v13    # "statement":Ljava/lang/String;
    :goto_0
    return v3

    .line 228
    :catch_0
    move-exception v11

    .line 229
    .local v11, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ QRCODE: not inserted : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 230
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/4 v3, 0x0

    .line 233
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    throw v3

    .line 237
    :cond_0
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 238
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMyQRCodes(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "namespace"    # J

    .prologue
    .line 111
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 112
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v18, "unionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouritableEntities()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .local v13, "entitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "favouritesession"

    invoke-interface {v13, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    const-string v5, "favouritesubsession"

    invoke-interface {v13, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    const-string v5, "adhocagendaitems"

    invoke-interface {v13, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "entity":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcSelectStatement(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "sqlSelect":[Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcTablesStatement(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, "sqlTables":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v17, :cond_0

    if-eqz v3, :cond_0

    .line 129
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 130
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcColumnsPresentInTable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "TEXT"

    move-wide/from16 v0, p3

    invoke-static {v3, v0, v1}, Lcom/genie_connect/android/db/access/DbQrCodes;->calcWhereStatement(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, "query":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "sqlSelect":[Ljava/lang/String;
    .end local v16    # "query":Ljava/lang/String;
    .end local v17    # "sqlTables":Ljava/lang/String;
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/eventgenie/android/utils/help/SetUtils;->convertStringSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "time DESC"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, "q":Ljava/lang/String;
    new-instance v12, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v12}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 157
    .local v12, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v5, 0x0

    invoke-virtual {v12, v15, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams(Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    invoke-virtual {v12}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    return-object v5
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
