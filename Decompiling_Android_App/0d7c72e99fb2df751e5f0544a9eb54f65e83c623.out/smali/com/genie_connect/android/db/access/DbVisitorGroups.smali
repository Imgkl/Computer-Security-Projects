.class public final Lcom/genie_connect/android/db/access/DbVisitorGroups;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbVisitorGroups.java"


# static fields
.field static final SQL_SELECT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "autoAcceptMeeting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "messageCredits"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "meetingsTarget"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "addToAgendaDisabledMessage"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isAddToAgendaEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "autoIsDeletableMeeting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbVisitorGroups;->SQL_SELECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getVisitorGroupsByName(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 65
    const-string/jumbo v7, "visitorgroups"

    .line 67
    .local v7, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 68
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 70
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v2, "name=?"

    .line 72
    new-array v3, v8, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v3, v1

    .line 75
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbVisitorGroups;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "sqlOrder":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 78
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 79
    const-string/jumbo v1, "visitorgroups"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/genie_connect/android/db/access/DbVisitorGroups;->SQL_SELECT:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbVisitorGroups;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method
