.class final Lcom/genie_connect/android/db/access/CommonQueries;
.super Ljava/lang/Object;
.source "CommonQueries.java"


# static fields
.field static final SQL_SELECT_COUNTRY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address_country  AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address_country"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/CommonQueries;->SQL_SELECT_COUNTRY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getCountries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "returnEmpty"    # Z

    .prologue
    const/4 v4, 0x0

    .line 45
    move-object v7, p1

    .line 46
    .local v7, "sqlTables":Ljava/lang/String;
    const/4 v3, 0x0

    .line 49
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 50
    const-string v2, "0=1"

    .line 55
    .local v2, "sqlWhere":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address_country"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/BaseDb;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 58
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 59
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/genie_connect/android/db/access/CommonQueries;->SQL_SELECT_COUNTRY:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1

    .line 52
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v2    # "sqlWhere":Ljava/lang/String;
    .end local v6    # "orderBy":Ljava/lang/String;
    :cond_0
    const-string v2, "address_country NOT NULL"

    .restart local v2    # "sqlWhere":Ljava/lang/String;
    goto :goto_0
.end method
