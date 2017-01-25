.class public final Lcom/genie_connect/android/db/access/DbMisc;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbMisc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/DbMisc$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 61
    return-void
.end method

.method protected static findFreeIdForEntity(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)J
    .locals 14
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 65
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "MAX(id) max"

    aput-object v4, v2, v1

    .line 69
    .local v2, "sqlSelect":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 70
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 71
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const-string v1, "max"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 74
    .local v12, "oldId":J
    const-wide/16 v4, 0x1

    add-long v10, v12, v4

    .line 75
    .local v10, "freeId":J
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 77
    return-wide v10
.end method

.method protected static getEntityRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "mEntityId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 81
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v1, v6

    .line 82
    .local v1, "sqlSelect":[Ljava/lang/String;
    move-object v7, p1

    .line 83
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "id=?"

    .line 84
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 86
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 87
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 88
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 89
    const-string v2, "id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method protected static getNumberOfFav(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/android/db/config/GenieWidget;J)I
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "namespace"    # J

    .prologue
    .line 171
    if-nez p1, :cond_0

    const/4 v1, -0x1

    .line 230
    :goto_0
    return v1

    .line 175
    :cond_0
    sget-object v1, Lcom/genie_connect/android/db/access/DbMisc$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DB: getNumberOfFav() Unknown input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :goto_1
    invoke-static {p0, v0, p2, p3}, Lcom/genie_connect/android/db/access/DbMisc;->getNumberOfFav(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    move-result v1

    goto :goto_0

    .line 178
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_0
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 179
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 183
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_1
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 184
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 188
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_2
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 189
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 193
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_3
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 194
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 197
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_4
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 198
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 201
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_5
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 202
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 206
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_6
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 207
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 211
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_7
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 212
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 215
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_8
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 216
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 219
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_9
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 220
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 223
    .end local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :pswitch_a
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 224
    .restart local v0    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected static getNumberOfFav(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "namespace"    # J

    .prologue
    const/4 v2, -0x1

    const/4 v8, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return v2

    .line 96
    :cond_0
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v5, :cond_1

    .line 97
    invoke-static {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbMisc;->getNumberOfNotes(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    goto :goto_0

    .line 103
    :cond_1
    sget-object v5, Lcom/genie_connect/android/db/access/DbMisc$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "table":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DB: getNumberOfFav() Unknown input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_0
    const-string v3, "favouriteExhibitors"

    .line 164
    .restart local v3    # "table":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT COUNT(*) from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE _namespace = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' OR _namespace IS NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "query":Ljava/lang/String;
    invoke-static {p0, v0, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v4, v6

    .local v4, "total":I
    move v2, v4

    .line 167
    goto :goto_0

    .line 111
    .end local v0    # "query":Ljava/lang/String;
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "total":I
    :pswitch_1
    const-string v3, "favouriteproducts"

    .line 112
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 116
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_2
    const-string v3, "favouritespeakers"

    .line 117
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 122
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_3
    const-string v3, "agendaitems"

    .line 123
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 127
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_4
    const-string v3, "favouritedownloadables"

    .line 128
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_5
    const-string v3, "favouritepoi"

    .line 133
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_6
    const-string v3, "favouritevisitors"

    .line 138
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_7
    const-string v3, "messages"

    .line 142
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_8
    const-string v3, "QrCodeCustom"

    .line 146
    .restart local v3    # "table":Ljava/lang/String;
    goto :goto_1

    .line 150
    .end local v3    # "table":Ljava/lang/String;
    :pswitch_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT COUNT(*) from favouriteSession WHERE _namespace = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' OR _namespace IS NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "query1":Ljava/lang/String;
    invoke-static {p0, v1, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 153
    .local v2, "subtotal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT COUNT(*) from favouriteSubSession WHERE _namespace = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' OR _namespace IS NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {p0, v1, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v5, v6

    add-int/2addr v2, v5

    .line 156
    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected static getNumberOfNotes(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "namespace"    # J

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) from notes WHERE _namespace = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' OR _namespace IS NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method


# virtual methods
.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method
