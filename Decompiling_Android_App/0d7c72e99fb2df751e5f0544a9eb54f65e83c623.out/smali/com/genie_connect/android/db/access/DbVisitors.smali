.class public final Lcom/genie_connect/android/db/access/DbVisitors;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbVisitors.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;


# static fields
.field static final SQL_SELECT:[Ljava/lang/String;

.field static final SQL_SELECT_SUMMARY:[Ljava/lang/String;

.field private static final VISITOR_DELETE_WHERE:Ljava/lang/String; = "NOT EXISTS (SELECT * From notes N where N.relatedVisitor = visitors.id)"

.field static final VISITOR_FULL_NAME_COLUMN:Ljava/lang/String; = "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

.field static final VISITOR_FULL_TITLE_COLUMN:Ljava/lang/String; = "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a.id"

    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/genie_connect/android/db/access/DbVisitors;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "a.id"

    aput-object v1, v0, v4

    const-string v1, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    aput-object v1, v0, v5

    const-string v1, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    aput-object v1, v0, v6

    const-string v1, "lastNames"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "companyName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jobTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fullDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mugShotUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbVisitors;->SQL_SELECT_SUMMARY:[Ljava/lang/String;

    .line 71
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a.id"

    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/genie_connect/android/db/access/DbVisitors;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "a.id"

    aput-object v1, v0, v4

    const-string v1, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    aput-object v1, v0, v5

    const-string v1, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    aput-object v1, v0, v6

    const-string v1, "lastNames"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "companyName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jobTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fullDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contact_fax"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_telephone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_www"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_blogUrl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_facebook"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_linkedIn"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_telephone2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "contact_twitter"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contact_youtubeUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "address_address1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "address_address2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "address_address3"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "address_country"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "address_county"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "address_postCode"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "address_town"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "fullDescription"

    const-string v3, "fullDescription"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbVisitors;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mugShotUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "visitorGroup"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "f.relatedVisitor IS NOT NULL isFavourite"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "n.relatedVisitor IS NOT NULL hasNote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbVisitors;->SQL_SELECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 106
    return-void
.end method


# virtual methods
.method public deleteVisitorsWithoutNotes()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbVisitors;->getWriteableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "visitors"

    const-string v2, "NOT EXISTS (SELECT * From notes N where N.relatedVisitor = visitors.id)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 7

    .prologue
    .line 110
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 115
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Visitors do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentForInterest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "interestName"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    const-string v2, "SELECT parent FROM Tags WHERE name = ?"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setSelectionArgs([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const-string v2, "Raw query"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbVisitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 143
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    const-string v1, "parent"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J
    .param p3, "searchFilter"    # Ljava/lang/String;
    .param p4, "favorite"    # Z
    .param p5, "limit"    # I

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visitors a LEFT OUTER JOIN favouritevisitors f ON (a.id = f.relatedVisitor "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "f"

    invoke-virtual {p0, v4}, Lcom/genie_connect/android/db/access/DbVisitors;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " LEFT OUTER JOIN notes n ON (a.id = n.relatedVisitor "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "n"

    invoke-virtual {p0, v4}, Lcom/genie_connect/android/db/access/DbVisitors;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "sqlTables":Ljava/lang/String;
    const-string v2, "a.id=?"

    .line 164
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 166
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 168
    const/4 v3, 0x0

    .line 170
    :cond_0
    if-eqz p4, :cond_1

    .line 171
    const-string v2, "f.relatedVisitor is not null"

    .line 172
    const/4 v3, 0x0

    .line 174
    :cond_1
    if-eqz p3, :cond_2

    .line 175
    const-string v2, "lastNames like ? OR firstNames like ? OR companyName like ?"

    .line 176
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 181
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastNames"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbVisitors;->getStringCollation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "sqlOrder":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 184
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 185
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 186
    if-ltz p5, :cond_3

    .line 187
    sget-object v1, Lcom/genie_connect/android/db/access/DbVisitors;->SQL_SELECT:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 194
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ DbVisitors "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbVisitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v8, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1

    .line 191
    .end local v8    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    :cond_3
    sget-object v1, Lcom/genie_connect/android/db/access/DbVisitors;->SQL_SELECT:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVisitorsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 200
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 201
    const-string/jumbo v8, "visitors a"

    .line 204
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v2, "a.id=?"

    .line 205
    .local v2, "where":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " OR a.id=?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 210
    .local v3, "idsAsStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 211
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 214
    :cond_1
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 215
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 216
    const-string/jumbo v1, "visitors a"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/genie_connect/android/db/access/DbVisitors;->SQL_SELECT_SUMMARY:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbVisitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 222
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "idsAsStrings":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "sqlTables":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public isVisitorFavourited(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 238
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 240
    .local v0, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "isFavourite"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 243
    :cond_0
    return v5
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/db/access/DbVisitors;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 254
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 259
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    return-object v0
.end method
